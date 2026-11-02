# H025 — The `Interest` lab multiplies the workshop 0.06 %/level increment (it does not replace it)

Status: open · Raised: 2026-11-01

**Claim.** The lab line `Interest` prints values `1.02, 1.04, … 2.98` (= `1 + 0.02 × level`) and the wiki says it
“increases the increments of each interest/wave workshop level **and** the maximum workshop value”. Under the
multiplicative reading the in-run rate is

```
rate = 0.06 % × (workshop levels) × (1 + 0.02 × Interest-lab levels)
```

so `5.94 % × 2.98 = 17.70 %` is the maximum (both lines maxed), and the threshold to hit the $50 cap falls from
842 to **282** cash. Both wiki tables are consistent with this (the workshop table is printed with the lab at its
default `1`, i.e. it shows 0.06 %-steps).

**Alternative reading.** The lab value is an absolute replacement for the workshop maximum (max interest % = 2.98 %
once the lab is researched, which would make the last 44 workshop levels *downgrade* your rate) — implausible but the
two statements are not explicitly linked anywhere on the pages read.

**Why it matters.** It changes §3's threshold grid of [T001](../techniques/T001-interest-idle-engine.md) by up to
1.7× and decides whether the `Interest` lab is worth gems before the cap ladder is at $1 000+: under the
multiplicative reading every lab level is a pure ×1.02 on the interest, under the replacement reading levels beyond the
workshop's own 5.94 % cap do almost nothing.

**Settling observation (two reads, one lab level).** With the `Interest/Wave` workshop line at a known level `n`
(record it, e.g. 20) and the `Interest` lab at level 0, start a run and read the **interest amount added per wave**
(the constant Cash increment once the `$` is green, or the `Interest/Wave` percentage shown in the Workshop row's
`Value` column). Then buy **10 levels** of `Interest` and re-read.
- 1.20 % of the same base (or 1.20/1.02 = 1.18× the earlier payment) ⇒ **multiplicative**, table as printed in T001 §3;
- 1.20 % becomes an absolute 1.20 → 1.20-unrelated value ⇒ **replacement**, rewrite §3.

**Falsifier.** If the percentage shown for the workshop line itself changes when the lab levels up, the lab writes the
workshop value (a third reading: the lab edits the per-level increment to `0.06 × value`), which is numerically the
same as multiplicative — record which panel shows the change so the doc names the right screen.
