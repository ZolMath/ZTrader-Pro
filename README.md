# ZTRADER / Z QUANT Phase 2 — Order-Flow Reversal Foundation

Phase 2 extends the Phase 1 desktop foundation into a deterministic, auditable market-microstructure research engine. It is **research/paper mode only**: no broker credentials, no order placement, and no claims of predictive certainty.

## Core capabilities

- Tick and bar domain models with data-provenance tagging.
- Signed trade/delta and cumulative-delta analytics.
- Effort-vs-result and price-response efficiency metrics.
- Liquidity map primitives: swing liquidity, equal highs/lows, session extremes, and sweep classification.
- Auction metrics: VWAP, volume profile POC/VAH/VAL, acceptance/rejection heuristics.
- Reversal state machine: approach → liquidity attack → pressure → failure → opposite pressure → structural shift → confirmation.
- Reversal DNA snapshots for research attribution.
- SQLite research event store.
- Optional read-only MT5 market-data adapter. The adapter never submits orders.
- Phase 2 tests for deterministic analytics and state transitions.

## Install

Windows:

1. Double-click `setup_windows.bat`.
2. Double-click `launch_ztrader.bat`.

Developer:

```text
python -m venv .venv
.venv\\Scripts\\activate
pip install -e .
python -m pytest
python scripts\\run_research_demo.py
```

Python 3.12+ is recommended. Python 3.13 is supported by the codebase; dependency support is governed by the installed package versions.

## Important data note

For XAUUSD/spot FX, Phase 2 distinguishes `BROKER_LOCAL`, `CENTRALIZED_FUTURES`, and `INFERRED` provenance. A broker MT5 DOM is not treated as a global gold order book.

## Scope boundary

Phase 2 does not place trades. Execution/risk governance is intentionally deferred until the reversal model is statistically validated with realistic historical and live-shadow data.
