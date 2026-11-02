# H037 — Per-level step of the six “special” enhancements (0.01 / 0.02 / other?)

Status: open · Raised: 2026-11-01

**Claim.** The six enhancements that are not on the shared 600-level curve keep the same **+0.01 × per level** step as the
standard twelve, so their multipliers at max are: `Attack Speed +` ×2 (100 lv), `Orb Size` ×? (250 lv), **`Coin Bonus +`
×4** (300 lv), **`Cells / Kill Bonus` ×4** (300 lv), `Free Upgrades +` ×2.5 (150 lv), `Enemy Level Skip +` ×1.6 (60 lv).

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
