from __future__ import annotations

import re
from typing import List

from .types import ErrorKind, WarningKind


def detect_warnings(stderr: str) -> List[WarningKind]:
    text = stderr.lower()
    warnings: List[WarningKind] = []
    if "mcp" in text and ("failed to start" in text or "auth required" in text):
        warnings.append(WarningKind.PROVIDER_WARNING_MCP_STARTUP)
    return warnings


def classify_error(exit_code: int, stderr: str) -> ErrorKind:
    text = stderr.lower()

    if exit_code in (124, 142) or "timeout" in text or "timed out" in text:
        return ErrorKind.RETRYABLE_TIMEOUT

    if "rate limit" in text or "429" in text:
        return ErrorKind.RETRYABLE_RATE_LIMIT

    if any(token in text for token in ("connection reset", "temporary failure", "network", "econnreset", "ehostunreach")):
        return ErrorKind.RETRYABLE_TRANSIENT_NETWORK

    if any(token in text for token in ("auth", "invalid api key", "401", "oauth", "unauthorized")):
        return ErrorKind.NON_RETRYABLE_AUTH

    if any(token in text for token in ("unsupported capability", "not supported", "unknown arguments")):
        return ErrorKind.NON_RETRYABLE_UNSUPPORTED_CAPABILITY

    if any(token in text for token in ("invalid input", "schema", "missing required", "validation failed", "invalid type")):
        return ErrorKind.NON_RETRYABLE_INVALID_INPUT

    # A parsing failure after command success is also represented as normalization error.
    if re.search(r"(parse|deserialize|json).*fail", text) or "normalization" in text:
        return ErrorKind.NORMALIZATION_ERROR

    return ErrorKind.NORMALIZATION_ERROR

