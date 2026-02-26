# Adapter Contract Summary (2026-02-26)

- Providers passing A1/C1/F1/G/H: 5/5
- Runtime suite: PASS (52 tests, includes 5-provider A1 + R2/CFG + S0/G/H coverage; see runtime-gh-report.md)
- Gate decision: PASS
- CI gate wiring: complete (`.github/workflows/gate.yml`)
- Capability probes re-run after timeout hardening: PASS (`docs/probes/2026-02-26/summary.md`, updated 14:15 local time).
- Step1 real adapter dry-run (claude + codex): PASS (`step1-adapter-dryrun.md`)
- Step2 unified review flow (`mco review`) validated with strict JSON contract and artifact outputs.
- Step3 key upgrades: adapter registry now includes gemini/opencode/qwen, and parser now supports nested event-stream contract extraction with strict structured validation.
- Step3 real 5-provider baseline: PASS (`step3-5provider-baseline.md`), with `parse_success_count=5`, `parse_failure_count=0`, `schema_valid_count=5`.
- Step4 parallel fan-out: implemented (`wait-all`, `max_provider_parallelism`, `provider_timeouts`) with benchmark evidence (`step4-parallel-benchmark.md`) showing 48.3% wall-time reduction vs serial.
- Step5 stability hardening: built-in timeout profile defaults (`claude=300s`, `codex=240s`) plus one-command serial-vs-full-parallel benchmark (`step5-parallel-benchmark.md`) validated at 71.7% wall-time reduction with parse success 5/5 on both runs.
- Step5 metrics are now explicitly split: parse health (`parse_success_count` / `providers_total`) vs retained canonical findings (`effective_findings_count`) and zero-finding provider count.

## Matrix
- claude@2.1.59: A1=true, C1=true, F1=true, G=true, H=true
- codex@0.105.0: A1=true, C1=true, F1=true, G=true, H=true
- gemini@0.30.0: A1=true, C1=true, F1=true, G=true, H=true
- opencode@1.2.14: A1=true, C1=true, F1=true, G=true, H=true
- qwen@0.10.6: A1=true, C1=true, F1=true, G=true, H=true
