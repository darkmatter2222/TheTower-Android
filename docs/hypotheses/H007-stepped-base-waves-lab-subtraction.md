# H007 — The `Waves Required` lab subtraction also applies to the stepped bases (250/300/350)

Status: **resolved by print 2026-11-02** (device read optional) · Raised: 2026-11-01

**Update (2026-11-02).** Tower Hub `wiki/system/perks` (2026-11-01) prints the law *per base*: “The formula for calculating
**the first perk at each base wave count** is `Waves Required = (Base Waves Required − Waves Required lab) ×
(1 − (Perk Wave Required Perk × (1 + Standard Perk Bonus / 100)))`”, with “If the result is a decimal, **round down**” and
“You can then **multiply that rounded number by the number of perks** to find later thresholds”. So the lab level **is**
subtracted from the stepped bases too (reading 1, the one T011's table uses ⇒ 47 w / 61 w / 75 w columns stand), and the
quantisation is now explicit: inside a tier, threshold *k* = **k × floor(interval)** — the interval is floored once and
then used as a multiple, not re-floored per pick. The base steps are printed as well: 200 → **250 after 20 picks** →
**300 after 30** → **350 after 40**, and the worked example re-adds (`(200 − 3) × 0.352 = 69.344 → 69` ✓).

**Claim.** The published formula is `N = floor((Base − lab) × (1 − PWR × (1 + SPB/100)))` where `Base` is
200 / 250 / 300 / 350 depending on how many perks you have already taken. fandom states the formula *"should
only be used to find the 1st perk for each base waves"*, which implies the lab level is subtracted from the
**stepped** base too — so at `Waves Required` level 30 the interval after pick 20 is `(250 − 30) × f`, not
`250 × f − 30`. The two readings differ by up to 30 waves per pick, i.e. by hundreds of waves in a long run.

**Evidence.** fandom's worked example uses the 200 base only (`(200−3) × (1 − 0.648) = 69.344 → 69`), and the
untuned schedule it lists (200 → 4 000 → 6 500 → 9 500 → 23 150) is exactly `20×200 + 10×250 + 10×300 +
39×350`, which confirms the step points 20 / 30 / 40 but says nothing about where the lab subtraction lands.

**Why it matters.** T011's pick-count table (the 47 w / 61 w / 75 w columns) is computed with the
`(Base − lab)` reading. If the other reading is right, the number of picks per 1 000-wave run is 1–2 higher
than the table says and `Waves Required` is worth slightly less relative to `Standard Perk Bonus`.

**Settling observation.** Get past 20 picks in one run (needs the tuned engine: ~1 500 waves), then record
the wave numbers of picks 20, 21, 22 from the perk bar counter. Divide the gap by the predicted intervals
for your lab level; whichever of `(250 − lab) × f` or `250 × f − lab` matches settles it.

**Falsifier.** If the wave counter shows pick 21 at pick-20's wave + `250 × f − lab` exactly, the second
reading is correct and T011's table needs a one-line correction.
