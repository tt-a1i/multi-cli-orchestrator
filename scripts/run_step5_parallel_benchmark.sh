#!/usr/bin/env bash
set -u
set -o pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DATE_STR="$(date +%F)"
OUT_DIR="$ROOT_DIR/reports/adapter-contract/$DATE_STR"
mkdir -p "$OUT_DIR"

CONFIG_PATH="${1:-$ROOT_DIR/mco.step3-baseline.json}"
if [[ "$CONFIG_PATH" != /* ]]; then
  CONFIG_PATH="$ROOT_DIR/${CONFIG_PATH#./}"
fi
if [ ! -f "$CONFIG_PATH" ]; then
  echo "Config file not found: $CONFIG_PATH" >&2
  exit 1
fi

PROMPT="Smoke benchmark for parallel review. No tools. Return exactly one low-severity maintainability finding in strict JSON contract."
RUN_TAG="$(date +%Y%m%d%H%M%S)"
SERIAL_TASK_ID="bench-step5-serial-$RUN_TAG"
PARALLEL_TASK_ID="bench-step5-parallel-$RUN_TAG"

run_case() {
  local label="$1"
  local parallelism="$2"
  local task_id="$3"
  local stdout_log="$OUT_DIR/step5-${label}.stdout.log"
  local stderr_log="$OUT_DIR/step5-${label}.stderr.log"
  local result_json="$OUT_DIR/step5-${label}.result.json"

  local started ended duration exit_code
  started="$(date +%s)"
  set +e
  "$ROOT_DIR/mco" review \
    --config "$CONFIG_PATH" \
    --repo "$ROOT_DIR" \
    --prompt "$PROMPT" \
    --task-id "$task_id" \
    --idempotency-key "$task_id" \
    --max-provider-parallelism "$parallelism" \
    --json >"$stdout_log" 2>"$stderr_log"
  exit_code=$?
  set -e
  ended="$(date +%s)"
  duration=$((ended - started))

  local payload_line
  payload_line="$(tail -n 1 "$stdout_log" | tr -d '\r')"
  if printf '%s' "$payload_line" | jq -e . >/dev/null 2>&1; then
    printf '%s\n' "$payload_line" | jq \
      --arg benchmark_case "$label" \
      --argjson max_provider_parallelism "$parallelism" \
      --argjson wall_time_seconds "$duration" \
      --argjson command_exit_code "$exit_code" \
      --arg stdout_log "$stdout_log" \
      --arg stderr_log "$stderr_log" \
      '. + {
        benchmark_case: $benchmark_case,
        max_provider_parallelism: $max_provider_parallelism,
        wall_time_seconds: $wall_time_seconds,
        command_exit_code: $command_exit_code,
        stdout_log: $stdout_log,
        stderr_log: $stderr_log
      }' >"$result_json"
  else
    jq -n \
      --arg benchmark_case "$label" \
      --argjson max_provider_parallelism "$parallelism" \
      --argjson wall_time_seconds "$duration" \
      --argjson command_exit_code "$exit_code" \
      --arg parse_error "missing_json_payload" \
      --arg stdout_log "$stdout_log" \
      --arg stderr_log "$stderr_log" \
      '{
        benchmark_case: $benchmark_case,
        max_provider_parallelism: $max_provider_parallelism,
        wall_time_seconds: $wall_time_seconds,
        command_exit_code: $command_exit_code,
        parse_error: $parse_error,
        stdout_log: $stdout_log,
        stderr_log: $stderr_log
      }' >"$result_json"
  fi

  local providers_total zero_finding_count artifact_root run_json_path
  providers_total="$(jq -r '((.parse_success_count // 0) + (.parse_failure_count // 0))' "$result_json")"
  artifact_root="$(jq -r '.artifact_root // ""' "$result_json")"
  run_json_path="$artifact_root/run.json"
  zero_finding_count=0
  if [ -n "$artifact_root" ] && [ -f "$run_json_path" ]; then
    zero_finding_count="$(jq -r '[.provider_results // {} | to_entries[] | select((.value.parse_ok // false) == true and (.value.findings_count // 0) == 0)] | length' "$run_json_path" 2>/dev/null || echo 0)"
  fi

  jq \
    --argjson providers_total "$providers_total" \
    --argjson zero_finding_provider_count "$zero_finding_count" \
    '. + {
      providers_total: $providers_total,
      parse_success_rate: (if $providers_total > 0 then ((.parse_success_count // 0) / $providers_total) else null end),
      effective_findings_count: (.findings_count // 0),
      zero_finding_provider_count: $zero_finding_provider_count
    }' "$result_json" >"$result_json.tmp" && mv "$result_json.tmp" "$result_json"
  echo "$result_json"
}

SERIAL_JSON="$(run_case "serial" "1" "$SERIAL_TASK_ID")"
PARALLEL_JSON="$(run_case "full-parallel" "0" "$PARALLEL_TASK_ID")"

SUMMARY_JSON="$OUT_DIR/step5-parallel-benchmark-summary.json"
REPORT_MD="$OUT_DIR/step5-parallel-benchmark.md"

jq -n \
  --arg generated_at "$(date -u +%FT%TZ)" \
  --arg config_path "$CONFIG_PATH" \
  --arg prompt "$PROMPT" \
  --arg serial_result "$SERIAL_JSON" \
  --arg parallel_result "$PARALLEL_JSON" \
  --slurpfile serial "$SERIAL_JSON" \
  --slurpfile parallel "$PARALLEL_JSON" \
  '{
    generated_at: $generated_at,
    config_path: $config_path,
    prompt: $prompt,
    serial_result_path: $serial_result,
    parallel_result_path: $parallel_result,
    serial: $serial[0],
    parallel: $parallel[0],
    benchmark_ok: (($serial[0].command_exit_code // 1) == 0 and ($parallel[0].command_exit_code // 1) == 0),
    metric_note: "parse_success_count measures contract parse success; effective_findings_count measures canonical findings retained after schema/drop filtering.",
    latency_reduction_percent: (
      if ($serial[0].wall_time_seconds // 0) > 0 and ($parallel[0].wall_time_seconds // 0) >= 0
      then ((($serial[0].wall_time_seconds - $parallel[0].wall_time_seconds) / $serial[0].wall_time_seconds) * 100)
      else null
      end
    )
  }' >"$SUMMARY_JSON"

SERIAL_TASK="$(jq -r '.serial.task_id // "unknown"' "$SUMMARY_JSON")"
SERIAL_TIME="$(jq -r '.serial.wall_time_seconds // 0' "$SUMMARY_JSON")"
SERIAL_PARSE="$(jq -r '.serial.parse_success_count // 0' "$SUMMARY_JSON")"
SERIAL_PARSE_FAIL="$(jq -r '.serial.parse_failure_count // 0' "$SUMMARY_JSON")"
SERIAL_TOTAL="$(jq -r '.serial.providers_total // 0' "$SUMMARY_JSON")"
SERIAL_RATE="$(jq -r '.serial.parse_success_rate // "null"' "$SUMMARY_JSON")"
SERIAL_EFFECTIVE_FINDINGS="$(jq -r '.serial.effective_findings_count // 0' "$SUMMARY_JSON")"
SERIAL_ZERO_FINDING_PROVIDERS="$(jq -r '.serial.zero_finding_provider_count // 0' "$SUMMARY_JSON")"
SERIAL_EXIT="$(jq -r '.serial.command_exit_code // 999' "$SUMMARY_JSON")"

PARALLEL_TASK="$(jq -r '.parallel.task_id // "unknown"' "$SUMMARY_JSON")"
PARALLEL_TIME="$(jq -r '.parallel.wall_time_seconds // 0' "$SUMMARY_JSON")"
PARALLEL_PARSE="$(jq -r '.parallel.parse_success_count // 0' "$SUMMARY_JSON")"
PARALLEL_PARSE_FAIL="$(jq -r '.parallel.parse_failure_count // 0' "$SUMMARY_JSON")"
PARALLEL_TOTAL="$(jq -r '.parallel.providers_total // 0' "$SUMMARY_JSON")"
PARALLEL_RATE="$(jq -r '.parallel.parse_success_rate // "null"' "$SUMMARY_JSON")"
PARALLEL_EFFECTIVE_FINDINGS="$(jq -r '.parallel.effective_findings_count // 0' "$SUMMARY_JSON")"
PARALLEL_ZERO_FINDING_PROVIDERS="$(jq -r '.parallel.zero_finding_provider_count // 0' "$SUMMARY_JSON")"
PARALLEL_EXIT="$(jq -r '.parallel.command_exit_code // 999' "$SUMMARY_JSON")"

REDUCTION="$(jq -r '.latency_reduction_percent // "null"' "$SUMMARY_JSON")"
METRIC_NOTE="$(jq -r '.metric_note // ""' "$SUMMARY_JSON")"
if [ "$REDUCTION" = "null" ]; then
  REDUCTION_TEXT="n/a"
else
  REDUCTION_TEXT="$(printf '%.1f%%' "$REDUCTION")"
fi
if [ "$SERIAL_RATE" = "null" ]; then
  SERIAL_RATE_TEXT="n/a"
else
  SERIAL_RATE_TEXT="$(printf '%.1f%%' "$(jq -n --argjson value "$SERIAL_RATE" '$value * 100')")"
fi
if [ "$PARALLEL_RATE" = "null" ]; then
  PARALLEL_RATE_TEXT="n/a"
else
  PARALLEL_RATE_TEXT="$(printf '%.1f%%' "$(jq -n --argjson value "$PARALLEL_RATE" '$value * 100')")"
fi

{
  echo "# Step5 Full-Parallel Benchmark ($DATE_STR)"
  echo
  echo "## Scenario"
  echo
  echo "- Config: \`$CONFIG_PATH\`"
  echo "- Prompt: smoke contract-only task"
  echo "- Serial run: \`--max-provider-parallelism 1\`"
  echo "- Full-parallel run: \`--max-provider-parallelism 0\`"
  echo
  echo "## Results"
  echo
  echo "1. Serial"
  echo "   - task_id: \`$SERIAL_TASK\`"
  echo "   - wall time: \`${SERIAL_TIME}s\`"
  echo "   - parse: \`${SERIAL_PARSE}\` success / \`${SERIAL_PARSE_FAIL}\` failure"
  echo "   - parse success rate: \`${SERIAL_PARSE}/${SERIAL_TOTAL} (${SERIAL_RATE_TEXT})\`"
  echo "   - effective findings: \`${SERIAL_EFFECTIVE_FINDINGS}\`"
  echo "   - zero-finding providers: \`${SERIAL_ZERO_FINDING_PROVIDERS}\`"
  echo "   - command exit: \`$SERIAL_EXIT\`"
  echo "2. Full parallel"
  echo "   - task_id: \`$PARALLEL_TASK\`"
  echo "   - wall time: \`${PARALLEL_TIME}s\`"
  echo "   - parse: \`${PARALLEL_PARSE}\` success / \`${PARALLEL_PARSE_FAIL}\` failure"
  echo "   - parse success rate: \`${PARALLEL_PARSE}/${PARALLEL_TOTAL} (${PARALLEL_RATE_TEXT})\`"
  echo "   - effective findings: \`${PARALLEL_EFFECTIVE_FINDINGS}\`"
  echo "   - zero-finding providers: \`${PARALLEL_ZERO_FINDING_PROVIDERS}\`"
  echo "   - command exit: \`$PARALLEL_EXIT\`"
  echo
  echo "## Delta"
  echo
  echo "- Latency reduction (serial -> full parallel): \`$REDUCTION_TEXT\`"
  echo "- Metrics note: $METRIC_NOTE"
  echo "- Summary JSON: \`$SUMMARY_JSON\`"
} >"$REPORT_MD"

echo "Step5 benchmark report: $REPORT_MD"
echo "Step5 benchmark summary: $SUMMARY_JSON"

if [ "$SERIAL_EXIT" -ne 0 ] || [ "$PARALLEL_EXIT" -ne 0 ]; then
  exit 1
fi
exit 0
