# H057 — Heat increases every ≈ 55.6 waves (even spacing of the 18 increases inside wave 1 000)

**Status:** Open · **Raised:** iteration 90 (T014 §4.3) · **Layer:** Tournaments (Heat / battle conditions)

**Claim.** A tournament's Heat level runs **1 → 19** with **18** increase steps that finish at **wave 1 000**, and those steps
are (approximately) **evenly spaced**, i.e. the level at wave *W* is

```
level(W) ≈ 1 + floor(W / 55.6)        capped at 19        (55.6 = 1000 / 18)
```

so **W = 200 ⇒ level 4**, **W = 500 ⇒ level 10**, **W = 1 000 ⇒ level 19**.

**Evidence so far (printed, not derived).** `wiki/guide/legend-battle-conditions` (2026-11-02, via T014 §4.2) prints that
Heat is a **global** level, that it **starts at 1**, that it **steps up at each of the tournament's 18 heat-increase waves**,
and that the schedule “**appears to finish at wave 1 000**”; **22 of the 26** condition entries carry a **19-value** list, one
per level. The page does **not** print the 18 wave numbers themselves — only the first and the last are implied.

**Why it matters.** It is what turns “how far did my run go” into “how hard was my bracket”: with even spacing, a bracket that
ends at wave 200 has run at **level ≈ 4 of 19 (≈ 21 % of full strength)**, so for the sub-T11 reader the modifiers are a
minority of the difficulty and the raw stat ramp (the “tier +” of T014 §4) dominates. If instead the increases are bunched
late, a 200-wave bracket is essentially un-heated and a 900-wave bracket is nearly full-heat — the *shape* changes which
card/module presets are worth swapping between the early and the late bracket runs.

**Settling observation (UI only).** In one bracket, watch the **Heat** indicator on the run screen (the bar at the top; the
number beside it is the level) and note the wave at which it ticks 1 → 2, 2 → 3 and the last tick before the run ends:

1. Ticks at ≈ **56, 111, 167, 222 …** (spacing ≈ 55.6) ⇒ the law holds, use `1 + ⌊W/55.6⌋`.
2. Ticks at **50, 100, 150, 200 …** (spacing exactly 50, which reaches level 19 only at **wave 900**) ⇒ spacing is 50 and the
   “finish at 1 000” print is an upper bound; then use `1 + ⌊W/50⌋` and level 19 is available 100 waves early.
3. Irregular spacing (e.g. 25, 50, 100, 200 …) ⇒ record the tick waves as a list and use the table instead of a formula; the
   per-condition value lists stay valid because they are indexed by level, not by wave.

**Falsification of the framing.** If the run screen shows **no** numeric heat level, the level is internal: then read the
*value* of one scaling condition (for example `More Enemies` or `Enemy Speed`) at three wave checkpoints and match it against
that condition's printed 19-value list — the matched index **is** the level, which is the same measurement.
