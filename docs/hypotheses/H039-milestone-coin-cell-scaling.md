# H039 — Do milestone **coin** cells pay flat, or scaled by the run's coin multiplier?

Status: open · Raised: 2026-11-02

**Claim.** Flat — the printed cell value is the credited amount, independent of the Coin Bonus card, the `Coins/Wave`
workshop line, module coin multipliers and the Dissonance ×3 coin boost ([T021](../techniques/T021-dissonant-runs-echo.md)).
If instead they are scaled, the late-tier coin cells stop being rounding errors: the premium column is
**11.5 m / 27.05 m / 36.3 m / 40 m / 38 m / 18.5 m / 105 m / 250 m / 450 m** for T4–T12, i.e. **989 m coins** through T12
while the free column is only **35.7 m** ([T019](../techniques/T019-milestone-claim-engine.md) §2), and a ×3 Dissonance
boost plus a ×2 Coin Bonus card would turn 450 m into ≈ 2.7 B.

**Why it matters.** T019 §4.6 tells the player to ignore the coin columns below Tier 10 — that is only right if the cells
are flat *and* small relative to run income. If they scale with the run's multiplier, the claim order inside a session
changes: claim coin cells at the **end** of a long run (highest multiplier, after the coin cards/perks are picked) rather
than as soon as they light, which is a free ~2–6× on those cells.

**Settling observation (three reads, one sitting).**
1. Note the **Coins** counter in the top bar: `C0`.
2. Open **Milestones** → tap exactly one unclaimed **coin** cell of a tier whose printed value you know (e.g. T7 W70 =
   **5 m** free) → `C1`. Record `C1 − C0`.
3. Re-read after a run that raises the coin multiplier (a `Coins`/`Coin Bonus` card equipped, or a Dissonant Utility run
   with the ×3 lock), and claim a second cell of the same printed value → `C2 − C3`.
- identical deltas ⇒ flat (claim confirmed) and §4.6 stands;
- the second delta = printed × the run's multiplier ⇒ scaled — then also read the run's **coin multiplier** line from the
  stats screen and check `delta ÷ printed = that multiplier`, which would make the run's coin multiplier the only parameter
  that matters for the claim order.

**Controls.** Use two cells with the **same** printed value (same tier, same track) so the two deltas are comparable; do
not claim a gem/stone cell in between (a mixed claim makes the delta ambiguous); keep the same tier, since coins/sec from
idle income also moves the counter — read the counter while the tower is **paused** or subtract the idle rate you measured
in [T001](../techniques/T001-interest-idle-engine.md).

**Falsifier.** If `C1 − C0` is neither the printed value nor printed × a known multiplier, the cells may be scaled by the
*tier index* or by a per-cell index — record the cell's tier, wave and track with both deltas so the parameter can be
identified.
