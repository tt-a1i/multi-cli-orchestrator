from __future__ import annotations

import io
import json
import tempfile
import unittest
from contextlib import redirect_stdout
from unittest.mock import patch

from runtime.cli import main
from runtime.review_engine import ReviewResult


EXPECTED_JSON_KEYS = (
    "command",
    "task_id",
    "artifact_root",
    "decision",
    "terminal_state",
    "provider_success_count",
    "provider_failure_count",
    "findings_count",
    "parse_success_count",
    "parse_failure_count",
    "schema_valid_count",
    "dropped_findings_count",
    "created_new_task",
)


class CliJsonContractTests(unittest.TestCase):
    def _invoke_json(self, argv: list[str], result: ReviewResult) -> tuple[int, dict]:
        output = io.StringIO()
        with patch("runtime.cli.run_review", return_value=result):
            with redirect_stdout(output):
                exit_code = main(argv)
        payload = json.loads(output.getvalue())
        return exit_code, payload

    def test_review_json_contract_is_frozen(self) -> None:
        with tempfile.TemporaryDirectory() as tmpdir:
            result = ReviewResult(
                task_id="task-review-1",
                artifact_root=f"{tmpdir}/reports/review/task-review-1",
                decision="PASS",
                terminal_state="COMPLETED",
                provider_results={"codex": {"success": True}},
                findings_count=3,
                parse_success_count=1,
                parse_failure_count=0,
                schema_valid_count=3,
                dropped_findings_count=0,
                created_new_task=True,
            )
            exit_code, payload = self._invoke_json(
                ["review", "--repo", tmpdir, "--prompt", "review", "--providers", "codex", "--json"],
                result,
            )
            self.assertEqual(exit_code, 0)
            self.assertEqual(payload["command"], "review")
            self.assertEqual(tuple(payload.keys()), EXPECTED_JSON_KEYS)
            self.assertIsInstance(payload["provider_success_count"], int)
            self.assertIsInstance(payload["provider_failure_count"], int)
            self.assertIsInstance(payload["created_new_task"], bool)

    def test_run_json_contract_is_frozen(self) -> None:
        with tempfile.TemporaryDirectory() as tmpdir:
            result = ReviewResult(
                task_id="task-run-1",
                artifact_root=f"{tmpdir}/reports/review/task-run-1",
                decision="PASS",
                terminal_state="COMPLETED",
                provider_results={"codex": {"success": True}},
                findings_count=0,
                parse_success_count=0,
                parse_failure_count=0,
                schema_valid_count=0,
                dropped_findings_count=0,
                created_new_task=False,
            )
            exit_code, payload = self._invoke_json(
                ["run", "--repo", tmpdir, "--prompt", "run", "--providers", "codex", "--json"],
                result,
            )
            self.assertEqual(exit_code, 0)
            self.assertEqual(payload["command"], "run")
            self.assertEqual(tuple(payload.keys()), EXPECTED_JSON_KEYS)
            self.assertEqual(payload["parse_success_count"], 0)
            self.assertEqual(payload["parse_failure_count"], 0)


if __name__ == "__main__":
    unittest.main()

