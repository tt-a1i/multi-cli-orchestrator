from __future__ import annotations

import json
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Dict, List, Optional

DEFAULT_PROVIDER_TIMEOUTS: Dict[str, int] = {
    "claude": 300,
    "codex": 240,
}


@dataclass(frozen=True)
class ReviewPolicy:
    timeout_seconds: int = 180
    max_retries: int = 1
    high_escalation_threshold: int = 1
    require_non_empty_findings: bool = True
    max_provider_parallelism: int = 0
    provider_timeouts: Dict[str, int] = field(default_factory=lambda: dict(DEFAULT_PROVIDER_TIMEOUTS))


@dataclass(frozen=True)
class ReviewConfig:
    providers: List[str] = field(default_factory=lambda: ["claude", "codex"])
    artifact_base: str = "reports/review"
    state_file: str = ".mco/state.json"
    policy: ReviewPolicy = field(default_factory=ReviewPolicy)


def _as_bool(value: Any, default: bool) -> bool:
    if isinstance(value, bool):
        return value
    if isinstance(value, str):
        lowered = value.strip().lower()
        if lowered in ("true", "1", "yes", "y", "on"):
            return True
        if lowered in ("false", "0", "no", "n", "off"):
            return False
    return default


def _to_policy(payload: Dict[str, Any]) -> ReviewPolicy:
    raw_provider_timeouts = payload.get("provider_timeouts", {})
    provider_timeouts: Dict[str, int] = dict(DEFAULT_PROVIDER_TIMEOUTS)
    if isinstance(raw_provider_timeouts, dict):
        for key, value in raw_provider_timeouts.items():
            provider = str(key).strip()
            if not provider:
                continue
            try:
                timeout = int(value)
            except Exception:
                continue
            if timeout <= 0:
                continue
            provider_timeouts[provider] = timeout

    try:
        max_parallel = int(payload.get("max_provider_parallelism", 0))
    except Exception:
        max_parallel = 0
    if max_parallel < 0:
        max_parallel = 0

    return ReviewPolicy(
        timeout_seconds=int(payload.get("timeout_seconds", 180)),
        max_retries=int(payload.get("max_retries", 1)),
        high_escalation_threshold=int(payload.get("high_escalation_threshold", 1)),
        require_non_empty_findings=_as_bool(payload.get("require_non_empty_findings", True), True),
        max_provider_parallelism=max_parallel,
        provider_timeouts=provider_timeouts,
    )


def _normalize_payload(payload: Dict[str, Any]) -> ReviewConfig:
    policy_payload = payload.get("policy", {})
    if not isinstance(policy_payload, dict):
        policy_payload = {}
    providers = payload.get("providers", ["claude", "codex"])
    if isinstance(providers, str):
        providers = [item.strip() for item in providers.split(",") if item.strip()]
    if not isinstance(providers, list):
        providers = ["claude", "codex"]
    providers = [str(item).strip() for item in providers if str(item).strip()]
    if not providers:
        providers = ["claude", "codex"]

    return ReviewConfig(
        providers=providers,
        artifact_base=str(payload.get("artifact_base", "reports/review")),
        state_file=str(payload.get("state_file", ".mco/state.json")),
        policy=_to_policy(policy_payload),
    )


def load_review_config(config_path: Optional[str]) -> ReviewConfig:
    if not config_path:
        return ReviewConfig()
    path = Path(config_path)
    if not path.exists():
        raise FileNotFoundError(f"config file not found: {config_path}")

    suffix = path.suffix.lower()
    raw_text = path.read_text(encoding="utf-8")
    if suffix == ".json":
        payload = json.loads(raw_text)
        if not isinstance(payload, dict):
            raise ValueError("config root must be an object")
        return _normalize_payload(payload)

    if suffix in (".yaml", ".yml"):
        try:
            import yaml  # type: ignore
        except Exception as exc:
            raise RuntimeError(
                "YAML config requires pyyaml. Install with: pip install pyyaml, or use a .json config."
            ) from exc
        payload = yaml.safe_load(raw_text)
        if not isinstance(payload, dict):
            raise ValueError("config root must be a map")
        return _normalize_payload(payload)

    raise ValueError(f"unsupported config format: {config_path}")
