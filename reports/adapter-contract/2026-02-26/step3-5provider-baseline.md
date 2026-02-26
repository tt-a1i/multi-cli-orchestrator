# Step3 5-Provider Baseline (2026-02-26)

## Command

```bash
./mco review \
  --config ./mco.step3-baseline.json \
  --repo . \
  --prompt "Smoke test only: do not run tools or commands. Return exactly one low-severity maintainability finding in strict contract JSON; keep it very short." \
  --json
```

## Result

- task_id: `task-b234caf82d5b25e0`
- artifact_root: `/Users/tsk/multi-cli-orchestrator/reports/review/task-b234caf82d5b25e0`
- decision: `PASS`
- terminal_state: `COMPLETED`
- findings_count: `5`
- parse_success_count: `5`
- parse_failure_count: `0`
- schema_valid_count: `5`
- dropped_findings_count: `0`

## Provider Breakdown

- claude: success=true, parse_ok=true, findings_count=1
- codex: success=true, parse_ok=true, findings_count=1
- gemini: success=true, parse_ok=true, findings_count=1
- opencode: success=true, parse_ok=true, findings_count=1
- qwen: success=true, parse_ok=true, findings_count=1
