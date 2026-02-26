#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List


KEY_ARTIFACTS = {
    "runtime_gate_report": "runtime-gh-report.md",
    "runtime_gate_raw_log": "runtime-gh-raw.log",
    "step5_benchmark_report": "step5-parallel-benchmark.md",
    "step5_benchmark_summary": "step5-parallel-benchmark-summary.json",
    "adapter_contract_summary": "summary.md",
}


def _utc_now() -> str:
    return datetime.now(timezone.utc).isoformat()


def _files_snapshot(report_root: Path) -> List[Dict[str, Any]]:
    entries: List[Dict[str, Any]] = []
    for path in sorted(report_root.rglob("*")):
        if not path.is_file():
            continue
        rel = path.relative_to(report_root).as_posix()
        entries.append({"path": rel, "bytes": path.stat().st_size})
    return entries


def _workflow_entry(report_root: Path, workflow: str, run_id: str) -> Dict[str, Any]:
    files = _files_snapshot(report_root)
    key_artifacts = {
        name: {
            "path": rel,
            "exists": (report_root / rel).exists(),
        }
        for name, rel in KEY_ARTIFACTS.items()
    }
    total_bytes = sum(item["bytes"] for item in files)
    return {
        "generated_at": _utc_now(),
        "workflow": workflow,
        "run_id": run_id,
        "report_root": str(report_root),
        "file_count": len(files),
        "total_bytes": total_bytes,
        "key_artifacts": key_artifacts,
        "files": files,
    }


def _load_existing(index_path: Path) -> Dict[str, Any]:
    if not index_path.exists():
        return {"generated_at": _utc_now(), "workflows": {}}
    try:
        payload = json.loads(index_path.read_text(encoding="utf-8"))
    except Exception:
        return {"generated_at": _utc_now(), "workflows": {}}
    if not isinstance(payload, dict):
        return {"generated_at": _utc_now(), "workflows": {}}
    workflows = payload.get("workflows")
    if not isinstance(workflows, dict):
        workflows = {}
    return {"generated_at": payload.get("generated_at", _utc_now()), "workflows": workflows}


def _write_markdown(index: Dict[str, Any], markdown_path: Path) -> None:
    lines = [
        "# CI Artifact Index",
        "",
        f"- generated_at: `{index.get('generated_at', '')}`",
        "",
    ]
    workflows = index.get("workflows", {})
    for name in sorted(workflows.keys()):
        item = workflows[name]
        lines.extend(
            [
                f"## {name}",
                f"- run_id: `{item.get('run_id', '')}`",
                f"- report_root: `{item.get('report_root', '')}`",
                f"- file_count: `{item.get('file_count', 0)}`",
                f"- total_bytes: `{item.get('total_bytes', 0)}`",
                "",
                "### Key Artifacts",
            ]
        )
        key_artifacts = item.get("key_artifacts", {})
        for key in sorted(key_artifacts.keys()):
            artifact = key_artifacts[key]
            lines.append(
                f"- {key}: exists=`{artifact.get('exists', False)}` path=`{artifact.get('path', '')}`"
            )
        lines.append("")
    markdown_path.write_text("\n".join(lines), encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description="Collect and index CI artifacts under report folder.")
    parser.add_argument("--report-root", required=True, help="Path like reports/adapter-contract/<date>")
    parser.add_argument("--workflow", required=True, help="Workflow name (e.g. gate, benchmark)")
    parser.add_argument("--run-id", default="local", help="CI run identifier")
    args = parser.parse_args()

    report_root = Path(args.report_root).resolve()
    report_root.mkdir(parents=True, exist_ok=True)
    index_path = report_root / "ci-artifact-index.json"
    markdown_path = report_root / "ci-artifact-index.md"

    existing = _load_existing(index_path)
    workflows = existing["workflows"]
    workflows[str(args.workflow)] = _workflow_entry(report_root, str(args.workflow), str(args.run_id))
    index = {"generated_at": _utc_now(), "workflows": workflows}

    index_path.write_text(json.dumps(index, ensure_ascii=True, indent=2), encoding="utf-8")
    _write_markdown(index, markdown_path)

    print(f"Wrote artifact index: {index_path}")
    print(f"Wrote artifact index markdown: {markdown_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
