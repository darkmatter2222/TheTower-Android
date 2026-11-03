# H066 — What wave/score puts you in which tournament band?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 134) · **Affects:**
[T014](../techniques/T014-tournament-tickets.md) §3.3 (stop-waves, the clock branch),
[T025](../techniques/T025-years-to-max-ledger.md) §2.② (the years-to-max column)

## Why it is the missing link

[T014](../techniques/T014-tournament-tickets.md) §3.3 now prices every band in closed form
(`stones/week = 2·S·(S + ⌊G/10⌋ + 2)`) and caps the ticket count with the bracket clock
(`t = min(2 + ⌊P/10⌋, ⌊8 498 / W⌋)`), so the *only* unknown left in the whole stone model is the map
**wave reached → band**, per league. Every printed source (Tower Hub's ten-band tables, fandom's seven) gives the
**pay** of each band but never the **score** that produces it, and the numbers are league-specific (the same wave is a
different band in a stronger league because everyone else is stronger).

## What is already fixed (no read needed)

| Quantity | Value | Source |
|---|---|---|
| Bracket length | **72 h** (Wed 00:00 → Sat 00:00 UTC) | T014 §1 |
| Wave cost | **30.5 s** per wave at ×1 speed | T002 |
| Runs per bracket at stop-wave `W` | `⌊8 498 / W⌋` (W 1 000 ⇒ 8, W 500 ⇒ 17, W 2 100 ⇒ 4) | T002 + arithmetic |
| Band pay `G`/`S` per league and band | 70 cells | T014 §3.2 |
| Field size | **30** players per bracket | both prints (widths Σ 30 ✓) |

## Readings to take (UI only)

1. **One bracket, one number per row.** Finish the bracket at your usual stop-wave and read the
   **Tournament** screen: it shows your **wave reached** (the score) and the **placement/band** with its reward row.
   Record the pair — that is one point of the map. Repeat at **three** stop-waves (for example ≈ **250 / 750 / 1 500**)
   in the same bracket type, and the three pairs bracket the thresholds.
2. **Same three stop-waves, next bracket, stronger field** (after a promotion): the thresholds shift, which tests whether
   the map is an absolute wave or a **percentile of the field** (30 players ⇒ bands are ranks 1, 2, 3–4, … by score).
3. **The tie case:** two runs at the same wave should keep the same band (the printed tie rule gives the lower rank).

## What each outcome changes

- **Percentile model** (bands are ranks in a 30-player field): then the map is `rank = 31 − ⌈30 · F(W)⌉` for the field's
  score distribution `F`, and the practical rule stays “**push W until the band number stops improving**” — the
  closed-form grid already prices every band, so the reader only needs the one improving `W` per league.
- **Absolute-threshold model** (fixed wave cut-offs per league): the thresholds become printed constants worth tabulating
  per league, and the stop-wave per band in §3.3's table should be replaced by the panel's own number.
- Either way the **×252 ladder and the quadratic placement law stand** — they use only the band pay.

## Falsification

If the **Tournament** screen shows a placement but no wave/score, note that (the run screen's wave is then the only
record, taken at the moment of the last run) — the model still works, the map just becomes a hand-tally over two
brackets. If the same wave lands in different bands **within one bracket**, the score is not your best wave and
[H014](H014-per-ticket-payout.md) decides the reading instead.
