from __future__ import annotations

import json
import tempfile
import unittest

from runtime.cli import _parse_provider_timeouts, _parse_providers, build_parser, _resolve_config
from runtime.config import DEFAULT_PROVIDER_TIMEOUTS


class CliTests(unittest.TestCase):
    def test_parse_providers_deduplicates_preserve_order(self) -> None:
        providers = _parse_providers("codex,claude,codex,gemini,claude")
        self.assertEqual(providers, ["codex", "claude", "gemini"])

    def test_parse_provider_timeouts_ignores_invalid(self) -> None:
        parsed = _parse_provider_timeouts("codex=90,claude=120,broken,nope=-1,gemini=abc")
        self.assertEqual(parsed, {"codex": 90, "claude": 120})

    def test_resolve_config_applies_cli_overrides(self) -> None:
        with tempfile.TemporaryDirectory() as tmpdir:
            cfg_path = f"{tmpdir}/mco.json"
            with open(cfg_path, "w", encoding="utf-8") as fh:
                json.dump(
                    {
                        "providers": ["claude", "codex"],
                        "artifact_base": "reports/review",
                        "state_file": ".mco/state.json",
                        "policy": {
                            "timeout_seconds": 180,
                            "max_retries": 1,
                            "max_provider_parallelism": 2,
                            "provider_timeouts": {"qwen": 240},
                        },
                    },
                    fh,
                )

            parser = build_parser()
            args = parser.parse_args(
                [
                    "review",
                    "--prompt",
                    "x",
                    "--config",
                    cfg_path,
                    "--max-provider-parallelism",
                    "3",
                    "--provider-timeouts",
                    "codex=120",
                ]
            )
            resolved = _resolve_config(args)
            self.assertEqual(resolved.policy.max_provider_parallelism, 3)
            self.assertEqual(resolved.policy.provider_timeouts.get("qwen"), 240)
            self.assertEqual(resolved.policy.provider_timeouts.get("codex"), 120)
            self.assertEqual(resolved.policy.provider_timeouts.get("claude"), DEFAULT_PROVIDER_TIMEOUTS["claude"])

    def test_resolve_config_allows_cli_zero_to_force_full_parallel(self) -> None:
        with tempfile.TemporaryDirectory() as tmpdir:
            cfg_path = f"{tmpdir}/mco.json"
            with open(cfg_path, "w", encoding="utf-8") as fh:
                json.dump(
                    {
                        "providers": ["claude", "codex"],
                        "policy": {"max_provider_parallelism": 3},
                    },
                    fh,
                )

            parser = build_parser()
            args = parser.parse_args(
                [
                    "review",
                    "--prompt",
                    "x",
                    "--config",
                    cfg_path,
                    "--max-provider-parallelism",
                    "0",
                ]
            )
            resolved = _resolve_config(args)
            self.assertEqual(resolved.policy.max_provider_parallelism, 0)


if __name__ == "__main__":
    unittest.main()
