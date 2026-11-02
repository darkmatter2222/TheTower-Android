# H037 — Per-level step of the six “special” enhancements (0.01 / 0.02 / other?)

Status: **resolved** (2026-11-02, from the printed census — the panel reads are now confirmation only) · Raised: 2026-11-01

**Answer.** The claim holds. Tower Hub's `wiki/workshop/workshop-enhancement` (2026-11-02 print) lists **`Per level` and
`At max` for all 18 rows**, not just the first ten:

| Special enhancement | Track (now printed) | Max | Per level | At max (printed) | `1 + step × Max` |
|---|---|---|---|---|---|
| `Attack Speed +` | **Attack** | 100 | +0.01x | ×2 | 1 + 0.01·100 = 2 ✓ |
| `Orb Size` | **Defense** | 250 | +0.01x | ×3.5 | 3.5 ✓ |
| `Coin Bonus +` | **Utility** | 300 | +0.01x | ×4 | 4 ✓ |
| `Cells / Kill Bonus` | **Utility** | 300 | +0.01x | ×4 | 4 ✓ |
| `Free Upgrades +` | **Utility** | 150 | +0.01x | ×2.5 | 2.5 ✓ |
| `Enemy Level Skip +` | **Utility** | 60 | +0.01x | ×1.6 | 1.6 ✓ |

So: **step = +0.01 for all six** (and for 11 of the twelve 600-level rows), the **only** different step in the whole layer is
`Land Mine Damage +` = **+0.06x ⇒ ×37**; `At max = 1 + step × Max` matches on **18/18** rows. The tracks are printed too, so
each enhancement's discount-lab parent is fixed (rows 1–6 Attack, 7–12 Defense, 13–18 Utility) — which is what step 5 needed.
Transcribed with the per-track bills in [T020](../techniques/T020-workshop-coin-order.md) §6.4.

**Why it is not settled by the source.** Tower Hub's enhancement table (last verified 2026-11-01) prints `Per level`
only for the rows on the shared curve (+0.01 x ⇒ ×7 at 600, and **+0.06 x ⇒ ×37** for `Land Mine Damage +`, proving the step
varies per enhancement). The six special rows are shown with max level and coin totals but **no step**, so the multiplier
each one reaches is unknown.

**Why it matters.** `Coin Bonus +` and `Cells / Kill Bonus` are the two economy-enhancements (2.99 S coins each, the
largest coin sinks in the game): ×4 versus ×7 for the same 2.99 S is a **75 % difference** in the payoff of the biggest
coin purchase a T12+ account makes, and it decides whether `Coin Bonus +` beats twelve standard enhancements at ×7
([T020](../techniques/T020-workshop-coin-order.md) §6.3's order).

**Settling observation (four reads, all in the `Enhancements` tab).** For each of the six, with the enhancement at level 0
and then level 1:
1. read the multiplier line at level 0 (should be ×1.00) and at level **1** — the difference is the step;
2. read the value at the **cap** and check it equals `1 + step × max level`
   (e.g. `Coin Bonus +`: 1 + 0.01 × 300 = **×4** vs 1 + 0.02 × 300 = ×7);
3. note whether the two economy enhancements share one step (they share one price curve too);
4. note `Enemy Level Skip +`'s unit: it may be a **flat** +1 skip per level rather than a multiplier, which would make the
   “×-per-level” framing wrong for it;
   **→ settled from the printed table (`wiki/workshop/enemy-level-skip`, 2026-11-01): it is a multiplier, value column
   `1.01x … 1.60x` ⇒ `1 + 0.01 × n`, cap **×1.60** at level **60**, and the page’s own wording is “increases both the Enemy
   Health and Enemy Damage Level Skip multipliers by x1 when unlocked, then adds 0.01x per level”. Recorded in
   [T024](../techniques/T024-enemy-level-skip-ledger.md) §2 layer 3; the other five specials still need the reads above.**
5. record which **track header** each of the six special enhancements sits under — the source table only prints the track
   for the first ten rows (the six Attack and four Defense entries), so `Orb Size`, `Coin Bonus +`, `Cells / Kill Bonus`,
   `Free Upgrades +` and `Enemy Level Skip +` have no printed track. The track decides **which** of the three
   `Enhancement Coin Discount` labs discounts it.

**Controls.** Read with the `Enhancement Coin Discount` lab and the Vault node in mind — discounts change prices, not the
multiplier line, so the step read is discount-independent; read the same track's standard enhancement (e.g. `Damage +`) in
the same sitting as the +0.01 reference.

**Falsifier.** If a special enhancement's cap value ≠ 1 + step × max, the step is not linear in level (e.g. it grows every
N levels) → record the values at levels 1, 10, 50 and the cap and rebuild §6.2's multiplier column from those four points.
If the three tracks' unlock gates move when spending in a *different* track, the “per-track counters” model in §6.3 is wrong.
