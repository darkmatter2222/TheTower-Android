# H003 — The Cash interest cap is a fixed number that Max Interest (Lab) raises

Status: open · Raised: 2026-11-01

**Claim.** Interest per wave is paid only on Cash up to a cap; above the cap the `$` icon next to the
Cash counter greys out and further Cash earns nothing until you spend.

**Evidence.** `Guide:Event_Guide` uses the grey `$` icon as the practical check for the max-interest
mission, which implies a discrete threshold rather than a smooth curve. `Guide:Beginners_Guide` lists
**Max Interest** as a Utility research line, i.e. the cap itself is upgradable.

**Settling observation.** In one run, note (a) the Cash value when the icon first greys, (b) the number
of levels in the Max Interest lab line. Repeat after +1 level of Max Interest. Two data points are enough
to tell whether the cap is linear in lab level.

**Why it matters.** It fixes the optimal cycle length for T001: if the cap is low relative to your
per-wave income, the idle window is short and you should buy more often.
