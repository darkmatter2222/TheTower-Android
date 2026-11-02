# H009 — Elite density per wave, and the resulting cells/hour at each tier

Status: open · Raised: 2026-11-01

**Claim.** Cell income is `elitesPerWave × wavesPerHour × (1 + Tier)/2`, where the only unknown is
`elitesPerWave` — how many of Vampire / Ray / Scatter are alive per wave. The model used in T006 assumes
**1 elite per wave** (giving ≈ 100 / 300 / 450 / 600 cells per hour at 100 waves/h for T1 / T5 / T8 / T11).
If the real density is 2–3 per wave, the whole five-slot ×1.5 boost budget (1 800 cells/day) is trivially
affordable two tiers earlier than the table suggests, which changes when a player should escalate to ×2.

**Evidence.** fandom `Currency/Elite Cells` gives the per-kill drop range `1 … Tier` and the average
`(1+X)/2` explicitly, but no spawn density; the binary stores it as a min/max pair per tier
(`gm_strings.txt`: “Drop range of Elite Cells by tier. Index 3 means tier 3. X is the min value and Y the max
value” — note this may be the *drop* range rather than the count). The `Enemy Balance` card and its **Elite
Balance** mastery change the density, so the number is not a constant across accounts.

**Settling observation (2 minutes, one run per tier).** Record the **Elite Cell** counter at the start of a
run and at the end, plus the wave reached and the elapsed minutes (the in-run **Statistics** screen shows
wave and game/real time). Then
`cells/h = Δcells ÷ minutes × 60` and `elitesPerWave ≈ cells/h ÷ (waves/h × (1+Tier)/2)`.
Do it at the same tier twice: once with the Enemy Balance card equipped, once without — the ratio between
the two runs is the Elite Balance mastery's multiplier, which is currently unnumbered.

**Falsifier.** If `cells/h` does not scale roughly linearly with `(1 + Tier)/2` between two adjacent tiers
(all else equal), then the drop table is not a simple `(1 … Tier)` uniform and T006's income column must be
replaced by the measured per-tier values.
