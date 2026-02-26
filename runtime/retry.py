from __future__ import annotations

from dataclasses import dataclass


@dataclass(frozen=True)
class RetryPolicy:
    max_retries: int = 2
    base_delay_seconds: float = 1.0
    backoff_multiplier: float = 2.0

    def compute_delay(self, retry_index: int) -> float:
        # retry_index starts at 1 for the first retry.
        return self.base_delay_seconds * (self.backoff_multiplier ** (retry_index - 1))

