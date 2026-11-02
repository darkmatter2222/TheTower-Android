# H027 — Does a tier store one Dissonant Boost, or one per category (four)?

Status: open · Raised: 2026-11-01

**Claim.** Each tier stores **one boost per category** (four independent slots), so after finishing an Attack run *and*
a Utility run on Tier 6 the panel shows `damage ×a.b` **and** `coins ×c.d` for that tier simultaneously, and both apply
in normal runs. The binary hints at exactly this: `DissonantBoostsTierDataEntry` (plural *Boosts*, per tier) and
`DissonanceTypeIcon` / four `Dissonant Echo - <Category>` labs.

**Alternative reading.** One slot per tier: the **last** Dissonant Run overwrites it, so you must choose a single
category per tier (the usual “difficulty preset” pattern). Under this reading, running the shallow locks (Defense, UW)
after a good Attack run *destroys* progress, and the plan in
[T021](../techniques/T021-dissonant-runs-echo.md) §4/§5 becomes a strict one-category-per-tier choice.

**Why it matters.** It changes the total number of runs worth doing from **24** (one per tier) to **96** (4 × 24), and
it decides whether the boosts of the same category add through the echo (`Σ f` per category) or replace each other. It
also decides whether a low-ceiling lock (Defense at 1 HP) is harmless (separate slot) or harmful (overwrite).

**Settling observation (two runs, same tier, 4 reads).** Pick the tier you farm most.
1. Read the **Dissonance** panel: note the listed boost lines and their values (write the wave too).
2. Run the **Attack** lock to a rung wave (e.g. 1 524) → re-read the panel: expect a `damage` line at **1.500**.
3. Run the **Utility** lock to a rung wave (e.g. 1 524) → re-read: **two** lines (1.500 damage **and** 1.250 coins) ⇒
   four slots; **one** line at 1.250 ⇒ last-run-wins; one line whose value is the *sum* ⇒ a single combined slot.
4. Re-open a normal run on that tier and read the multiplier in the run's stats panel to see which line is live.

**Falsifier.** A single line ⇒ rewrite T021 §4 as a one-category-per-tier table (ranked 5×-path first, since per wave
the 5× paths pay double the boost units), and record which category your farming tier should carry.
