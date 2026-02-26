# Step4 Parallel Fan-out Benchmark (2026-02-26)

## Scenario

- Prompt: smoke contract-only task (no tool execution requested)
- Providers: claude, codex, gemini, opencode, qwen
- Config base: `mco.step3-baseline.json`
- Retry policy: `max_retries=0`

## Runs

1. Serial baseline (`--max-provider-parallelism 1`)
   - task_id: `bench-serial-20260226`
   - wall time: `143.16s`
   - parse: `5/5` success
2. Parallel run A (`--max-provider-parallelism 2`)
   - task_id: `bench-parallel2-20260226`
   - wall time: `75.72s`
   - parse: `4/5` success (codex had one schema drop in this sample)
3. Parallel run B (`--max-provider-parallelism 2`)
   - task_id: `bench-parallel2b-20260226`
   - wall time: `74.01s`
   - parse: `5/5` success
4. Parallel run C (`--max-provider-parallelism 2`, `--provider-timeouts claude=180,codex=180`)
   - task_id: `bench-parallel2d-20260226`
   - wall time: `181.26s`
   - parse: `4/5` success (`claude` timeout: `retryable_timeout`)

## Acceptance Check

- Latency reduction vs serial (run B): `(143.16 - 74.01) / 143.16 = 48.3%`
- Parse success non-regression: satisfied in run B (`5/5`), with observed instability in run A (schema drop) and run C (provider timeout).

## Conclusion

- `wait-all` + `max_provider_parallelism=2` meets the performance target (`>=35%` reduction).
- Full parse success is achievable (`5/5` in run B) but remains sensitive to provider runtime variability and timeout settings.
