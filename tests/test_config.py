from __future__ import annotations

import json
import tempfile
import unittest

from runtime.config import DEFAULT_PROVIDER_TIMEOUTS, ReviewConfig, load_review_config


class ConfigTests(unittest.TestCase):
    def test_default_config(self) -> None:
        cfg = load_review_config(None)
        self.assertIsInstance(cfg, ReviewConfig)
        self.assertEqual(cfg.providers, ["claude", "codex"])
        self.assertEqual(cfg.policy.max_provider_parallelism, 0)
        self.assertEqual(cfg.policy.provider_timeouts, DEFAULT_PROVIDER_TIMEOUTS)
        self.assertEqual(cfg.policy.stall_timeout_seconds, 900)
        self.assertEqual(cfg.policy.poll_interval_seconds, 1.0)
        self.assertEqual(cfg.policy.review_hard_timeout_seconds, 1800)
        self.assertFalse(cfg.policy.enforce_findings_contract)
        self.assertEqual(cfg.policy.allow_paths, ["."])
        self.assertEqual(cfg.policy.provider_permissions, {})
        self.assertEqual(cfg.policy.enforcement_mode, "strict")

    def test_json_config(self) -> None:
        with tempfile.TemporaryDirectory() as tmpdir:
            path = f"{tmpdir}/mco.json"
            with open(path, "w", encoding="utf-8") as fh:
                json.dump(
                    {
                        "providers": ["claude"],
                        "artifact_base": "reports/custom",
                        "state_file": ".mco/custom-state.json",
                        "policy": {
                            "timeout_seconds": 99,
                            "stall_timeout_seconds": 321,
                            "poll_interval_seconds": 2.5,
                            "review_hard_timeout_seconds": 2222,
                            "enforce_findings_contract": True,
                            "require_non_empty_findings": False,
                            "max_provider_parallelism": 3,
                            "provider_timeouts": {"claude": 120},
                            "allow_paths": ["src", "tests"],
                            "provider_permissions": {"codex": {"sandbox": "read-only"}},
                            "enforcement_mode": "best_effort",
                        },
                    },
                    fh,
                )
            cfg = load_review_config(path)
            self.assertEqual(cfg.providers, ["claude"])
            self.assertEqual(cfg.artifact_base, "reports/custom")
            self.assertEqual(cfg.state_file, ".mco/custom-state.json")
            self.assertEqual(cfg.policy.timeout_seconds, 99)
            self.assertEqual(cfg.policy.stall_timeout_seconds, 321)
            self.assertEqual(cfg.policy.poll_interval_seconds, 2.5)
            self.assertEqual(cfg.policy.review_hard_timeout_seconds, 2222)
            self.assertTrue(cfg.policy.enforce_findings_contract)
            self.assertFalse(cfg.policy.require_non_empty_findings)
            self.assertEqual(cfg.policy.max_provider_parallelism, 3)
            self.assertEqual(cfg.policy.provider_timeouts.get("claude"), 120)
            self.assertIsNone(cfg.policy.provider_timeouts.get("codex"))
            self.assertEqual(cfg.policy.allow_paths, ["src", "tests"])
            self.assertEqual(cfg.policy.provider_permissions.get("codex"), {"sandbox": "read-only"})
            self.assertEqual(cfg.policy.enforcement_mode, "best_effort")


if __name__ == "__main__":
    unittest.main()
