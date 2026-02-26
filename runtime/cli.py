from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Dict, List

from .config import ReviewConfig, ReviewPolicy, load_review_config
from .review_engine import ReviewRequest, run_review


def _parse_providers(raw: str) -> List[str]:
    seen = set()
    providers: List[str] = []
    for item in raw.split(","):
        value = item.strip()
        if not value or value in seen:
            continue
        seen.add(value)
        providers.append(value)
    return providers


def _parse_provider_timeouts(raw: str) -> Dict[str, int]:
    result: Dict[str, int] = {}
    if not raw.strip():
        return result
    for chunk in raw.split(","):
        pair = chunk.strip()
        if not pair or "=" not in pair:
            continue
        provider, timeout_text = pair.split("=", 1)
        provider_name = provider.strip()
        if not provider_name:
            continue
        try:
            timeout = int(timeout_text.strip())
        except Exception:
            continue
        if timeout <= 0:
            continue
        result[provider_name] = timeout
    return result


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(prog="mco", description="Multi-CLI Orchestrator")
    subparsers = parser.add_subparsers(dest="command", required=True)

    review = subparsers.add_parser("review", help="Run multi-provider review")
    review.add_argument("--repo", default=".", help="Repository root path")
    review.add_argument("--prompt", required=True, help="Review prompt")
    review.add_argument("--providers", default="", help="Comma-separated providers, e.g. claude,codex")
    review.add_argument("--config", default="", help="Config file path (.json or .yaml/.yml)")
    review.add_argument("--artifact-base", default="", help="Artifact base directory override")
    review.add_argument("--state-file", default="", help="Runtime state file override")
    review.add_argument("--task-id", default="", help="Optional stable task id")
    review.add_argument("--idempotency-key", default="", help="Optional stable idempotency key")
    review.add_argument("--target-paths", default=".", help="Comma-separated review scope paths")
    review.add_argument(
        "--max-provider-parallelism",
        type=int,
        default=None,
        help="Override provider fan-out concurrency (0 means full parallelism)",
    )
    review.add_argument(
        "--provider-timeouts",
        default="",
        help="Comma-separated provider timeout overrides, e.g. claude=120,codex=90",
    )
    review.add_argument("--json", action="store_true", help="Print machine-readable result JSON")
    return parser


def _resolve_config(args: argparse.Namespace) -> ReviewConfig:
    cfg = load_review_config(args.config or None)
    providers = _parse_providers(args.providers) if args.providers else cfg.providers
    artifact_base = args.artifact_base or cfg.artifact_base
    state_file = args.state_file or cfg.state_file
    provider_timeouts = dict(cfg.policy.provider_timeouts)
    provider_timeouts.update(_parse_provider_timeouts(args.provider_timeouts))
    max_provider_parallelism = cfg.policy.max_provider_parallelism
    if args.max_provider_parallelism is not None:
        max_provider_parallelism = args.max_provider_parallelism

    policy = ReviewPolicy(
        timeout_seconds=cfg.policy.timeout_seconds,
        max_retries=cfg.policy.max_retries,
        high_escalation_threshold=cfg.policy.high_escalation_threshold,
        require_non_empty_findings=cfg.policy.require_non_empty_findings,
        max_provider_parallelism=max_provider_parallelism,
        provider_timeouts=provider_timeouts,
    )
    return ReviewConfig(providers=providers, artifact_base=artifact_base, state_file=state_file, policy=policy)


def main(argv: List[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    if args.command != "review":
        parser.error("unsupported command")
        return 2

    cfg = _resolve_config(args)
    repo_root = str(Path(args.repo).resolve())
    providers = [item for item in cfg.providers if item in ("claude", "codex", "gemini", "opencode", "qwen")]
    if not providers:
        print("No valid providers selected.", file=sys.stderr)
        return 2

    req = ReviewRequest(
        repo_root=repo_root,
        prompt=args.prompt,
        providers=providers,  # type: ignore[arg-type]
        artifact_base=str(Path(cfg.artifact_base).resolve()),
        state_file=str(Path(cfg.state_file).resolve()),
        policy=cfg.policy,
        task_id=args.task_id or None,
        idempotency_key=args.idempotency_key or None,
        target_paths=[item.strip() for item in args.target_paths.split(",") if item.strip()],
    )
    result = run_review(req)

    payload = {
        "task_id": result.task_id,
        "artifact_root": result.artifact_root,
        "decision": result.decision,
        "terminal_state": result.terminal_state,
        "findings_count": result.findings_count,
        "parse_success_count": result.parse_success_count,
        "parse_failure_count": result.parse_failure_count,
        "schema_valid_count": result.schema_valid_count,
        "dropped_findings_count": result.dropped_findings_count,
        "created_new_task": result.created_new_task,
    }
    if args.json:
        print(json.dumps(payload, ensure_ascii=True))
    else:
        print(f"task_id={result.task_id}")
        print(f"decision={result.decision}")
        print(f"artifact_root={result.artifact_root}")
        print(f"findings={result.findings_count}")
        print(f"parse_success={result.parse_success_count}")
        print(f"parse_failure={result.parse_failure_count}")
        print(f"schema_valid={result.schema_valid_count}")
        print(f"dropped_findings={result.dropped_findings_count}")

    if result.decision == "FAIL":
        return 2
    if result.decision == "INCONCLUSIVE":
        return 3
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
