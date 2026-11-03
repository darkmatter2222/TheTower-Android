# T006 — Pack the Lab queue, then buy the *cheapest* skipped hour

Rev: 43 (2026-11-03) — **the medal unit is fixed**: the printed **607.5 / 1 080** of T013 §2.4 are **per week**, not per
day (an event is 2 weeks and pays **1 215**/**2 160**), so every medal leg of Rev 37–42 was **7× too short**. Re-issued
figures: sheet **2 450.4 d = 350.06 weeks = 6.71 y** F2P (**1 378.4 d** boosted) and density **0.007 246/day**; the cosmetic
**par 0.002 565/day**; the medal-to-lab ratio **14.6× → 2.082×**; the merged schedule’s head becomes
**`E → D → F → L → Q`** with the sheet at **12th** (R) / **9th** (P) and the par at **16th** / **14th**; `A` is above the par
on both readings (**7.07× / 6.81×**), so Rev 41’s “`A` straddles the par” was an artefact. The **event identity** closes it:
`212 660/1 215 =` **175.03 events** `× 2 =` **350.06 weeks**, exactly T015’s own print, and `× 7 =` **2 450.4 d**. `tools/
medal-unit-fix.ps1` (new) prints all of it; `tools/lab-day-density.ps1` now divides by `607.5/7`.
Rev: 42 (2026-11-03) — **§The four single-law blocks (`B`, `B2`, `C`, `P`)** (new): `Σ ln` **43.810 1 / 20.407 2 /
27.209 6 / 19.701 6** (R) and **1.513 4 / 0.743 0 / 21.926 7 / 1.002 4** (P), densities **0.014 480 / 0.003 387 /
0.000 020 / 0.000 006** per day. New identity: **a line’s `ln` under R is `ln(cap ÷ step)`**, and every shared-ladder line
is exactly **`ln 30`** ⇒ `B`, `B2`, `C` all at per-line **3.401**. The reading fork is **29×** for `B` (the largest in the
ledger) and the two coin-bound layers `C`, `P` are **last in both readings** (2.0e-5 and 6.0e-6 per day). Merged schedule:
**the head `E → D → F → medal sheet → L` is invariant**; rows 6–15 sit in one 8× band (**0.003 … 0.026**), so after the
head the order matters less than finishing. Coverage **16 rows / 179 of 197 lines / Σ ln 370.610**; only `I` and `N` open.
`tools/lab-value-blocks.ps1`.
Rev: 41 (2026-11-03) — **§Layer `A` on the value side** (new): the 39 UW lab tables close as **31 leveled tables +
8 one-level unlock rows** ✓; `Σ ln` **65.916 2** (R) / **63.482 6** (P), per line **1.690**, density **0.018 143** (R) /
**0.017 473** (P) per day, **0.067 582** with the stack ⇒ **layer `A` straddles the par** (**1.010×** under R, **0.973×**
under P), the only layer whose side of the par depends on the pp reading. Internally five lines carry `ln 30` (`Chrono Field
Duration`, `Chain Thunder`, `Lightning Amplifier-Scatter`, `Swamp Radius`, `Swamp Rend - Basic Enemies`) and the six
287–608 M L-I/L-III lines carry **29.1 %** of the layer. Schedule with `A`: **R** `E D F sheet L Q A par J H M K O G`,
**P** `E D F sheet L par A Q M J K H O G`. Coverage now **12 rows / 145 of 197 lines / `Σ ln` 259.481 / 18 510.6 days**.
`tools/lab-value-layer-A.ps1`.
Rev: 40 (2026-11-03) — **§Four more layers on the value side** (new): `Σ ln` for `Q` **27.351 3** · `J` **42.529 0** ·
`H` **38.390 5** · `K` **20.051 6** (densities **0.025 603 / 0.014 128 / 0.011 422 / 0.009 941** per day), both readings of
a pp law carried; the merged **eleven-row** schedule is `E · D · F · sheet · L · Q · par · J · H · M · K · O · G` with the
`J`/`H`/`K` block the only pp-convention-sensitive part. Two asymmetries: `Q`’s four ban labs are **99.70 %** of the coins
for **21.27 %** of the `ln` (**1 216×** per coin for the rest) and `H`’s single `Enhancement Coin Discount` is **100 %** of
the coins for **12.00 %** (**171 464×**). Two print corrections: **Defense is 655 levels, not 635** (the §Defense `Σ` row is
short by one 20-level line) and **`Presets` 5 lv vs `Card Presets` 1 lv swaps `H` past `M`** (H069).
`tools/lab-value-layers-2.ps1`.
Rev: 39 (2026-11-03) — **§The value side of the cheap layers** (new): `Σ ln` computed from the printed value laws for
`E` **2.3026** · `D` **2.9957** · `F` **5.9915** · `L` **8.0064** · `M` **40.7349** (32 × `ln(5/1.4)`) · `O` **4.5990** ·
`G` **0.6123**, which turns the cost ledger into a schedule. Density order: **`E` 0.452 374 > `D` 0.116 339 > `F` 0.114 946
> medal sheet 0.050 720 > `L` 0.033 768 > par 0.017 957 > `M` 0.011 315 > `O` 0.003 481 > `G` 0.003 412 per day** — three
lab layers beat the whole medal sheet, and `L` (9.9× `G`) **swaps ahead of `G`** against the cost-side order. `Garlic
Thorns` is the densest object found anywhere: **1.685 094/day** with the ×3.725 stack, **94×** the par. The two printed
per-unit figures re-add from the same laws (**373 B**/point for `F`, **1.388 9e16**/multiplier for `M`) ✓.
`tools/lab-value-layers.ps1`.
Rev: 38 (2026-11-03) — **§The whole lab tree on the calendar** (new): the same two divisions applied to all **seventeen**
priced layers of §Appendix B — `coin-days = Σ coins/700 T` and `calendar days = Σ clock/slots`, `cost = max(both)` — so the
191-line census and the 445-tap medal sheet sit in **one** queue. Totals re-add: `Σ coins` ⇒ **4 634 055.8** coin-days
(printed 4 634 056 ✓), `Σ clock` **497 359.6** vs the printed 497 359.8 (**0.2-day** rounding skew) ⇒ **99 471.9** calendar
days at 5 slots = **272.3 y** ✓ = **26 703.9 d = 73.1 y** with the ×3.725 stack ✓. Findings: `C` + `P` carry **99.81 %** of
the coin bill; the cheapest-first queue is `E D F G L → medal sheet → Q O K J B H M A B2 I N → C P`; the five layers above
the sheet are **12 of 191 lines** and **0.50 %** of the clock (**134.1 d** with the stack) so they fit **inside** the
350.06-day medal sheet — that is the year-one plan; and the per-layer flip incomes put `A` (**663.6 T**) and `Q`
(**672.4 T**) within 6 % of the 700 T anchor. `tools/lab-tree-day-ledger.ps1`.
Rev: 37 (2026-11-03) — **§The Bot category on a calendar-day scale** (new): the two-resource model
`cost_days = max(price/income, Σclock/(1440·slots))` puts the ten lab lines and the 25 medal lines in **one** queue.
The **medal layer is 14.6× the lab category per calendar day** (**0.050 720** vs **0.003 481**, par **0.017 957**), so the
medal sheet is finished first and the labs run behind it; inside the category the best order **flips with the coin income**
— clock-bound: `Burn Stack 0.011 266 > Linger Time 0.007 906 > Flame Cooldown 0.003 516 > Duration 0.002 375 >
Cooldown 0.002 026`, coin-bound: the same list almost reversed (per coin **2.242e-13 / 1.292e-13** for the cooldown labs vs
**6.099e-16** for the duration column, a **212×** gap), with the crossovers at **15.68 B / 3.894 T / 9.217 T** coins/day
(5 slots). Print correction: Burn Stack’s `k = 3` prefix is **204.25 T**, not B. `tools/lab-day-density.ps1`.
Rev: 36 (2026-11-03) — **the assist layer’s unit is Q, not q, and the module tail is pinned** (§The Assist Module Labs,
§Module named labs findings 8–10, `tools/assist-primary-tail.ps1`): the fandom page prints **`Cost (Q Coins)`**, so the
eight assist labs are **930.00 Q = 9.30 × 10²⁰** coins (one lab **116.25 Q**), corroborated by the same-tier
`Battle Conditions Group 1` printing **0.2 Q** at level 1; the time cells re-add **exactly** on `n × 15 551 min`
(L30 = 466 530 min = 323 d 23 h 30 m), 18 s/level below the Hub’s `933 078 s`. Bill **2 314.769 3 Q → 3 243.839 3 Q**
(×1.403) ⇒ **coins bind ×9.32** single-slot / **×46.6** five-slot; the T19 band returns as the second pole at **28.7 %**
of the coins. Beyond the census, the four `Primary Module Bonus` labs print **1 % per level to +30 % at T23 W500**
(120 levels; **465.00 Q / 20 087.1 d** if the assist ladder applies ⇒ **H065**), the unit ladder extends to
**`s` = 10²¹** (three-candidate trapezoid test: dev **0.3 %** at 10²¹ vs 104.4 % / 1004.4 % at the neighbours), and the
module slot ladder prints **L300 = 3 136 095 shards / 18.07 s** coins with slopes 1.4 … 500 per level (top five segments’
trapezoid sums re-adding to ≤ 1 %).
Rev: 35 (2026-11-03) — **the twelve named `Module` labs close the census at 100 %** (§Module named labs,
`tools/module-named-family.ps1`): **12 lines / Σ 254 levels = 0.718 3 Q** for **5 341.4 d**, and 254 re-adds to the
§census Module row exactly ✓. New shapes: **two master ladders carry all 18 ban levels** — an exact **×10.0000** cost
ladder `50 B → 500 q` and a time ladder whose differences are the **100-h arithmetic** series `30 000 … 66 000 min` on a
`24 000 min = 400 h` head (the BC generic line’s unit), with the four labs as subsequences `Cannon` = `Armor` =
**{2,4,6,7}**, `Generator` = **{3,5,7}**, `Core` = **{1,3,4,5,6,7,8}** and one unpaired cell (`Generator` L2); four new
clock shapes (`Reroll` ×1.0255–1.0268, `Daily Mission` 1.0260 → 1.0448, the two drop lines ≈ ×1.075 / ×1.050). Twins:
`Cannon` = `Armor` 0/4 cells and the two Cost lines share their time column (0/30) while 18/30 cost cells differ
(Σ **−11.53 B**, the shard line cheaper). Per point: **1.988 2 × 10¹⁰** coins per +1.00 pp (`Common`) vs
**2.842 5 × 10¹³** (`Rare`) — **×1 430** apart; the four in-band cheap buys cost **28 053 110 000** coins / **93.33 d**.
Appendix B row `Q`; bill **191 distinct lines = 2 314.769 3 Q / 497 359.8 d (100 % coverage)** ⇒ **9 053.56 y** of coin
income vs **1 361.7 y** of single-slot clock ⇒ **coins bind ×6.65**. Two source skews logged (`Reroll` Σ10
2 200 410 000 vs 2 240 400 402; `Daily` L10 2.1 B vs 2.19 B).
Rev: 34 (2026-11-03) — **the Battle Condition category and the two `Boss` lines close; coins become the binding currency**
(§BC/Boss, `tools/battle-condition-boss-family.ps1`): **7 lines / Σ 130 levels = 2 307.577 5 Q** coins for
**11 453.0 d**, i.e. the five BC labs alone are **99.72 %** of the priced bill’s coins (**Group 4 alone 88.42 %** — its
doubling ladder runs `2 Q → 1024 Q`, ratio **2.0000** on all nine steps) while carrying only **1.83 %** of its clock.
Laws found: **four of the five BC time columns are exact multiples of the assist-lab unit `933 078 s` = 15 551.3 min**
(×1.25 / ×1.50 / ×1.00 / ×1.65 to four decimals) and the generic line uses **24 000 min = 400 h** instead; costs mix
arithmetic (`+0.2 Q`, `+0.5 Q` per level), the **×1.5** family law (`Group 3`), **×2.05** (generic) and exact **doubling**
(`Group 4`). `Boss Attack` = `Boss Health` cell for cell (0 differing cells) and their time column is the Bot
`* Cooldown` column **+ 1000 min** on all 25 shared levels — one printed ladder serving nine census lines; the Boss pair
is the only part of this layer inside the tier band (**T9 W50**, **1.013 74 × 10¹²** coins and **41.20 d** per −0.30 %).
Appendix B row `P`; bill **185 priced lines = 2 314.051 Q / 492 018.4 d (96.9 % coverage)** ⇒ **9 050.75 y** of coin
income vs **1 347.1 y** of single-slot clock ⇒ **coins bind ×6.72**; the printed BC `Value` columns (20 pp each, sum
**80 pp** / 58.5 % multiplicative) disagree with the model’s **R = 54.4 %** ⇒ **H064**.
Rev: 33 (2026-11-03) — **the Bot Research category closes on two shared columns, and the census gains two lines**
(§Bot Research, `tools/bot-research-family.ps1`): the **five `* Cooldown` labs print one identical 25-level column**
(**1.808 T** / **576.67 d** each) and the **four `* Duration`/`Linger` labs one identical 20-level column**
(**664.838 T** / **853.69 d** each) — **0 differing cells** in both; `Thunder Bot Linger Time` is the duration column with
its value ladder shifted by **+3.00 on 20/20 cells**. `Burn Stack` and the duration column print the family law
**undistorted** (×1.5000 costs with max deviation **1.953 × 10⁻³**, **×1.1500 on all nineteen time steps**; Burn Stack
**3.445 × 10⁻⁵** / **2.877 × 10⁻⁶**), while the cooldown column is head/tail-humped (first ratio **2.0017**, peak
**1.8036**). Category **10 lines / Σ 210 = 3.235 5 q** coins for **6 605.8 d**, split **0.28 % / 43.65 %** (cooldowns),
**82.19 % / 51.69 %** (durations), **17.53 % / 4.66 %** (Burn Stack) — the cooldown labs are the cheapest per queue-day in
the table at **3.136 × 10⁹** coins per day (Burn Stack is **×588** dearer). Three prints re-add against T015: the
**515.0 M** cooldown block-1, the **1.32 T** duration five-block, the **853.7 d** duration line; and the census moves from
**8 / Σ 165** to **10 / Σ 210** for this category (the two `Bot Bot` lines), so the whole census is **191 lines /
Σ 5 017** on the 32-mastery reading (**171 / Σ 4 837** on the 12-lab one). Appendix B row `O`; bill now
**178 / 191 lines = 6.473 5 Q / 480 565.4 d (93.2 %)**.
Rev: 32 (2026-11-03) — **the Perk Research category closes, and it is a clock-only layer**
(§Perk Research, `tools/perk-research-family.ps1`): **9 lines / Σ 180 levels** re-add to the census (`100 + 25 + 32 + 10 +
8 + 2 + 1 + 1 + 1`), total **4.337 329 q** coins for **183 173.9 d** of clock — i.e. **0.07 %** of the bill’s coins but
**38.65 %** of its clock. Headlines: `Waves Required` is the **most clock-expensive single line in the census**
(**176 708.27 d** = 37.3 % of the priced bill, ×9.8 the mastery block) with a quasi-geometric tail ratio pair
(cost **1.052 1** / time **1.036 1**) and a stop-level table whose knee sits between 25 and 50; `Ban Perks` adds a **new
clock shape** — an exact **doubling** ladder with one break at level 4 — on top of a pure decimal cost ladder
(`10 M … 1 q`); two **exact shared time cells** (4 d 23 h 26 m on `Perk Option Quantity` 1 = `Auto Pick Perks`;
4 d 15 h 6 m on `First Perk Choice` = `Ban Perks` 2) while the two long ladders share a **tail but not a head** (their
step ratios agree to four decimals from level 6); `Improve Trade-Off Perks` is the cheapest per point
(**1.726 1 × 10⁹** coins per +1 %) with the category’s only accelerating cost ladder; and the eight level-1 buys are
**1 901 800 000** coins = **2.7 s** of printed income for **21.22 d** of queue. Appendix B row `N`; bill now
**168 / 189 lines = 6.470 3 Q / 473 959.6 d (88.9 %)**.
Rev: 31 (2026-11-03) — **the Card Research category closes and the mastery-lab block enters the bill**
(§Card Research, `tools/card-research-family.ps1`): **four census lines share one 7-level Recharge column**
(`Second Wind` / `Demon Mode` / `Nuke` / `Missile Barrage`, Σ **14.430 T** / **119.88 d** each) with the buy order set only
by the printed wave count (**9.018 8 × 10⁹** coins per 100 waves saved on `Second Wind`); `Super Tower Bonus` prints
**30** levels now (**12.304 T** / **897.30 d**, its 10-level prefix re-adding to the Rev 11 print **115.95 B** /
**22.19 d**), and the **32** mastery labs at the printed **50.00 q / 562 d 12 h** each are the census’s largest block —
**1.600 Q** over **18 000 d** = **24.7 %** of the bill’s coins for **6.2 %** of its clock, with a constant **250 h** time
step and **mirror-symmetric** coin increments (+0.20 +0.70 +1.40 +2.20 +2.10 +1.40 +0.70 +0.20 q); the stone re-add pins
the 1 000-stone bucket at **14** cards (fixed at T012 Rev 7). Appendix B now covers
**159 / 189 lines = 6.466 Q / 290 785.7 d (84.1 %)**.
Rev: 30 (2026-11-03) — **the Utility Research category is priced line by line** (§Utility Research,
`tools/utility-research-family.ps1`): **12 lines / 611 levels**, where the four workshop-increment lines share the
head-**40** 99-level column at **111 696 509** coins / **1 444.98 d** each (**57** cost cells differ from the head-30
column by **+570 coins** in total — one ladder, two prints), `Interest` is the `Labs Coin Discount` ladder at head 50
(Δ **40 670**), `Max Interest` lifts the interest cap **$50 → $15 000** for **2 304 140** coins =
**154.1 coins per dollar of cap**, the three `Recovery Package …` lines share one 20-level column
(**2.968 19 T** / **263.34 d**) whose times are the exact 20-level prefix of the enemy-stat ladder and whose prices obey
**`enemy(n) = Recovery(n) + 10 + 25(n − 1)`** (0 of 20 mismatching), and a fourth **humped** clock shape appears
(**1.1503 → 1.1909 → 1.1726**); the seven-line coin-side block costs **1 921 559 012** coins = **1.37 y** of five-slot
boosted clock. Appendix B now covers **121 / 169 lines = 4.866 Q / 270 725.1 d (71.6 %)**.
Rev: 29 (2026-11-03) — **the Defense Research category is priced line by line** (§Defense Research,
`tools/defense-research-family.ps1`): **16 lines / 635 levels = 187.228 T coins over 15 076.3 d**, with **three**
more lines (`Health`, `Health Regen`, `Defense Absolute`) joining the shared 99-level column at
**116 005 939** coins / **1 495.22 d** each and a **+0.03** step (**386 686** coins per +0.01 against `Damage`’s
580 030), `Land Mine Decay` proven a **20-cell prefix extension** of `Land Mine Damage` (0 differing cells),
`Shockwave Size` a coin-twin of it with **1.449×** the clock, `Wall Regen` carrying the **×1.1500** clock law on 18
consecutive steps after an eleven-level head, three more **arithmetic-price** labs (`Wall Regen` Δ 5.1→7.63 B,
`Wall Thorns` Δ 8.1→10.18 B, `Wall Invincibility` Δ 51→55.77 B), and one line — `Wall Fortification` — holding
**93.29 %** of the whole layer’s coins for 7.49 % of its clock; Appendix B now covers
**111 / 169 lines = 4.866 Q / 260 639.7 d (65.7 %)**.
Rev: 28 (2026-11-03) — **the Attack Research category closes: 9 lines / 598 levels = 25.594 T coins / 124 747.5 d**
(§Attack Research, `tools/attack-research-family.ps1`): one 99-level column prices **four** of the nine lines
(`Damage` 1–99, `Attack Speed`, `Critical Factor`, `Range` 1–80 = **111 695 939** / **1 444.98 d** each), **597/597**
value cells fit `1 + 0.02n` / `1 + 0.03n` / `0.10n` / `800 % + 25n` exactly, the **80-level knee** is
**44.80 %** of the coins for **80.81 %** of the value, `Damage Per Meter` is that ladder re-printed (**16** cost cells
+10 coins, **9** time cells +1 min, Δ **+160 / +9 min**), the two Super Crit lines share the *price* column but not the
*clock* column, `Max Rend Armor Multiplier` has a near-arithmetic price (Δ 40 B) and a **quadratic** clock
(Δ 835→976 min, second differences 3–7 min) at **0.492 d per pp**, and the Appendix B bill now covers
**96 / 169 lines = 4.865 Q / 245 588.8 d**.
Rev: 27 (2026-11-03) — **the Main Research category is priced line by line** (§Main Research, 13 lines from the fandom
lab pages, `tools/main-research-family.ps1`): **`Starting Cash` and the three `Workshop … Discount` lines share one
99-level column** (Σ **111 695 939** coins / **1 444.98 d** each ⇒ **446 783 756** coins and **5 779.9 d** for the
block), `Labs Coin Discount` Σ **472 509 506** coins / **2 751 d** (0.011 % above the Hub's exact `Labs Speed` sum = the
three-significant-figure print), `Enhancement Coin Discount` is the census's one **exact geometric** price line
(**1.00 B × 1.30^(n−1)**, Σ **826.445 q** = **20.46 %** of the whole priced census) riding an **arithmetic** clock
(`t(n) = 1 555 n` min ⇒ Σ **5 453.3 d**), `Buy multiplier` is the cheapest complete line in the game (**562 500** coins /
**89.8 h**), `Presets` follows `3.5 × 10^(2n+3)`, and the category Σ is **826.45 q** over **14 055 d = 38.5 y**.
Rev: 26 (2026-11-03) - **the Recharge family resolved** (`wiki/card/nuke` + `wiki/lab/second-wind-labs`, both 2026-11-01):
four **T14 W60** seven-level labs share one cost/time ladder — **14.43 T** coins over **10 374 360 s = 120 d 1 h 46 m**
each (the Σ re-adds from the seven printed cells; earlier drafts carried 10 371 960 s) — while their **value** ladders are
per-lab: `Nuke(k) = Second Wind(k + 1)` on 6/6 steps, `Missile Barrage` departs from L5. Three printed lines = **43.29 T /
360.22 d**, four with `Recharge Demon Mode` = **57.72 T / 480.29 d**. Plus the printed **save-order law**
(`Death Defy` → `Energy Shield` → `Second Wind` → `Demon Mode` → `Nuke`) and the v27.3 15-s invulnerability note.
Rev: 25 (2026-11-03) - **Appendix B: the running bill of the priced lab layers.** **72** of the **169** census lines are
priced end to end and add to **4.039 Q** coins / **104 035.3 d** of clock (**15.80 y** of coin income, **57.01 y** on five
slots, **24 968 d** of cell income at ×1.5 ⇒ cells bind by **×4.33**); the fourteen T19-band lines are **40.29 %** of the
coins and **67.6 %** of the clock, and the 19 covered lines below that band cost **399.15 T = 0.57 days**.
Rev: 24 (2026-11-03) - **Appendix A.2: the 39 UW lab tables get their grand totals.** Σ **2.4111 Q** coins and
Σ **18 165.95 d** of base slot clock, closed three ways (lines, nine per-weapon subtotals, cheap/q split), with the two
new laws: **six lines carry 99.99 %** of the coin bill (`Inner Land Mine - Chrono Jump` alone is **51.74 %** = 8.134× the
four `L-IV` lines) and **the binding currency flips** — cells bind the 33 cheap lines by **×5 203**, coins bind the six
q-scale lines by **×1.56**.
Rev: 23 (2026-11-02) - **the census’s Card-lab count reconciled**: the category page prints **10** rows / Σ **99** with
`Card Mastery` as one row, while the Lab screen lists **one mastery lab per card** ⇒ **21** lines / Σ **198** and the whole
census becomes **169 lines / Σ 4 792** instead of 158 / 4 693; the Utility category re-adds cell-for-cell (**12** rows,
Σ **611**, `Max Interest` **15**, both 20-level Level-Skip lines).
Rev: 22 (2026-11-02) - **the enemy-stat table gains its last five lines** (`wiki/enemy/{ranged,tank}-enemy-labs`,
2026-11-01): the four `Health`/`Attack` lines of Ranged + Tank (all gated **T9 W20**) print cell-identical ladders to the
Fast pair (Σ **25.768 T** / 1 235.95 d each, and a **×1.10** cost ratio proved by L30 = 2.70 T = 30 × 1.1²⁹), and
`Ranged Enemy Range` (**T13 W80**) is a **fifth shape-pair**: value step **−0.50 %** ⇒ cap **−15.00 %** (new constant,
printed in the page's own cap list), cost **1.0 T × 1.4^(n−1)** (L30 = 17 286.7 = 1.4²⁹ ✓, L24 = 2 295.9 = 1.4²³ ✓; new
ratio), time arithmetic at **233 280 s**/level ⇒ Σ **60.50 T / 1 245.94 d** — exactly the shared ladder ×**1.00808**.
Nineteen of twenty 30-level lines now share the one time ladder; the Range line is the sole (scaled) exception.
Rev: 21 (2026-11-02) - **the UW row of the cap table is now fully enumerated** from `wiki/lab/lab-category-ultimate-weapon-research`
(all **39** caps printed, Σ re-adds to **669** cell by cell; incl. `Shock Multiplier` **14**, `Missile Barrage Quantity` **6**,
`Spotlight Missiles` **18**, `Recharge Missile Barrage` **7**) + a three-way skew note on `Swamp Rend - Additional Enemies`
(category **6** vs lab page **11** vs Rev 16’s **9**; the 11-row bill stays) + the pages’ own spellings
(`Enhancment Coin Discount`, `Missle Amplifier`).
Rev: 20 (2026-11-02) - **the Assist Module Labs layer closed** (`wiki/module/assist-module-labs`, 2026-11-01):
**8 labs** (Bonus + Substats × Cannon/Armor/Generator/Core), **30** levels each, gate **T19 W50**; the printed ladder is
linear — cost **0.25 q × n** (one lab **116.25 q**, all eight **930.00 q** coins) and time **933 078 s × n** (one lab
**5 021.8 d**, eight **40 174 d**) — with the **100 % law** `1 + 69 + 30` (base + 69 stone levels + 30 lab levels), the
stone ladder `3k + 15` re-adding to the printed **8 073** per track, and the printed substat **hard caps**
(**98 %** defense — the skew number, **90 %** Chrono, **150 s** Wall rebuild, **7 s** Shockwave, **37 s** Inner Land Mine).
Rev: 19 (2026-11-02) - **a fourth clock shape, from the `Super Tower Bonus` lab** (`wiki/system/the-tower`, T8 W300,
**30** levels): `Value` = **`1 + 0.03·L`** (10/10 ✓) ⇒ cap **×1.90**; price is **not** the ×1.5 law (first step 1.500,
then **1.31–1.37**, fit **×1.3451**/level) with **Σ10 = 115.94 B** coins in two blocks of **+0.15** each —
**21.37 B** then **94.57 B** (**×4.43**) ⇒ the knee sits inside the first ten levels; the ten `Time` cells give **22.2 d**
(per-level) or **5.1 d** (cumulative) with **no printed `Total`** to decide it, so the reading is now a one-tap panel test.
Card-product effect: T012's **270** becomes **351** at L10 and **513** at L30. Four taxonomy prints on the same page
double-source T020 §1, T001 §C, T012 §5 and T011.
Rev: 18 (2026-11-02) - **Appendix A.1: the value laws + the L1–10 bills.** The **31** leveled UW lines are arithmetic on
their `Value` column too (`cap = v1 + step × (levels − 1)`, **29/29** numeric columns exact), and the beginner's number is
the **cheap tier**: the **18** labs whose level-1 price is ≤ 1 M coins cost **Σ 8.10 B coins / 462.33 d** of base slot time
for their **first ten levels each** (≈ **24.8 d** of real time at five slots with the ×3.725 speed stack). Two new ladder
relations, both reproduced from printed cells: **L-II − L-III = exactly 5 h per level** (Σ10 gap `5 h × 45 = 9.375 d` vs the
printed `28.45 − 19.07 = 9.38 d` ✓, reading-independent), and a line is **a family plus an offset** (`Missiles Radius`
− L-III = **550 000** on all six compared levels; `Missile Amplifier` − L-II = **200 000 + 50 000·n**). Plus a
coins-per-printed-point ranking for the cheap tier, and three **corrections to Appendix A** from the same pull (the three
`Swamp *` lines are **30**-level: **116.24 B / 825.4 d** — the printed 12.94 B is their 20-level prefix; `Swamp Rend -
Additional Enemies` prints **11** rows with its 11th at **1.00 Q / 83 d 8 h** ⇒ bill **1.01 Q**; `Death Wave Health` Σ over
its 30 printed levels = **15.79 B**, the 4.40 B being the L1–19 prefix).
Rev: 16 (2026-11-02) - **Appendix A: the named ledger.** All **39** UW lab tables named from their own page sections and
priced from the six shared families: **31 leveled + 8 one-level unlocks**; the unlocks alone are **565.25 B** coins over
**70.31 d** (mean **8.8 d** each). Two new shapes: `Death Wave Cells Bonus` is a 1.5/1.12 ladder on a **1.00B / 77 h 47 m**
base (first ten levels re-add to the printed **113.33 B** exactly) and `Death Wave Health` is **two-phase** (L-II to L10,
then near-linear 334.6 M -> 552.8 M). Family bills at full depth: L-I 124.85 B / 466.6 d, L-II 356.52 B / 916.1 d,
L-III 116.24 B / 825.4 d, L-IV 38.34q / 2011.1 d, L-V 265.93 T / 283.2 d, L-VI 1247.44q / 916.7 d, 20 M-family
92.00 B / 214.1 d. Plus `Smart Missiles`' workshop **39,177** stones closing as **29,661 + 6,966 + 2,550 = 39,177** (the
three printed `Total` rows, see T008 §2) and two printed caps: ILM cooldown **37 s**, CL stones **x2 ... x7,961**.
Rev: 17 (2026-11-02) - **correction from the T008 §2 re-pull**: `Smart Missiles`' three workshop tracks print `Total` rows
of **29,661** (Damage 35 lv), **6,966** (Quantity 15 lv) and **2,550** (Cooldown 16 lv), which sum to the page's
**39,177** - so the Rev-16 aside that priced Quantity "by subtraction" from `+6` and `+16` arithmetic (**3,745 / 2,048 /
33,384**) was wrong: those steps hold only inside the first ten printed levels. Level counts now come from the counting law
**levels = numeric cells - 2** (level-0 row + `Total` row). The nine workshop totals sum to **244 542** stones.
Rev: 15 (2026-11-02) - **nine-weapon lab census**: all nine `wiki/uw/<name>` pages parsed (**39** printed lab tables); every
multi-level line falls into one of **six** printed sequences, five of them exact offsets of another — `L-II = L-I - 750 000`
(12/12), `= L-I - 20 h` (25/25), SM lines `= L-II + 200 000 + 50 000n` (12/12) and `= L-III + 550 000` (15/15), Spotlight
`= 200 000 000 + (L-I - 1 000 000)` (12/12), and the DW line **is** the L-IV ladder's odd levels (`L-V(n) = L-IV(2n-1)`,
20/20 cells) because **2.25 = 1.5²** and **1.2544 = 1.12²**. Family bills: L-I 124.85 B / 466.57 d, L-II 124.84 B /
445.73 d, L-III 116.24 B / 825.44 d, L-IV 38.34q / 2011.11 d, L-VI 1247.44q / 916.67 d; the first half of a line is
**0.03-2.7 %** of its bill for a third to a half of its value, on four different price shapes.
Rev: 14 (2026-11-02) - **the UW-category lab ladders** added from `wiki/uw/<name>` (GT / BH / DW pages): both columns are
**per level** (costs exactly x2.25 and times exactly x1.2544 on the DW line - impossible for a cumulative column), sibling
lines are **offset** not rescaled (`DW = GT - 750 000` 10/10 cells; `BH = GT + 19 000 000 + 500 000(n-1)`), the four printed
lines bill **124.85 B / 34.39 B / 91.92 B / 265.93 T** coins for **466.57 / 214.06 / 214.05 / 283.23 d**, and the knee is at
**level 10** (**0.5 %** of the 25-level coin bill for **40 %** of the value steps). Section "The UW-category lab ladders".
Rev: 13 (2026-11-02) - **`Target Priority` ladder printed** (`wiki/guide/target-priority`, 2026-11-01): gate **T4 W150**,
**2** levels (**2 d / 1 000 000** and **8 d / 1.00 B**), a hand-set x4 time step (not the x1.15 of the clock laws),
L1 = one focused type vs L2 = full sort with `Closest` and `Spotlight` entries, drag-and-drop since v29. §"The cap table".
Rev: 12 (2026-11-02) — **the wave axis gets a law**: `wave(chance, tier) = base × 0.9^(tier − 1)` (10/10 rows at T15,
15/15 tiers on the 0.33 % row), the Elite spawn ladder is printed from **0.33 % at W500** to **33 % at W8 000**, the
predicted cells/run table is computed from it (T11 W1000 ≈ **140**, T14 W1000 ≈ **395**), and the fleet drop columns close
as `5 + (wave − 1)/250` (21/21 ✓, **25** at W5 000) and **1 080 → 2 100** reroll shards (T14 → T21).
§“The wave laws”.
Rev: 11 (2026-11-02) — **the enemy-stat layer closes**: the twenty 30-level enemy-stat lines share **one** time ladder
(Σ **106 785 720 s = 1 235.95 d** of base slot each), the value steps are **−0.40 %** (Common/Fast/Vampire/Ray/Scatter) or
**−0.30 %** (Protector pair + Boss pair) so the caps are **−12 % / −9 % / −6 %** ✓, the T19 trio is fully arithmetic
(cost `0.25 q × n`, time `n × 10 d 19 h 11 m` ⇒ Σ **116.25 q** / **5 021.68 d** each), and
`Lightning Amplifier - Scatter` is the cleanest closed form in the repo: value `1.25 × n` ⇒ **×37.5**, cost
`100 B × 1.5^(n−1)` ⇒ L30 = **12.78 q** ✓, time `720 000 s × 1.12^(n−1)` ⇒ Σ **173 759 640 s = 2 011.11 d** ✓
— a **×1.5 / ×1.12** pairing (new time constant). Coins-per-point ranking in §enemy-stat layer.
Rev: 10 (2026-11-02) — **the cap table is closed line by line.** All eleven `wiki/lab/lab-category-*` pages
(fetched 2026-11-02) print every line's `Max Lv`: the per-category counts re-add to the census
(15 · 9 · 16 · 12 · 39 · 10 · 9 · 8 · 21 · 14 · 5 = **158** ✓), the **whole lab system is Σ 4 693 level-ups**, the twenty
enemy-stat lines are **30** levels each with the single exception `Protector Damage Reduction` (**20**), and the five
Battle Condition caps (**10 / 20 / 20 / 10 / 10**) give the maximum condition reduction **R = 54.4 %** — hence the floors
`removed = 16 / 23` and `skip = ×0.7492` at value 55 (§the cap table, line by line).
Rev: 9 (2026-11-02) — **four more printed ladders + the per-column law**: the six **Wall** labs (gates T8 W10 / T10 W70 /
T12 W10 / T14 W60; 50/20/30/20/10/60 levels; value laws `2n`/`−10n`/`10n`/`1n`/`1n`/`20n`), `Garlic Thorns`
(**T2 W1000**, 10 lv, `0.5 × n`, Σ **1 350 000** coins / **25.45 d**), `Boss Health` + `Boss Attack` (**T9 W20**, 30 lv,
`−0.30 % × n` ⇒ **−9.00 %** ✓), `Reroll Shards` (**T4 W70**, 100 lv, Σ10 **2.2404 B** / **15.64 d**); plus the measured
**per-column** result (cost ratios fall 1.170→1.077 while time ratios rise 1.167→1.326 inside one lab ⇒ the
×1.5/×1.15 pair is family-specific), the **1 200 s → 150 s** rebuild floor, and Fortification's `Wall Regen` dependency.
Rev: 8 (2026-11-02) — the **Second Wind lab pair** added to §census (`wiki/lab/second-wind-labs`, 2026-11-02):
`Second Wind Blast` (**T3 W150**, 4 lv, value `25 × n` ⇒ **100 %**, costs 1.8 M / 3.0 M / 4.5 M / **75 M** = Σ **84.3 M**,
times **100 000/150 000/200 000/300 000 s** ⇒ Σ **750 000 s = 8 d 16 h 20 m**) and `Recharge Second Wind`
(**T14 W60**, 7 lv, value 2 000→400 waves, costs Σ **14.43 T** with Δ +500/+500/+500/+510/+510/+530 B, times Σ
**10 371 960 s = 120 d 1 h 6 m**); both are further **hand-set** instances where the *cost* and *time* columns follow
**different** shapes, so the family must be read per column; plus the printed mechanic (revive at **50 %** HP, Wall
respawn, invincibility `5 × star + 5` ⇒ **10…40 s**).
Rev: 7 (2026-11-02) — the **printed lab census** added: **158 named labs in 11 categories** (Main 15 · Attack 9 ·
Defense 16 · Utility 12 · UW 39 · Card 10 · Perk 9 · Bot 8 · Enemies 21 · Module 14 · Battle Condition 5 — the Rev-7 print,
whose Σ is **158**; `Bot` became **10** lines at Rev 33 (§Bot Research finding 5)), every
per-level law in this repo capped-checked against the printed `Max Lv` (`Labs Speed` 99 ⇒ ×2.98, `Labs Coin Discount` 99 ⇒
−29.7 %, the five 99-level coin lines ⇒ ×2.98, `Starting Cash` 99 ⇒ 495, `Max Interest` 15, `Enhancement Coin Discount`
100 ⇒ −30 %, `Shatter Shards` 5 ⇒ +100 %, `Module Shard Costs` 30 ⇒ −30 %); the **gem-rush ladder** closes on
`180 gems/day × (1 − discount)` with the **> 360 d = 25 000 flat** tail (⇒ 25 gems/day on a 1 000-day level), the
**all-labs = 5 × one-lab** identity on all 18 rows, and the skip law `skip = (m − 1) × duration`.
Rev: 6 (2026-11-02) — the **third time shape** added: the `Dissonant Echo` labs are **not** ×1.15 lines — their printed
rows are `cost = 1q · 2.25^(n−1)` and **`time = n × 20 d 20 h`** (arithmetic), whose two closed forms reproduce Tower
Hub's printed totals **8.85e21 coins** and **378 000 000 s** exactly, so the ×1.5/×1.15 pair below is scoped to the
bot/perk-style stat lines and the family must be identified before forecasting a line.
Rev: 5 (2026-11-02) — **the two clock laws added** (above): cost `×1.5/level` and research **time `×1.15/level`**, both
reproducing the printed rows to the last digit (Burn Stack's five durations = 45 d 15 h · 52 d 11 h 15 m · 60 d 8 h 8 m ·
69 d 9 h 21 m · 79 d 19 h 10 m ⇒ every ratio 1.150 ✓, Σ = 307.62 d; `Duration` L6 = 16 d 18 h 16 m / 759.38 B and
L10 = 29 d 7 h 34 m / 3.84 T ⇒ `t₁ = 8 d 8 h`, `c₁ = 100 B`), the **whole-line forecasts** that follow from them
(20-level line ≈ **853.7 d ≈ 2.34 y** and ≈ **665 T** coins) and the **coins-per-saved-hour drift of ×1.304/level**.
Rev: 4 (2026-11-02) — the **Elite Cell ledger closes** against Tower Hub’s currency pages (2026-11-01): the T14–T24
drop table **re-adds 10/10** (`(min+max)/2` = printed average, and the T14 “+50 % = 10.5/7” row proves the T1–13 law ends
at average **7** on T13), the **full eight-row boost-cost table** is printed (15 → 1 000 000 cells/h), each multiplier’s
ladder closes (DW lab 20 lv = ×3.0 ✓, Bonus Cells 25 lv = ×2.5 ✓, Cells card +2/lv = +14 at lv 7 ✓), and the **Cells/Kill
enhancement** gets its first 10 coin prices with the cumulative column re-adding to **1.42 T** at level 10.
Rev: 3 (2026-11-02) — the **two meta-labs** priced (`Labs Speed` ×2.98, `Labs Coin Discount` −29.7 %, one shared coin
curve), the **multiplicative stacking law** with the worked example, the rush-bucket prices re-derived from the flat rate ×
the printed discount column, and **H035 resolved** (both mechanisms: +0.015× per gold-boxed lab + the duration tiering).
Rev: 2 (2026-11-01) · Status: **Verified (arithmetic)** for the boost/rush tables (the bucket prices reproduce from
7.5 gems/h × the printed discount: 7.5·24·0.91 ≈ **163**, 7.5·168·0.79 ≈ **1 000**, 7.5·720·0.66 ≈ **3 550** ✓); the
cell-income model is still a formula without a measured day
**Value:** ★★★ → effectively ×2–3 research throughput for the whole game · **Ease:** 4 taps per boost · **Prerequisite:** Lab unlocked (Tier 1 Wave 30 milestone)

| Boost | Cells per hour (per slot) | **Cells per skipped hour** | Rank |
|---|---|---|---|
| ×1.5 | 15 | **30** | 1 |
| ×2 | 100 | 100 | 2 |
| ×3 | 840 | 420 | 3 |
| ×4 | 3 360 | 1 120 | 4 |
| ×5 | 11 900 | 2 975 | 5 |
| ×6 | 60 000 | 12 000 | 6 |
| ×7 | 250 000 | 41 667 | 7 |
| ×8 | 1 000 000 | 142 857 | 8 |

Cost is flat per hour, so the ×8 column is 24 000 / 800 000 / 2 400 000 cells for the 1 h / 8 h / 24 h presets and the ratio never changes. **Each multiplier step is ~3.3× worse per cell** — ×1.5 is the only “buy” tier, everything above ×3 is for accounts with six-figure cell stocks.

## Why it works

Lab research is a **multiplier** on a stat, so it is the strongest coin-per-coin line in the game — but each level also costs wall-clock time that coins cannot compress. The real budget is *slot-hours*, and the whole technique is: (1) never let a slot idle, (2) buy the cheapest skipped hour available, (3) keep the two currencies that buy time (Elite Cells, Gems) at their best exchange rate.

### The two clock laws (cost ×1.5, time ×1.15 per level)

Lab lines are geometric in **both** currencies, and the printed rows pin both ratios exactly:

* **coins:** `cost(n) = c₁ · 1.5^(n−1)` ⇒ `Σ(n) = c₁(1.5ⁿ − 1)/0.5`
* **wall clock:** `time(n) = t₁ · 1.15^(n−1)` ⇒ `Σ(n) = t₁(1.15ⁿ − 1)/0.15`

| Lab (printed rows) | `c₁` / `t₁` | printed per-level | law | Σ printed vs derived |
|---|---|---|---|---|
| `Burn Stack` (Flame, 5 lv) | 43 T / **45 d 15 h** | 43.00 · 64.50 · 96.75 · 145.12 · 217.69 T | ×1.5 ✓ | **567.06 T** = 43(1.5⁵−1)/0.5 ✓ |
| same rows, time column | — | 45 d 15 h · 52 d 11 h 15 m · 60 d 8 h 8 m · 69 d 9 h 21 m · 79 d 19 h 10 m | ×1.15 ✓ (**all five reproduce to the minute**) | Σ = **307.62 d** |
| `Duration` (Golden/Amplify, 20 lv) | 100 B / **8 d 8 h** | L6 = 16 d 18 h 16 m and 759.38 B · L10 = 29 d 7 h 34 m and 3.84 T | ×1.5 + ×1.15 ✓ | first-5 = **1.32 T** ✓ · **whole line ≈ 664.9 T and 853.7 d ≈ 2.34 y** |
| `Dissonant Echo - X` (4 labs, 20 lv) | 1q / **20 d 20 h** | 2.25q · 5.06q · 11.39q … 970.74q · **4.91s** (×**2.25**) · 41 d 16 h · 62 d 12 h · 83 d 8 h … 208 d 8 h (= `n·t₁`) | **mixed**: coins ×2.25, time **arithmetic** | Σ = **8.846e21** ✓ = printed **8.85e21** · Σ = **378 000 000 s** ✓ |

**Three shapes, one page.** The ×1.5/×1.15 pair is the law of the **bot- and perk-style stat lines**; the
`Dissonant Echo` family prices coins at **×2.25** and *times* **arithmetically** (`n·t₁`, T021 §3), so read the family
from the first two printed rows before extrapolating a total — a 20-level Echo line is **4 375 d** of base slot time, not
the **≈102 × t₁** the geometric law predicts.

**Why the pair matters.** Because time rises ×1.15 while coins rise ×1.5, the *coins-per-saved-hour* of a line grows
**×1.304 per level** — late levels are relatively cheaper in wall-clock time. Practical consequences:

1. **Forecast any lab before starting it**: read `t₁` from the panel, then `Σ = t₁(1.15ⁿ−1)/0.15`. A 20-level line costs
   ≈ **102 × t₁**, so a lab whose first level is 8 d 8 h ties up a slot for **2.34 years** of real time — which is why
   the ×1.5 cell boost (30 cells/skipped hour, table above) is worth more on the *long* lines than on the short ones.
2. A lab's **last** level is 16.4× as slow as its first and 33.3× as expensive ⇒ buy the first 10 levels of many lines
   before the tail of one (the same knee rule as every other ladder in this repo).
3. With five slots, one season (8 weeks = 56 d) buys ≈ **280 slot-days**; at `t₁ = 8 d 8 h` that is 4 first-levels per
   slot per season, so the queue is the scarcest currency in the game — cheaper than coins, cells or gems to refill.

### The `Super Tower Bonus` lab — a fourth clock shape, printed in full (new, Rev 19)

`wiki/system/the-tower` (last verified **2026-11-01**, re-pulled 2026-11-02) has exactly one data table, and it is the only
print of this lab's rows: gate **T8 W300** ✓ the same number as T019's tier-8 milestone row, **30 levels** ✓ this doc's
census row (`Card Research … Super Tower Bonus 30`). The table itself shows 10 of its 30 rows.

| L | Time (printed) | Cost | Value | L | Time (printed) | Cost | Value |
|---|---|---|---|---|---|---|---|
| 1 | 0d 5h 0m | **2.00 B** | 1.03 | 6 | 2d 4h 6m | 9.26 B | 1.18 |
| 2 | 0d 13h 21m | 3.00 B | 1.06 | 7 | 2d 17h 17m | 12.53 B | 1.21 |
| 3 | 0d 21h 53m | 4.07 B | 1.09 | 8 | 3d 8h 59m | 17.13 B | 1.24 |
| 4 | 1d 6h 55m | 5.33 B | 1.12 | 9 | 4d 3h 50m | 23.51 B | 1.27 |
| 5 | 1d 16h 49m | 6.97 B | 1.15 | 10 | 5d 2h 32m | **32.14 B** | **1.30** |

1. **Value** is exactly **`1 + 0.03 · L`** (10/10 ✓, step 0.03), so with the printed 30-level cap the line ends at
   **×1.90**.
2. **Price is *not* the ×1.5 law.** Measured per-level ratios: **1.500 · 1.357 · 1.310 · 1.308 · 1.329 · 1.353 · 1.367 ·
   1.372 · 1.367** — one ×1.5 step, then ≈ **1.31–1.37** (geometric fit over L2–L10 = **×1.3451/level**). Use the printed
   cells, not §the two clock laws' `1.5^(n−1)`, for this family.
3. **The bill.** Σ10 = **115.94 B coins**; split into the two 5-level blocks a player actually buys: **L1–5 = 21.37 B**
   for **+0.15** of multiplier, **L6–10 = 94.57 B** for the next **+0.15** ⇒ the second block is **×4.43** the first, so the
   knee is *inside* the first ten levels. Extrapolating the fit to 30 levels gives ≈ **47 T** coins with its last level at
   ≈ **12.07 T** — four orders of magnitude above the printed ten, which is why the buy list stops at L10 for a sub-T11
   account (`tools/stb-lab.ps1` re-adds all of this).
4. **Time — the H050 ambiguity, with a device test.** The ten cells in minutes are 300 · 801 · 1 313 · 1 855 · 2 449 ·
   3 126 · 3 917 · 4 859 · 5 990 · **7 352**. Per-level reading ⇒ **Σ10 = 31 962 min = 22.2 d**; cumulative reading ⇒ the
   ten levels take **7 352 min = 5.1 d** (Σ/last = **4.35**). This table prints **no `Total` row**, so unlike the
   `Game Speed` lab (T020 §1.6) it cannot settle the reading itself. The one-tap test: read the **Research time** on the
   Lab panel for level **1** — **5 h** means per-level (22.2 d for ten levels), while a value that only matches the
   10-cell ladder at L10 means cumulative (5.1 d).
5. **What the ×1.90 buys.** The page's own wording is that the lab “raises the multiplier on the `Super Tower` card”, so the
   printed card product of T012 (`Damage` ×5 × `Demon Mode` ×6 × `Super Tower` ×9 = **270**) becomes
   **5 × 6 × (9 × 1.30) = 351** at STB L10 and **5 × 6 × (9 × 1.90) = 513** at L30 — **+243** on the product for the
   ≈ 47 T bill, and **+81** for the 115.94 B of the first ten levels.

**Four taxonomy prints on the same page**, all double-sourcing existing entries: the Workshop “raises the **minimum level**
of the corresponding in-run upgrade” (T020 §1); the Lab either “improve[s] the scaling” or “raise[s] the maximum … such as
increasing the cap on `Max Interest`” ✓ T001 §C's cap ladder; cards are slot-limited and *some* are locked once equipped
✓ T012 §5's ten 🔒 cards; Perks arrive “one every **200 rounds**” and only after their lab is researched ✓ T011. The
`system/content-creator-page` (2026-11-01) adds the store-side numbers: a creator code costs the buyer nothing, pays the
creator **5 %** of in-app and **8 %** of Webstore revenue, stays active **30 days**, is entered in **Settings** in-game and
on the Webstore itself, and **no longer exists on iOS since 29.0.5** ⇒ re-enter it once per 30-day window (T022).

### The printed lab census, the rush-rate law, and the 5× identity (Rev 7)

Source: Tower Hub `wiki/lab/lab-upgrades` (last verified 2026-07-29; “List of Lab Upgrades” table, all categories).

**Census — 158 named labs in 11 categories.** The count per category is the fastest self-check on a Lab screen (a missing
line means an unclaimed milestone gate, T019):

| Category | Labs | Category | Labs |
|---|---|---|---|
| Main Research | **15** | Card Research | **10** |
| Attack Research | 9 | Perk Research | 9 |
| Defense Research | 16 | Bot Research | 8 |
| Utility Research | 12 | Enemies Research | 21 |
| Ultimate Weapon Research | **39** | Module Research | 14 |
| Battle Condition | 5 | **Total** | **158** |

Every level cap the rest of this repo uses comes from that table, and each one re-adds from `step × levels`:

| Lab | Max Lv (printed) | Step | Cap re-add |
|---|---|---|---|
| `Labs Speed` | **99** | +0.02 | `1 + 0.02×99 = ` **×2.98** ✓ |
| `Labs Coin Discount` | **99** | −0.30 % | **−29.7 %** ✓ |
| `Cash Bonus` / `Cash / Wave` / `Coins / Kill Bonus` / `Coins/wave` / `Interest` | **99** each | +0.02 | **×2.98** ✓ (T020 §1.2) |
| `Starting Cash` | **99** | +5 | **495** ✓ |
| `Max Interest` | **15** | cap ladder | T001 §2.C ✓ |
| `Enhancement Coin Discount` (×3 tracks) | **100** | −0.30 % | **−30 %** ✓ (T020 §6.3) |
| `Module Shard Costs` | **30** | −1 % | **−30 %** ✓ |
| `Shatter Shards` | **5** | +20 % | **+100 %** ✓ (one step per 100 %-cap = 20 pp) |
| `Daily Mission Shards` | **50** | +1 shard | **+50 shards/mission** ✓ (T004 §ledger, `wiki/module/module-labs`) |
| `Perk Option Quantity` / `Standard Perks Bonus` / `Waves Required` / `Auto Pick Ranking` / `Ban Perks` / `Improve Trade-Off Perks` | 2 / 25 / 100 / 32 / 8 / 10 | as printed | T011 ✓ |
| 4 × bot cooldown, 4 × bot duration, `Burn Stacks` | 25 / 20 / **5** | as printed | T015 ✓ |
| `Battle Condition Reduction` + Groups 1–4 | 10 / 20 / 20 / 10 / 10 | — | T006 §battle-condition ✓ |
| `Card Mastery (1 lab per card)` | **9** per card | — | the per-card mastery line, 32 such labs |
| `Second Wind Blast` / `Recharge Second Wind` | **4** / **7** | +25 pp / −waves | §Second Wind below ✓ |

**The Second Wind pair, as two more hand-set ladders (`wiki/lab/second-wind-labs`, 2026-11-02).** Both are fully printed,
and both confirm the “read the family from the first two rows” rule rather than adding a new family:

| Lab (gate) | Levels | Per-level **value** | Per-level **cost** | Σ |
|---|---|---|---|---|
| `Second Wind Blast` (**T3 W150**) | **4** | `25 × n` ⇒ 25/50/75/**100 %** ✓ | 1.8 M · 3.0 M · 4.5 M · **75 M** (ratios 1.667 / 1.5 / **16.667**) | **84.3 M** coins, **750 000 s = 8 d 16 h 20 m** |
| `Recharge Second Wind` (**T14 W60**) | **7** | 2 000→1 500→1 250→1 000→750→550→**400** waves | 550 B · 1.05 T · 1.55 T · 2.05 T · 2.56 T · 3.07 T · 3.60 T (Δ **+500/+500/+500/+510/+510/+530 B**) | **14.43 T** coins, **10 374 360 s = 120 d 1 h 46 m** (re-added from the seven printed cells, Rev 26; earlier drafts of this doc carried **10 371 960 s**) |

Three reads worth having: (a) the Blast **times** are exactly **100 000 / 150 000 / 200 000 / 300 000 s** (the printed
minute forms are those values rounded, and the four sum to a clean **750 000 s**), so this line's time column is arithmetic
in 50 000-s steps while its **cost** column is not (a **16.667×** jump at level 4); (b) the Recharge **cost** column is
near-arithmetic (**+500 B** for L1→L4, drifting to +530) while its **time** column is geometric with a *rising* ratio
(1.267 → 2.069) — the two columns of one lab follow different shapes, which is why the family must be read per column;
(c) the underlying mechanic is printed too: **Second Wind revives the tower at 50 % health, respawns the Wall and grants
invincibility once per round**, and the invincibility is `5 × star + 5` seconds ⇒ **10/15/20/25/30/35/40 s** at stars
1–7 ✓ (star = the card's star rank, max **7**, T012). `Blast` is a **T3 W150** milestone gate, so it is inside the
sub-T11 window; `Recharge` needs **T14 W60** and its level 1 alone ties up a slot for **5 d 5 h** for 2 000 waves of
recharge delay.

**The Recharge family — one cost/time ladder, three different value ladders (new, Rev 26).** Four 7-level labs share the
same price and clock ladder; three of them print their value ladder, on three different pages
(`wiki/lab/second-wind-labs`, `wiki/card/nuke`, and the Smart Missiles lab page via Appendix A.1):

| Lab (all **T14 W60**, 7 levels) | Value ladder as printed | L1→L7 |
|---|---|---|
| `Recharge Second Wind` | 2 000 · 1 500 · 1 250 · 1 000 · 750 · 550 · **400** waves | −1 600 |
| `Recharge Nuke` | 1 500 · 1 250 · 1 000 · 750 · 550 · 400 · **300** | −1 200 |
| `Recharge Missile Barrage` | 1 500 · 1 250 · 1 000 · 750 · 500 · 350 · **200** | −1 300 |
| `Recharge Demon Mode` | not printed — same ladder predicted by the family rule | — |

Four things the comparison yields:

1. **Cost and time are cell-for-cell identical across the family** (7/7 on both columns: `550.00B / 1.05T / 1.55T /
   2.05T / 2.56T / 3.07T / 3.60T` and `5d 5h / 6d 14h 21m / 8d 0h 55m / 9d 23h 10m / 14d 1h 59m / 24d 19h 29m /
   51d 8h 12m`), so the two pages double-source each other, and **every Recharge line costs 14.43 T coins over
   10 374 360 s = 120 d 1 h 46 m of slot clock**. The three printed lines therefore cost **43.29 T / 360.22 d**, and with
   `Recharge Demon Mode` at the family ladder the four-lab family is **57.72 T / 480.29 d** — four saves for one
   quarter-year of queue time.
2. **The value ladders are per-lab, and two of them are the same ladder read at an offset:**
   `Nuke(k) = Second Wind(k + 1)` on **6/6** steps, with a new terminal **300**. `Missile Barrage` shares the first four
   levels and then departs (**550 vs 500** from L5) — so the family rule applies to price and clock only, and the value
   column still has to be read per lab.
3. **The clock is the cost that matters at this gate**: each line’s level 1 alone ties up a slot for **5 d 5 h**, and the
   whole 7-level line takes **120 d**, which is why the family is a *late-queue* block even though 14.43 T is cheap next
   to the q-scale lines of Appendix A.2 (a Recharge line is **0.04 %** of one `L-IV` line: 14.43 T vs **38.34 q**).
4. **The save-order law** (printed on the Nuke page, from the automation labs): on a lethal hit the saves fire in this
   order — **`Death Defy` → an `Energy Shield` charge → `Second Wind` → `Demon Mode` (needs its own automation lab) →
   `Nuke`**. Two details: the automatic Nuke does **not** clear projectiles already in flight, and since **v27.3
   (18 December 2025)** `Smart Nuke Automation` also grants **15 s of invulnerability** when it triggers; the automation
   re-fires Nuke after its cooldown **only if** Nuke was used once that run.

**Four more printed ladders, and the per-column law (Rev 9).** From `wiki/lab/wall-labs`, `wiki/lab/lab-garlic-thorns`,
`wiki/lab/lab-category-*`-sibling pages `wiki/enemy/boss-labs` and `wiki/module/module-labs-reroll-shards` (all 2026-11-01
except wall-labs 2026-07-29). The **value** column is exact arithmetic `step × n` on **every** line; the **cost** and
**time** columns each follow their *own* law, so the “×1.5 cost / ×1.15 time” pair is a **family** property
(main/bot/perk research), not a universal one:

| Lab | Gate | Lv | Value law (✓) | Σ cost | Σ slot time |
|---|---|---|---|---|---|
| `Wall Health` | **T8 W10** | **50** | `+2 % × n` ⇒ L50 **+100 %** | per panel | per panel |
| `Wall Rebuild` | **T8 W10** | **20** | `−10 s × n` ⇒ L20 **−200 s** | per panel | per panel |
| `Wall Regen` | **T10 W70** | **30** | `+10 pp × n` ⇒ L30 **300 %** | 30.00 B (L1) → 217.89 B (L30) | 279 d 11 h 27 m (L30) |
| `Wall Thorns` | **T10 W70** | **20** | `+1 % × n` ⇒ L20 **20 %** | 30.00 B (L1) → 202.03 B (L20) | 263 d 3 h 46 m (L20) |
| `Wall Invincibility` | **T12 W10** | **10** | `+1 s × n` ⇒ L10 **10 s** | **5 383.72 B = 5.38 T** (Σ all 10) | **7 236 840 s = 83.76 d** |
| `Wall Fortification` | **T14 W60** | **60** | `+20 % × n` ⇒ L60 **1 200 %** | 300.00 B (L1) → 10.57 T (L60) | per panel |
| `Garlic Thorns` | **T2 W1000** | **10** | `+0.5 × n` ⇒ L10 **5.0** | **1 350 000** coins | **2 199 300 s = 25.45 d** |
| `Boss Health` / `Boss Attack` | **T9 W20** | **30** each | `−0.30 % × n` ⇒ **−9.00 %** ✓ | 40.00 B (L1) → 421.14 B (L10) | 7 d 15 h 32 m (L10) |
| `Reroll Shards` | **T4 W70** | **100** | `+1 shard × n` ⇒ **+100** | Σ10 **2 240 400 402** = **2.2404 B** | Σ10 **1 351 440 s = 15.64 d** |

**The per-column measurement** (only the two fully-printed lines): on `Wall Invincibility` the **cost** ratios *fall*
(1.170 → 1.077 across levels 2–10) while the **time** ratios *rise* (1.167 → 1.326) inside the same lab; on
`Reroll Shards` the time column is near-geometric at **×1.026** (nine ratios 1.0255–1.0267, i.e. the per-level delta grows
≈ +120 s: 51 → 65 minutes) while its cost ratios jump 3.24 → 4.77 → 2.86 → 2.15 → … So: **read the family per column from
that column's first two printed rows**, and never assume the cost law from the time law.

Two facts worth having next to the table: **base Wall rebuild time is 1 200 s and can never go below 150 s**, with the
reduction coming from Workshop + lab + module substats + Vault + relics + **Fortress Mastery** (so the lab's −200 s is one
of six sources inside a 1 050-s budget); and `Wall Fortification` only pays if **`Wall Regen` is researched first** — the
extra pool above the maximum is healed by regen alone. The printed note on the enemy pages is a caution for every stat
comparison in this repo: once enemy-stat labs are researched, “the usual base relationships between enemy types stop
holding true” (e.g. boss health is no longer reliably **20×** basic health), so baseline multipliers are starting points,
not constants.


**The gem-rush ladder is a flat rate × one discount column.** Printed: 1 h **7.5** gems (**180**/day, 0 %), 1 d **163**
(163/day, 9 %), 1 w **1 000** (142.9, 21 %), 30 d **3 550** (118.3, 34 %), 90 d **8 000** (88.9, 51 %), 360 d **25 000**
(69.4, 61 %), **> 360 d = 25 000 flat**. Two derived laws: `gems/day = gems ÷ days` reproduces every middle column
(1000/7 = 142.86 ✓, 3550/30 = 118.3 ✓, 8000/90 = 88.9 ✓, 25000/360 = 69.4 ✓), and the printed discount is exactly
`1 − (gems/day)/180` (→ 9.4 / 20.6 / 34.3 / 50.6 / 61.4 %, i.e. the print’s 9/21/34/51/61 rounded) ⇒ **180 gems per day of
research is the base rate**. Practical consequence of the flat tail: because >360 d stays **25 000**, a 1 000-day level
rushes at **25 gems/day** — *six times cheaper per hour* than a 1-day level, so rush the long lines first (this is the
same effect the ×1.304 coin/time drift creates in §clock laws, now on the gem side).

**Buying a boost for five slots is exactly 5× one slot.** In the printed boost table the `Cost All labs` column is
**5 ×** `Cost One lab` on all **18** rows where both are printed (15→75, 120→600, 360→1 800, 100→500, 800→4 000,
2 400→12 000, 840→4 200, 6 720→33 600, 20 160→100 800, 3 360→16 800, 26 880→134 400, 80 640→403 200, 11 900→59 500,
95 200→476 000, 285 600→1 428 000, 60 000→300 000, 480 000→2 400 000, 1 440 000→7 200 000) ⇒ **no bulk discount**, so
“all labs” is worth buying only when all five slots actually have time left (matching `Buy multiplier`’s no-discount rule,
T020 §1.5). The `Effective time skip` column is the hours actually removed: 1 h → 0.5, 8 h → 4, 24 h → 12 at ×1.5, i.e.
the closed form **`skip = (multiplier − 1) × duration`**, which also re-derives this doc’s own
*cells-per-skipped-hour* column (`×3`: 840 ÷ 2 = **420** ✓, `×4`: 3 360 ÷ 3 = **1 120** ✓, `×5`: 11 900 ÷ 4 = **2 975** ✓,
`×6`: 60 000 ÷ 5 = **12 000** ✓ — that is why ×1.5 looks cheap per cell but expensive per skipped hour).

**Slot bill check:** `100 + 400 + 1 400 + 3 000 = ` **4 900** gems for slots 2–5 ✓ (the same figure inside T022’s
≈ 115 k framework bill).



- Elites are **Vampire, Ray, and the full-size Scatter** — and *only* those: Scatter children, Fleets and Bosses drop
  **nothing**. Each one drops `1 … Tier` cells uniformly ⇒ **average (1 + Tier) / 2 per kill** for Tiers 1–13.
- So cell income ≈ `elitesPerWave × wavesPerHour × (1 + Tier)/2`. At 1 elite/wave and 100 waves/h: **T1 ≈ 100 cells/h, T5 ≈ 300 cells/h, T8 ≈ 450, T11 ≈ 600** (see [H009](../hypotheses/H009-elite-density-per-wave.md) for the density to measure).
- The **Wave Skip** card is cell-*positive*: every wave it skips pays **1.1×** the cells of the current wave — Tower Hub
  adds “**even during Intro Sprint**”. Combined with the next bullet, an Intro-Sprint-skipped wave pays ≈ `1.1 × 0.20 = 0.22×`.
- **Intro Sprint is cell-negative**: cells earned while it is active are reduced to **20 %**. If a day's goal is cells, do not start the run with Intro Sprint.

**The Tier 14+ drop table (printed; every row re-adds).** From T14 the *minimum* jumps while the max stays = tier; the
printed average is exactly `(min + max) / 2` in all ten visible rows, and the T14 “+50 % (= 10.5 / 7)” row proves the T1–13
law ends at average **7** (= (1+13)/2) — the two regimes link without a gap:

| Tier | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24* |
|---|---|---|---|---|---|---|---|---|---|---|---|
| min | 7 | 11 | 12 | 12 | 12 | 15 | 15 | 15 | 15 | 15 | 15* |
| max | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24* |
| avg | 10.5 | 13 | 14 | 14.5 | 15 | 17 | 17.5 | 18 | 18.5 | 19 | 19.5* |

\* “Showing 10 of **11** rows” ⇒ the hidden row is T24 (min 15 = max tier law), so 19.5 is extrapolated. These are the
*default* values — “the server can override them”. The two big step-ups are T14 (+50 % over T13) and **T19 (+13.3 %)**;
between them T15–T18 pay almost flat, so tier-crawling 15→18 is *not* a cell-pressing strategy.

**The multiplier stack, with every ladder closed.** Cells/kill = `(base · CellsPerKill-enh · DW-lab · BonusCells + card)
· CellsMastery`, in that order (the card is added **after** the multipliers, the Mastery multiplies the total *including*
the card):

| Multiplier | Unlock gate | Ladder | Max |
|---|---|---|---|
| `Cells/Kill Bonus` (Workshop Enhancement) | after spending **500 B** coins on Utility enhancements | ×1 at unlock, **+0.01/lv** | **L300 = ×4.00** (L200 = ×3 ✓ same law) |
| `Death Wave Cells Bonus` (lab) | Death Wave lab block | **+0.1/lv, 20 lv** | ×1.0 → **×3.0** ✓ (0.1 × 20 = 2 ✓) |
| `Bonus Cells` (Golden Bot+) | 1 250 stones | **+0.05/lv, 25 lv** | ×1.25 → **×2.5** ✓ (= the 17 500-medal line of T015) |
| `Cells` card (Rare) | **T4 W40** | **+2 cells/lv, 7 lv** | +14 (additive, post-multiplier) |
| `Cells Mastery` | **1 000 stones** | ×1.05 → **×1.32** as of v29 (patch note said 1.03 → 1.3) | final multiplier |
| Enemy Balance / Elite Balance, Wave Skip, Intro Sprint **masteries** | T012 | more elites/wave or faster waves | — |

### The cap table, line by line (Rev 10)

Source: the eleven `wiki/lab/lab-category-*` pages (fetched **2026-11-02**), each printing `Line — Max Lv` for every line
of that category. The counts re-add to the census (15 · 9 · 16 · 12 · 39 · 10 · 9 · 8 · 21 · 14 · 5 = **158** ✓), and the
**Σ** column is the sum of that category's printed caps:

| Category | Lines | Σ levels | Printed caps (`line cap`, in the pages' own order) |
|---|---|---|---|
| Main Research | 15 | **712** | Game Speed 7 · Starting Cash 99 · Wksp Attack/Defense/Utility Discount 99 · Labs Coin Discount 99 · Labs Speed 99 · Buy multiplier 4 · More Round Stats 1 · Target Priority 2 · Card Presets 1 · Workshop Respec 1 · Reroll Daily Missions 1 · Workshop Enhancement 1 · Enhancement Coin Discount **100** |
| Attack Research | 9 | **598** | Damage **100** · Attack Speed 99 · Critical Factor 99 · Range **80** · Damage/Meter 99 · Super Crit Chance 50 · Super Crit Mult 40 · Max Rend Armor Multiplier 30 · Light Speed Shots 1 |
| Defense Research | 16 | **655** | Health 100 · Health Regen 100 · Defense Absolute 100 · Defense % **50** · Orb Speed 20 · Land Mine Damage 20 · Land Mine Decay **35** · Shockwave Size 20 · Orb Boss Hit 10 · Wall Health 50 · Wall Rebuild 20 · Wall Regen 30 · Wall Thorn 20 · Wall Invincibility 10 · Wall Fortification 60 · Garlic Thorns 10 |
| Utility Research | 12 | **611** | Cash Bonus 99 · Cash / Wave 99 · Coins / Kill Bonus 99 · Coins/wave 99 · Interest 99 · Max Interest 15 · Package After Boss 1 · Recovery Package Amount / Max / Chance 20 · **Enemy Attack Level Skip 20 · Enemy Health Level Skip 20** |
| Ultimate Weapon | 39 | **669** | *full 39-cell print (Rev 21), category-page order, Σ re-adds to 669 ✓*: Missiles Despawn Time 20 · Missiles Explosion 1 · Missiles Radius 20 · Chrono Field Duration 30 · Chrono Field Damage Reduction 1 · Chrono Field Reduction % 30 · Swamp Radius 30 · Swamp Stun 1 · Swamp Stun Chance 30 · Swamp Stun Time 30 · Golden Tower Bonus 25 · Golden Tower Duration 20 · Chain Lightning Shock 1 · Shock Chance 30 · Shock Multiplier **14** · Death Wave Health 30 · Death Wave Coin Bonus 20 · Inner Mine Blast Radius 20 · Inner Mine Rotation Speed 20 · Chrono Field Range 20 · Missle Amplifier 25 · Missile Barrage 1 · Missile Barrage Quantity **6** · Inner Mine Stun 1 · Black Hole Damage 10 · Extra Black Hole 1 · Black Hole Coins Bonus 20 · Spotlight Coin Bonus 20 · Spotlight Missiles **18** · Black Hole Disable Ranged Enemies 1 · Recharge Missile Barrage **7** · Swamp Rend - Basic Enemies 30 · Swamp Rend - Additional Enemies **6 (skew)** · Chain Thunder 30 · Lightning Amplifier 30 · Death Wave Cell Bonus 20 · Death Wave Damage Amplifier 30 · Death Wave Armor Stripping 10 · Inner Land Mine - Chrono Jump 10 |
| Card Research | 10 | **99** | Second Wind Blast 4 · Double Death Ray 30 · Extra Orb Adjuster 1 · Extra Extra Orbs 2 · Energy Shield Extra Hit 2 · Super Tower Bonus 30 · Recharge Second Wind / Demon Mode / Nuke 7 · Card Mastery **9 (one lab per card)** |
| Perk Research | 9 | **180** | Unlock Perks 1 · Waves Required 100 · Auto Pick Perks 1 · Standard Perks Bonus 25 · Perk Option Quantity 2 · First Perk Choice 1 · Ban Perks **8** · Improve Trade-Off Perks 10 · Auto Pick Ranking 32 |
| Bot Research | **10** | **210** | five Cooldown lines **25** · four Duration/Linger lines 20 · Burn Stack **5** = `5×25 + 4×20 + 5` ✓ (the Rev-23 print had **8 / 165**, missing the two `Bot Bot` lines: `165 + 25 + 20 = 210`) |
| Enemies Research | 21 | **620** | twenty lines at **30** + `Protector Damage Reduction` at **20** |
| Module Research | 14 | **314** | the 12 lines of T010 §2.2 (Σ **254**: Reroll Shards 100, Daily Mission Shards 50, the two Cost lines 30, the two Drop Chance lines 10, Shatter 5, Unmerge 1, bans 4/4/3/7) **+ the two assist lines at 30** |
| Battle Condition | 5 | **70** | generic `Battle Condition Reduction` **10** · Group 1 **20** · Group 2 **20** · Group 3 **10** · Group 4 **10** |
| **All** | **160** | **4 738** | (= 4 678 if the two assist lines are counted with the module page's 12; the Bot row gained two `Bot Bot` lines at +2 / +45 at Rev 33) |

**Card-lab count: two consistent readings (Rev 23).** `wiki/lab/lab-category-card-research` prints **10** rows whose `Card
Mastery (1 lab per card) Max Lv 9` collapses the mastery labs into one row (Σ **99** ✓ re-added term by term). Counted the
way the Lab screen lists them — **one mastery lab per card** — the category is **21** lines with Σ **198**
(`99 − 9 + 12 × 9`), and the whole census moves from **160 lines / Σ 4 738** to **171 / 4 837**. Both readings are
internally consistent; the 12-lab version is what the game shows (T012 §2.1 lists one mastery lab per card).
The **32-mastery-lab** reading (H063, used by Appendix B from Rev 31) adds twenty more lines and `378 − 198 = 180`
levels: **191 lines / Σ 5 017** (`171 + 20` lines, `4 837 − 198 + 378 = 5 017`).
`wiki/lab/lab-category-utility-research` re-adds exactly as printed here (**12** lines, Σ **611** ✓), including
`Max Interest` **15** (the H003 ladder), `Package After Boss` **1**, and the two **20**-level `Enemy … Level Skip` lines
that T024’s ledger counts.

**Three notes on the category-page prints (Rev 21).** ① The six category pages pulled as individual slugs
(`lab-category-{main, attack, defense, perk, bot, ultimate-weapon}-research`, 2026-11-01) agree with the census on every
cap; the Σ of the now-fully-enumerated UW row re-adds to **669** cell by cell. ② New three-way skew: the category page
prints `Swamp Rend - Additional Enemies` **Max lv 6**, while the lab page itself prints **11** rows today (9 at
Rev 16) — the bill in §“Poison Swamp” keeps the **11-row** ladder (its costs are per-row prints); treat the category
“6” as the older grid if the lab page still shows 11. ③ Page-intrinsic spellings to expect in the UI: **`Enhancment
Coin Discount`** (sic, one `n`) on the main page and **`Missle Amplifier`** (sic) in the UW list — matching the game's
own labels; `Defense %` there renders as `Defense|%` with the percent glyph after a bar.

Four consequences:

1. **Two cap shapes, not one.** The “increment” lines (the ×1.5-cost family: +0.02 or −0.30 % steps — Labs Speed, Labs
   Coin Discount, the three Workshop discounts, the five coin lines, Attack Speed, Critical Factor, Damage/Meter) cap at
   **99**, while the “+1 %-style” lines (Damage, Health, Health Regen, Defense Absolute, Waves Required, the three
   `Enhancement Coin Discount` labs) cap at **100**. A one-level difference, but it is the fingerprint that tells the
   two clock-law families apart from the Lab screen alone.
2. **The enemy-stat layer is 620 levels of a uniform 30-level line.** With the printed **−0.30 %/level** step (T009’s
   boss pages) one maxed line is **−9.00 %**, and the odd one out is `Protector Damage Reduction` (**20** levels).
3. **The two Utility `* Level Skip` labs cap at 20 each** — each level removes one enemy level from that stat’s growth, so
   the pair is the cheapest enemy-stat relief in the game and it is *inside* the same 12-line category as the four coin
   lines (T020 §1.2), which is why they should be queued together.
4. **Battle Condition: the ceiling is R = 54.4 %.** With T014 §4.1’s printed steps the five caps give
   `10×2 % + 20×0.21 % + 20×0.51 % + 10×1 % + 10×1 % = 20 + 4.2 + 10.2 + 10 + 10 = ` **54.4 %**, so no Legend bracket can
   ever scale a condition below `1 − 0.544 = 0.456`: the Overheat decays stop at **⌈35 × 0.456⌉ = 16** and
   **⌈50 × 0.456⌉ = 23** removed levels, and a skip condition at value 55 bottoms out at `1 − 0.01·55·0.456 = `
   **×0.7492** (at value 96: **×0.5622**).

**The cap table is a second source for every cap used in this repo:** Main’s `Max Interest` 15 (T001), the five 99-level
coin lines and the 100-level `Enhancement Coin Discount` trio (T020), the six Wall caps + Garlic 10 (this doc), the perk
caps 1/100/1/25/2/1/8/10/32 (T011), the bot caps 25/25/25/25/5/20/20/20 (T015), `Card Mastery` 9 (T012), the twelve
module caps (T010) and the BC caps (T014) — all re-add unchanged.

**The two-line `Target Priority` ladder (printed, `wiki/guide/target-priority`, 2026-11-01).** Gate **Tier 4 W150**
(the T019 milestone row), **2** levels ✓ the cap table: **L1** `2d 0h 0m` / **1 000 000** coins, **L2** `8d 0h 0m` /
**1.00 B**. The time column is **hand-set** (a **×4** step, not the ×1.15 of §“The clock laws”), so read both cells rather
than extrapolating. Behaviour is printed too: **L1** = choose **one** enemy type to focus, others by closest; **L2** = a
full priority **sort** of all types, including a `Closest` entry and, only if Spotlight is unlocked, a `Spotlight` entry.
Since v29 the list is **drag-and-drop** reorderable. Cheap (≈1 B coins for both levels) and it is the only
targeting control the Guardian does *not* honour (T023 §5).

### The UW-category lab ladders — a third clock shape, and a brutal knee (Rev 14)

Source: the lab tables on `wiki/uw/golden-tower`, `wiki/uw/black-hole`, `wiki/uw/death-wave` (all 2026-11-01). These pages
print each line as `Level / Time / Cost / Value`, and both numeric columns are **per level** (H050 again): the ratio test
settles it, e.g. the DW line’s costs are exactly geometric at **×2.25** per level and its times at **×1.2544**, which a
cumulative column cannot produce.

| Line (as printed) | Levels | Value law | Σ coins | Σ time |
|---|---|---|---|---|
| `Golden Tower Bonus` | 25 | **+0.15** / level ⇒ **+3.75** | **124.85 B** | **466.57 d** |
| `Golden Tower Duration` | 20 | **+1.0 s** / level ⇒ **+20 s** | **34.39 B** | **214.06 d** |
| `Black Hole` (×-line) | 20 | **0.5 n + 1** ⇒ ×1.5 at L1 … **×11** at L20 | **91.92 B** | **214.05 d** |
| `Death Wave` (×2.25 line) | 10 | **+1.00** / level ⇒ **10** | **265.93 T** | **283.23 d** |
| single-level unlocks | 1 | `Unlocked` | **15 B** / **550 B** | **17 d 8 h 40 m** / **28 d 22 h 27 m** |

**Three facts that only the side-by-side columns show.**

1. **Sibling lines are offset, not rescaled.** Over the ten levels the three pages share, `DW(n) = GT(n) − 750 000` for all
   **10** cells ✓ and `BH(n) = GT(n) + 19 000 000 + 500 000·(n − 1)` ✓ (the constant and the linear term are the whole
   difference). The time columns match the same way (`DW = GT − 20 h` per level). So one printed ladder prices most UW labs:
   take the line’s **level-1 base** and add the shared growth, then the line’s own linear term.
2. **The knee is at level 10, and it is extreme.** GT’s 25-level bonus line costs **608.03 M** coins for its first ten
   levels = **0.5 %** of the 124.85 B full-line bill while delivering **40 %** of the value steps (10 of 25); the same split
   holds for time (**882.7 h** of **11 197.6 h** = 7.9 %). Levels 11–25 cost **124.24 B** for the remaining 15 steps:
   the per-level price runs **277.37 M** (L10) → **8.84 B** (L20) → **26.19 B** (L25). Buy the first ten, then leave the
   line — this is the same knee-first rule as §3, now measured on the UW category.
3. **The single-level unlocks are a different order of magnitude** (**15 B** and **550 B** coins, 17.4 d and 28.9 d) and
   they gate whole mechanics, so they belong in the queue *as* a level, not as a stretch goal — one slot, one mechanic.

#### The nine-weapon census — six sequences price every multi-level UW lab (Rev 15)

All nine `wiki/uw/<name>` pages were pulled together and their `Level / Time / Cost / Value` tables parsed (2026-11-01;
**39** such tables across the nine pages, the rest being 1-level unlock rows or the `UW+ Cost Table`). Every multi-level
line sampled (≥ 10 levels each) belongs to **one of six printed sequences**, and five of them are exact offsets of another —
so one printed ladder prices most of the category. Identification is by the line's own **Value** column, which is what the
player sees in the `Lab` panel.

| Seq. | L1 cost | Per-level law (cost / time) | Σ coins (printed length) | Σ time | Lines observed |
|---|---|---|---|---|---|
| **L-I** | 1 000,000 | printed growth (ratios 1.31 → 1.22) | **124.85 B** (25 lv) | **466.57 d** | GT Bonus (+0.15/lv), GT Duration (+1 s/lv) |
| **L-II** | 250,000 | **= L-I − 750 000** / **= L-I − 20 h** | **124.84 B** (25 lv) | **445.73 d** | DW, CL ×2, ILM ×2, CF, SM (+200 000 + 50 000 n) |
| **L-III** | 250,000 | own sequence / **time = L-I − (15 + 5n) h** | **116.24 B** (30 lv) | **825.44 d** | CF ×2 (identical), SM, SM (+550 000), PS ×3 |
| **L-IV** | 100.00B | **×1.5** / **×1.12** | **38.34q** (30 lv) | **2011.11 d** | CL ×2, PS ×2 |
| **L-V** | 100.00B | **×2.25** / **×1.2544** | **265.93 T** (10 lv) | **283.23 d** | DW (the ×-line) |
| **L-VI** | 1.00q | **×2.05** / **+ 400 h** (arithmetic) | **1247.44q** (10 lv) | **916.67 d** | ILM (5 s → 50 s) |
| 20 M-family | 20,000,000 | own sequence (ratios 1.07 → 1.74) | **91.92 B** (20 lv) | **214.05 d** | BH ×-line (1.5x…11x), Spotlight |

**The five offset laws, with the printed cells as the check** (all errors are 0 on the printed range):

```
L-II(n)   = L-I(n)   - 750 000            (12/12 cost cells)   ;  time = L-I(n) - 20 h   (25/25)
SM line   = L-II(n)  + 200 000 + 50 000 n (12/12)
SM line   = L-III(n) + 550 000             (15/15)
Spotlight = 200 000 000 + (L-I(n) - 1 000 000)                  (12/12)
L-V(n)    = L-IV(2n - 1)     both columns  (10/10 cost, 10/10 time)
```

and the same for the clock columns: `L-III time(n) = L-I time(n) − (15 + 5n) h` (**10/10** exact), Spotlight's first line
runs **120 h** above L-I per level, its second line is L-I's clock column unchanged. The practical consequence is a lookup
sheet: read a line's level-1 price off the panel, pick its family, and the whole bill and clock follow.

**The knee, family by family** — the same test as fact 2 above (first half of the levels vs the whole printed line):

| Seq. | Σ coins | first 10 lv | first-half share of the **bill** | share of the **value steps** |
|---|---|---|---|---|
| L-I (25 lv) | 124.85 B | 608.03 M | **0.5 %** | 40 % |
| L-II (25 lv) | 124.84 B | 600.53 M | **0.48 %** | 40 % |
| L-III (30 lv) | 116.24 B | 287.47 M | **0.25 %** | 33 % |
| L-IV (30 lv) | 38.34q | 11.33T | **0.03 %** | 33 % |
| L-VI (10 lv) | 1247.44q | 33.53q (5 lv) | **2.7 %** | 50 % |

so across four independent price shapes the first half of a line is **0.03–2.7 %** of its bill while carrying a third to a
half of its value. That is the strongest single reason to hold every UW line at **level 10** in the mid game: on L-IV the
per-level price runs **3.84T** at L10 → **221.68T** at L20 for the same **+3 %** step that level 1 costs **100.00B**.

### Appendix A — the named lab ledger: all 39 UW lab tables priced (Rev 16)

Every lab table on the nine pages, named from each page’s own section heading (`Labs - <name>`), with the family it follows
and its bill summed over its **printed** levels. `1 d = 24 h`; the sums use the printed cells, so 3-significant-digit prints
from ~level 13 make the big numbers ±0.5 %.

| Weapon | Lab line (printed name) | Seq. | Levels | Σ coins | Σ clock |
|---|---|---|---|---|---|
| Golden Tower | `Golden Tower Bonus` | L-I | 25 | 124.85B | 466.6 d |
| Golden Tower | `Golden Tower Duration` | L-I | 20 | 34.39B | 214.1 d |
| Death Wave | `Death Wave Health` | L-II → own at L11 | 30 | 4.40B (L1–19) | 165.7 d |
| Death Wave | `Death Wave Coins Bonus` | L-II | 20 | 34.38B | 197.4 d |
| Death Wave | `Death Wave Cells Bonus` | ×1.5 / ×1.12 @ 1.00B | 20 | 6.65T | 233.5 d |
| Death Wave | `Death Wave Damage Amplifier` | L-IV | 30 | 38.34q | 2011.1 d |
| Death Wave | `Death Wave Armor Stripping` | L-V | 10 | 265.93T | 283.2 d |
| Black Hole | `Black Hole Damage` | L-I + 19 M + 0.5 M·n | 10 | 820.53M | 36.8 d |
| Black Hole | `Black Hole Coin Bonus` | 20 M-family | 20 | 92.00B | 214.1 d |
| Black Hole | `Extra Black Hole` | unlock | 1 | 15.00B | 17.36 d |
| Black Hole | `Black Hole Disable Ranged Enemies` | unlock | 1 | 550.00B | 28.94 d |
| Chrono Field | `Chrono Field Duration` | L-III | 30 | 116.24B | 825.4 d |
| Chrono Field | `Chrono Field Damage Reduction` | unlock | 1 | 750,000 | 0.69 d |
| Chrono Field | `Chrono Field Reduction %` | L-III | 30 | 116.24B | 825.4 d |
| Chrono Field | `Chrono Field Range` | L-II | 20 | 34.38B | 197.4 d |
| Chain Lightning | `Chain Lightning Shock` | unlock | 1 | 950,000 | 1 d |
| Chain Lightning | `Shock Chance` | L-II | 30 | 356.52B | 916.1 d |
| Chain Lightning | `Shock Multiplier` | L-II | 14 | 4.32B | 65.2 d |
| Chain Lightning | `Chain Thunder` | L-IV | 30 | 38.34q | 2011.1 d |
| Chain Lightning | `Lightning Amplifier-Scatter` | L-IV | 30 | 38.34q | 2011.1 d |
| Inner Land Mines | `Inner Mine Blast Radius` | L-II | 20 | 34.38B | 197.4 d |
| Inner Land Mines | `Inner Mine Rotation Speed` | L-II | 20 | 34.38B | 197.4 d |
| Inner Land Mines | `Inner Mine Stun` | unlock | 1 | 250.00M | 13.90 d |
| Inner Land Mines | `Inner Land Mine - Chrono Jump` | L-VI | 10 | 1247.44q | 916.7 d |
| Smart Missiles | `Missile Despawn Time` | L-III | 20 | 12.94B | 157.8 d |
| Smart Missiles | `Missile Amplifier` | L-II + 200 k + 50 k·n | 25 | 124.86B | 445.7 d |
| Smart Missiles | `Missiles Explosion` | unlock | 1 | 900,000 | 0.93 d |
| Smart Missiles | `Missiles Radius` | L-III + 550,000 | 20 | 12.95B | 173.5 d |
| Smart Missiles | `Missile Barrage` | unlock | 1 | 1,500,000 | 6.67 d |
| Smart Missiles | `Missile Barrage Quantity` | own (6 lv) | 6 | 59.01M | 19.8 d |
| Smart Missiles | `Recharge Missile Barrage` | own (7 lv) | 7 | 14.43T | 120.0 d |
| Poison Swamp | `Swamp Radius` | L-III | 20 | 12.94B | 157.8 d |
| Poison Swamp | `Poison Swamp Stun` | unlock | 1 | 700,000 | 0.83 d |
| Poison Swamp | `Swamp Stun Chance` | L-III | 20 | 12.94B | 157.8 d |
| Poison Swamp | `Swamp Stun Time` | L-III | 20 | 12.94B | 157.8 d |
| Poison Swamp | `Swamp Rend - Basic Enemies` | L-IV | 30 | 38.34q | 2011.1 d |
| Poison Swamp | `Swamp Rend - Additional Enemies` | L-IV | 9 | 7.49T | 123.1 d |
| Spotlight | `Spotlight Missiles` | 200 M + L-I growth | 18 | 22.25B | 243.6 d |
| Spotlight | `Spotlight Coin Bonus` | 20 M-family | 20 | 92.00B | 214.1 d |
| **All nine weapons** | **31 leveled + 8 one-level tables = 39** | 6 shared families | — | — | — |

**Sequence bills at full printed depth** (so any new line is priced from its family + cap):
`L-I` 25 lv **124.85 B / 466.6 d** · `L-II` 30 lv **356.52 B / 916.1 d** (its 20-level prefix = 34.38 B / 197.4 d) ·
`L-III` 30 lv **116.24 B / 825.4 d** (20-level prefix 12.94 B / 157.8 d) · `L-IV` 30 lv **38.34q / 2011.1 d** ·
`L-V` 10 lv **265.93 T / 283.2 d** · `L-VI` 10 lv **1247.44q / 916.7 d** · 20 M-family 20 lv **92.00 B / 214.1 d**.

**The eight one-level unlock rows** — cheap in coins, expensive in clock; they are queue slots, not purchases:

`CF Damage Reduction` **750,000 / 0.69 d** · `CL Chain Lightning Shock` **950,000 / 0.995 d** · `PS Poison Swamp Stun`
**700,000 / 0.83 d** · `SM Missiles Explosion` **900,000 / 0.93 d** · `SM Missile Barrage` **1,500,000 / 6.67 d** ·
`ILM Inner Mine Stun` **250.00M / 13.90 d** · `BH Extra Black Hole` **15.00B / 17.36 d** · `BH Disable Ranged Enemies`
**550.00B / 28.94 d**. Sum = **565.25 B** coins over **70.31 d** of clock (mean **8.8 d** per unlock, i.e. each is roughly
0.4 % of a five-slot year — one slot-week each).

**Three shape notes.** (1) `Death Wave Cells Bonus` is a fourth base: **cost ×1.5, clock ×1.12 from 1.00B / 77 h 47 m**,
whose first ten levels re-add to the printed **113.33 B** exactly (printed ratios 1.500 1.500 1.502 1.497 1.500 1.501 1.500
1.500 1.500) — same 1.5/1.12 pair as L-IV, different base. (2) `Death Wave Health` is **two-phase**: levels 1–10 are the L-II
column exactly, and from L11 the costs flatten to a near-linear run (334.6 M → 552.8 M over nine steps, ratios
1.038 → 1.089) while the clock keeps its own near-arithmetic step — treat L11+ as hand-set. (3) `Missile Barrage Quantity`
(6 levels, +5 per level 25 → 50) and `Recharge Missile Barrage` (7 levels, value **decreasing** 1500 → 200, steps
−250 ×4 then −150 ×2) are hand-set both in cost and value; the recharge line’s cost is arithmetic **+500.00B** for its first
four steps (550.00B, 1.05T, 1.55T, 2.05T) then +510B/+510B/+530B.

**Workshop stone side, same pages (for cross-reference with T008 §2).** Each page prints its three workshop tracks with a
`Total` row, and the three totals sum to the page’s prose total on **9 / 9** pages: `Smart Missiles`
**29,661 + 6,966 + 2,550 = 39,177** (Damage 35 / Quantity 15 / Cooldown 16 levels), `Golden Tower`
8,434 + 14,052 + 4,700 = **27,186**, `Chrono Field` 5,530 + 2,910 + 1,506 = **9,946**; the nine pages sum to
**244 542** stones. Inside the first ten printed levels the columns look arithmetic (`+6` for SM Damage, `+16` after `+8` for
the DW / SM / ILM cooldowns) but that breaks beyond level ~10, so price from the `Total` rows. Its `UW+` (`Cover Fire`,
11 levels) prices **300/375/475/600/725/925/1,150/1,450/1,800/2,200/2,650 = Σ 12,650** ✓ matching §1.④.
Two printed caps worth remembering: `Inner Land Mines`’ activation cooldown **hard-caps at 37 s**, and Chain Lightning’s
stone Damage multiplier runs **×2 … ×7,961**.

### Appendix A.1 — the value laws, the L1–10 bills, and the two ladder relations (new, Rev 18)

Same nine pages, same payload (`tools/uw-lab-census.ps1`), this time the **`Value` column** and the **first ten levels**.
All **31** leveled tables: the benefit is arithmetic — `cap = v1 + step × (levels − 1)` reproduces **29/29** numeric value
columns exactly (the two exceptions are text-valued or hand-set, flagged below).

| Weapon | Lab line | Lv | `v1` | step | value at cap | **Σ L1–10 coins** | clock L1–10 | family |
|---|---|---|---|---|---|---|---|---|
| Golden Tower | `Golden Tower Bonus` | 25 | +0.15 | +0.15 | **+3.75** | **608.03 M** | 36.78 d | L-I |
| Golden Tower | `Golden Tower Duration` | 20 | +1.0 s | +1.0 s | **+20.0 s** | **608.03 M** | 36.78 d | L-I |
| Death Wave | `Death Wave Health` | 30 | 525 % | +25 pp | **1 250 %** | **600.53 M** | 28.45 d | L-II → own at L11 |
| Death Wave | `Death Wave Coins Bonus` | 20 | ×1.55 | +0.05 | **×2.50** | **600.53 M** | 28.45 d | L-II |
| Death Wave | `Death Wave Cells Bonus` | 20 | ×1.10 | +0.10 | **×3.00** | **113.33 B** | 56.87 d | ×1.5 / ×1.12 @ 1.00 B |
| Death Wave | `Death Wave Damage Amplifier` | 30 | 6.5 | +1.5 | **50.00** | **11 328 B** | 146.24 d | L-IV |
| Death Wave | `Death Wave Armor Stripping` | 10 | 1.00 | +1.00 | **10.00** | 265.93 T (all 10) | 283.23 d | L-V |
| Black Hole | `Black Hole Damage` | 10 | 0.20 % | +0.20 | **2.00 %** | **820.53 M** | 36.78 d | L-I + 19 M + 0.5 M·n |
| Black Hole | `Black Hole Coin Bonus` | 20 | ×1.50 | +0.50 | **×11.00** | **1.4712 B** | 36.78 d | 20 M-family |
| Chain Lightning | `Shock Chance` | 30 | 3.00 % | +0.50 | **17.50 %** | **600.53 M** | 28.45 d | L-II |
| Chain Lightning | `Shock Multiplier` | 14 | ×1.14 | +0.04 | **×1.66** | **600.53 M** | 28.45 d | L-II |
| Chain Lightning | `Chain Thunder` | 30 | 3 % | +3 | **90 %** | **11 328 B** | 146.24 d | L-IV |
| Chain Lightning | `Lightning Amplifier-Scatter` | 30 | ×1.25 | +1.25 | **×37.5** | **11 328 B** | 146.24 d | L-IV |
| Chrono Field | `Chrono Field Duration` | 30 | 1.00 | +1.00 | **30.00** | **287.47 M** | 19.07 d | L-III |
| Chrono Field | `Chrono Field Reduction %` | 30 | 10.50 % | +0.50 | **25.00 %** | **287.47 M** | 19.07 d | L-III |
| Chrono Field | `Chrono Field Range` | 20 | 3.00 | +3.00 | **60.00** | **600.53 M** | 28.45 d | L-II |
| Inner Land Mines | `Inner Mine Blast Radius` | 20 | 0.10 | +0.10 | **2.00** | **600.53 M** | 28.45 d | L-II |
| Inner Land Mines | `Inner Mine Rotation Speed` | 20 | 0.80 | +0.80 | **16.00** | **600.53 M** | 28.45 d | L-II |
| Inner Land Mines | `Inner Land Mine - Chrono Jump` | 10 | 5 s | +5 s | **50 s** | 1 247.44 q (all 10) | 916.67 d | L-VI |
| Poison Swamp | `Swamp Radius` | 30 | 0.04 | +0.04 | **1.20** | **287.47 M** | 19.07 d | L-III |
| Poison Swamp | `Swamp Stun Chance` | 30 | 7.5 % | +2.5 | **80.0 %** | **287.47 M** | 19.07 d | L-III |
| Poison Swamp | `Swamp Stun Time` | 30 | 1.3 | +0.3 | **10.0** | **287.47 M** | 19.07 d | L-III |
| Poison Swamp | `Swamp Rend - Basic Enemies` | 30 | 3 % | +3 | **90 %** | **11 328 B** | 146.24 d | L-IV |
| Poison Swamp | `Swamp Rend - Additional Enemies` | 11 | text (enemy types) | — | see lab screen | 10.007 B (L1–10) | 164.80 d | L-IV |
| Smart Missiles | `Missile Despawn Time` | 20 | 1 | +1 | **20** | **287.47 M** | 19.07 d | L-III |
| Smart Missiles | `Missile Amplifier` | 25 | ×2.50 | +1.50 | **×38.50** | **605.28 M** | 28.45 d | L-II + 200 k + 50 k·n |
| Smart Missiles | `Missiles Radius` | 20 | 0.35 | +0.05 | **1.30** | **292.97 M** | 26.94 d | L-III + 550,000 |
| Smart Missiles | `Missile Barrage Quantity` | 6 | 25 | +5 | **50** | **59.01 M** (all 6) | 19.81 d | hand-set |
| Smart Missiles | `Recharge Missile Barrage` | 7 | 1 500 | **−250 ×4, then −150 ×2** | **200** | 14.43 T (all 7) | 120.05 d | hand-set, piecewise |
| Spotlight | `Spotlight Missiles` | 18 | 19.00 | **−1.00** | **2.00** (= `20 − n`) | **2.598 B** | 86.78 d | 200 M + L-I growth |
| Spotlight | `Spotlight Coin Bonus` | 20 | ×1.10 | +0.10 | **×3.00** | **1.4713 B** | 36.78 d | 20 M-family |

**The beginner's number.** The **18 labs whose level-1 price is ≤ 1 M coins** (the four 250 K–1 M families) cost, for their
**first ten levels each**, Σ **8.10 B coins** and **462.33 d** of base slot time ⇒ with five slots and the ×3.725 speed stack
≈ **24.8 d of real time**. Split: family **L-II** (7 labs × **600.53 M** / 28.45 d) = 4.204 B + 199.2 d, family
**L-III** (6 labs × **287.47 M** / 19.07 d) = 1.725 B + 114.4 d, and the six offset/onhand variants = 2.173 B + 148.8 d.
Everything else in the layer (the 100 B, 1 B, 200 M and q bases) is **≥ 20× one cheap lab**, so the ten-level pass over the
cheap tier is the whole early UW-lab plan.

**Two ladder relations, both verified from the printed cells.**
① **L-II vs L-III differ by exactly 5 h of clock per level.** Printed per-level times: L-II `8.35 · 8.53 · 9.03 · 9.90 ·
11.28 h` vs L-III `3.35 · 3.53 · 4.03 · 4.90 · 6.28 h` ⇒ difference `5, 5, 5, 5, 5` h on all five steps, so over L1–L10 the
gap must be `5 h × 45 = 225 h = 9.375 d`, and the printed sums differ by `28.45 − 19.07 = ` **9.38 d** ✓ (a reading-independent
check: it holds for the per-level and the cumulative reading alike).
② **A lab is a family plus an offset.** `Missiles Radius` (base 800,000) minus L-III (base 250,000) = **550,000 on every one
of the six compared levels** (= the base difference); `Missile Amplifier` (base 500,000) minus L-II =
**250 k, 300 k, 350 k, 400 k, 450 k, 500 k** = `200 000 + 50 000·n` exactly — the same “constant, or constant + linear”
offset pattern the workshop lines show (T020 §1.7).

**Coins per printed point, at the L1–10 pass** (`Σ L1–10 ÷ (step × 10)`), for the cheap tier only — the ranking to use when
two labs compete for one slot: `Death Wave Health` **2.40 M**/pp · `Swamp Stun Chance` **11.50 M**/pp · `Swamp Radius`
23.96 M/unit · `Chrono Field Duration` **28.75 M**/s · `Missile Despawn Time` 28.75 M/unit · `Chrono Field Reduction %`
57.49 M/pp · `Golden Tower Bonus` 405.35 M/unit · `Shock Multiplier` 1 501 M/unit · `Black Hole Coin Bonus` 294.25 M/unit ·
`Spotlight Coin Bonus` 147.13 M/unit · `Shock Chance` 120.11 M/pp · `Chrono Field Range` 20.02 M/unit ·
`Inner Mine Rotation Speed` 75.07 M/unit · `Inner Mine Blast Radius` 600.53 M/unit · `Death Wave Coins Bonus` 1 201 M/unit ·
`Golden Tower Duration` 60.80 M/s · `Missiles Radius` 585.93 M/unit · `Missile Barrage Quantity` 1.97 M/unit.
The points are different units, so read the pair (M per pp) and (M per multiplier unit) as the two comparable groups: within
**percentage-point** lines the order is DW Health ≪ PS Stun Chance < CF Reduction % < Shock Chance < Chain Thunder;
within **multiplier** lines `Spotlight Coin Bonus` (147 M/unit) beats `Black Hole Coin Bonus` (294 M) and `Missile Amplifier`
(403 M/unit) beats `Shock Multiplier` (1 501 M).

**Corrections to Appendix A from today's pull** (2026-11-02 payload; the table above is the corrected ledger):
`Swamp Radius`, `Swamp Stun Chance`, `Swamp Stun Time` are **30-level** lines (**116.24 B / 825.4 d** at cap) — Appendix A's
“20 lv / 12.94 B” is their **20-level prefix** (verified: the L-III 20-level prefix *is* 12.94 B, which is what the 20-level
`Missile Despawn Time` sums to); `Swamp Rend - Additional Enemies` prints **11** rows today (Rev 16 recorded 9) with its 11th
level at **1.00 Q / 83 d 8 h**, so the line's bill is **1.01 Q**, not 7.49 T; and `Death Wave Health` sums to **15.79 B** over
its 30 printed levels (Appendix A's 4.40 B is the L1–19 prefix).

### Appendix A.2 — the grand totals of the 39 UW lab tables, and which currency binds (new, Rev 24)

Same 39 tables, now summed once, using **Appendix A.1's corrected** cells (`Swamp Radius` / `Swamp Stun Chance` /
`Swamp Stun Time` at their 30-level bills, `Swamp Rend - Additional Enemies` at **1.01 Q**, `Death Wave Health` at
**15.79 B**). Script: `tools/lab-summit2.ps1` (+ `tools/lab-summit-d.ps1` for the two ratios).

| Bill | Value | In income units |
|---|---|---|
| **Σ coins, all 39 tables** | **2.4111 Q** (= **2 411.09 q**) | **3 444 d = 9.43 y** at 700 T coins/day |
| **Σ base slot clock, all 39** | **18 165.95 d** = 49.8 y single-slot | **9.95 y** on five slots · **6.64 y** with the ×1.5 boost · **975.4 d = 2.67 y** with the ×3.725 speed stack |
| **Σ cells to run it all at ×1.5** | **4.3598 M** cells (`145 328` skipped h × 30) | **4 360 d = 11.94 y** at 1 000 cells/day · 2 422 d at 1 800/day |

**Three closures hold, so the totals are reading-independent.** (1) line-by-line Σ = **2.4111 Q / 18 165.95 d**;
(2) Σ of the nine **per-weapon** subtotals below = the same pair, 39/39 lines; (3) the cheap split + the q-scale split =
the same pair again. One printed lock re-adds: the eight one-level unlock rows give **565.255 B / 70.32 d** against the
page's **565.25 B / 70.31 d** — a **4.8 M** and **0.01 d** residual, i.e. pure print rounding.

| Weapon | Lines | Σ coins | Σ clock | years on five slots |
|---|---|---|---|---|
| Black Hole | 4 | 657.82 B | 297.2 d | 0.16 |
| Golden Tower | 2 | 159.24 B | 680.7 d | 0.37 |
| Chain Lightning | 5 | 76.68 q | 5 004.5 d | **2.74** |
| Inner Land Mines | 4 | 1.2474 Q | 1 325.4 d | 0.73 |
| Death Wave | 5 | 38.61 q | 2 890.9 d | 1.58 |
| Smart Missiles | 7 | 14.58 T | 924.4 d | 0.51 |
| Chrono Field | 4 | 266.86 B | 1 848.89 d | 1.01 |
| Spotlight | 2 | 114.25 B | 457.7 d | 0.25 |
| Poison Swamp | 6 | 1.0483 Q | 4 736.26 d | **2.60** |
| **Σ** | **39** | **2.4111 Q** | **18 165.95 d** | **9.95** |

**Law A — the layer has a two-tier price.** Six lines carry **99.99 %** of the coins (**2.4108 Q**) and 50.7 % of the
clock; the other **33 lines together cost 289.2 T = 0.41 days** of coin income. Inside the six: `Inner Land Mine - Chrono
Jump` alone is **51.74 %** of the whole layer (**1 247.44 q**, = **8.134×** the four `L-IV` lines put together, which are
**153.36 q**), and `Swamp Rend - Additional Enemies` adds **1.01 Q** (**0.81×** Chrono Jump). Purchase order follows from
that: **exhaust the 33 cheap lines → the four `L-IV` lines (38.34 q each) → then the two Q-scale singles, Chrono Jump last.**

**Law B — the binding currency flips between the two tiers.** Cells are priced at **30 per skipped hour** at ×1.5:

| Group | coin days (÷ 700 T/day) | cell days (÷ 1 000/day) | binds | by |
|---|---|---|---|---|
| whole layer | 3 444 d (9.43 y) | 4 360 d (11.94 y) | **cells** | ×1.27 |
| the 33 cheap lines | **0.413 d** | 2 150 d | **cells** | **×5 203** |
| the six q-scale lines | 3 444 d | 2 210 d | **coins** | ×1.56 |

Read: for the cheap tier the coins are a rounding error and *only* slot-hours matter ⇒ boost those lines with cells
(×1.5, auto-queued) and never wait on them; for the six q-scale lines the coin price is what makes them late-game, so let
them run unboosted overnight — a 2 210-day cell bill buys nothing that the clock would not have covered.

### Appendix B — the running bill of every lab layer priced end to end (new, Rev 25)

`tools/lab-summit-e.ps1` adds the layers this doc prices line by line, so a reader can see how far the census is covered
and what the covered part costs. Only layers whose **every** line carries a printed `Σ` are included.

| Layer (source section) | Lines | Σ coins | Σ clock |
|---|---|---|---|
| `A` the 39 UW lab tables (Appendix A.2) | 39 | **2.4111 Q** | 18 165.95 d |
| `B` enemy-stat T9–T13 band (§enemy-stat layer) | 13 | 383.113 T | 15 127.87 d |
| `B2` the T19 trio: `Vampire`/`Ray`/`Scatter` Health+Attack | 6 | 697.5 q | 30 130.08 d |
| `C` the 8 assist module labs (T19 W50) — **unit corrected to Q at Rev 36** | 8 | **930.00 Q** | 40 174.2 d |
| `D` the Second Wind pair | 2 | 14.4301 T | 128.75 d |
| `E` `Garlic Thorns` | 1 | 1.35 M | 25.45 d |
| `F` the two `* Level Skip` labs | 2 | 1.49 T | 260.62 d |
| `G` `Super Tower Bonus`, printed **30** levels (restated at Rev 31 from the 10-level print) | 1 | **12.304 T** | 897.30 d |
| `H` the **Main Research** category (§Main Research, Rev 27) | 15 | **826.445 q** | 16 806.0 d |
| `I` the **Attack Research** category (§Attack Research, Rev 28) | 9 | 25.594 T | 124 747.5 d |
| `J` the **Defense Research** category (§Defense Research, Rev 29) | 15 | **187.228 T** | 15 050.9 d |
| `K` the **Utility Research** category (§Utility Research, Rev 30) | 10 | **8.906 T** | 10 085.4 d |
| `L` the six newly priced **Card Research** lines (§Card Research, Rev 31) | 6 | **30.848 T** | 1 185.5 d |
| `M` the **32 mastery labs** — 32 × the printed 50.00 q / 562 d 12 h (§Card Research, Rev 31) | 32 | **1.600 Q** | 18 000 d |
| `N` the **Perk Research** category (§Perk Research, Rev 32) | 9 | **4.337 329 q** | **183 173.9 d** |
| `O` the **Bot Research** category — 2 shared columns + 1 exact-law line (§Bot Research, Rev 33) | 10 | **3.235 5 q** | **6 605.8 d** |
| `P` the **Battle Condition** category (5 lines) + the two `Boss` lines (§Battle Condition …, Rev 34) | 7 | **2 307.577 5 Q** | **11 453.0 d** |
| `Q` the twelve named **Module** labs (§Module named labs, Rev 35) | 12 | **0.718 3 Q** | **5 341.4 d** |
| **Σ priced** | **191 distinct = 100 % of the census** *(the rows sum to 197: layer `C` carries 8 rows where the Module category prints 2, so +6; `Garlic Thorns` sits in `E` only, so `J` carries 15 of Defense’s 16)* | **3 243.839 3 Q** *(with layer `C` at 930.00 Q, Rev 36)* | **497 359.8 d** |

In income units **(the Rev 25 72-line bill)**: **coins 5 770 d = 15.80 years** at 700 T/day · **clock 104 035.3 d** =
285 y single-slot = **57.01 y** on five slots = **15.3 y** with the ×3.725 stack · the ×1.5 boost on the whole covered part
is **2.4968 × 10⁷ cells** = **24 968 d ≈ 68 years** of cell income ⇒ **cells bind by ×4.33** over the coins.

Scaled to the **closed census (191 lines, layer `C` at the corrected Q unit)** the same two conversions give **coins
4 634 056 d = 12 687.4 y** at 700 T/day and **clock 497 359.8 d = 1 361.7 y** single-slot = **272.3 y** on five slots =
**73.1 y** with the ×3.725 stack. **The binding currency flipped at Rev 34:** up to layer `O` the coins were a rounding
error against the clock (25.32 y vs 1 315.7 y ⇒ cells bound); the five BC labs put 2 307.577 5 Q on the table, so **coins
now bind by ×9.32 against the single-slot clock and ×46.6 against the five-slot clock** — a queue decision became a
savings decision. Layer `Q` moves both figures by only **+0.03 %** coins / **+1.07 %** clock; the Rev-36 **unit
correction** multiplies the coin side by **×1.403** (2 314.769 3 Q → 3 243.839 3 Q) and the bind from ×6.65 to **×9.32**.

**Three facts the table produces.**
1. **Coverage is 191 / 191 census lines = 100 %** (the 32-mastery-lab reading; **171 / 171** on the 12-lab reading, H063).
   Layers `H`–`Q` were added from the fandom per-line lab tables at Rev 27–35 and every one of the eleven categories now
   carries a line-by-line Σ: `Main`, `Attack`, `Defense`, `Utility`, `UW`, `Card` (named + the mastery labs), `Perk`,
   `Bot`, `Enemies` (the enemy-stat band + the two `Boss` lines), `Battle Condition` and `Module` (the 8 assist labs as
   layer `C`, the 12 named labs as layer `Q`). The residual gaps are **device reads only** (H063, H062, H061, H064) plus
   the printed `Primary Module Bonus` row, which the census does not count.
2. **The T19-band returns as the second pole: the fourteen lines** (`B2` + `C`, the `0.25 Q × n` / `n × 15 551 min`
   arithmetic ladders) were **40.29 %** of the covered coins and **67.6 %** of the covered clock **inside the 72-line
   bill**; with `H`–`Q` they are **28.7 %** coins and **14.1 %** clock once layer `C` is read in Q (the mastery-lab block
   alone takes **0.05 %** of the coins and **3.6 %** of the clock — dwarfed by the five BC labs, §BC/Boss finding 1), because `H`’s single
   `Enhancement Coin Discount` line (826.445 q) and `I`’s clock (124 747.5 d, 94.47 % of it in the two Super Crit lines)
   and `J`’s single `Wall Fortification` line (174.666 T) all became major contributors. Because both columns of the T19 band are arithmetic there,
   their clock grows *proportionally* with their coins — unlike the geometric `L-I…L-VI` families, which front-load coins.
   Practical effect: a T19-band line is the one place where the cell boost and the coin price are comparable, so the
   ×1.5 boost is worth most there.
3. **Everything below the T19 band is a rounding error.** The 19 covered lines that are not in `A`/`B2`/`C` together cost
   **399.15 T = 0.57 days** of income (0.01 % of the bill) while taking **15 564 d** of clock — the same knee as
   Appendix A.2’s “33 cheap lines”, now seen across layers. The **whole Attack layer is the extreme case**: 25.594 T of
   coins (**0.0005 %** of the bill, 0.051 % of one 500 T income day) for **124 747.5 d** of clock, i.e. it is the layer
   whose price is *entirely* clock-bound (§Attack Research, finding 7). The **Defense layer** (15 lines) is the mirror
   image: **187.228 T** of coins = **0.0038 %** of the bill for **5.8 %** of its clock, with **93.29 %** of that
   layer’s coins in the single 60-level `Wall Fortification` line (§Defense Research, finding 6). The **Utility layer**
   (10 lines, §Utility Research) splits the same way twice over: **99.98 %** of its coins sit in the three identical
   `Recovery Package …` lines while **57.3 %** of its clock sits in the four cheap 99-level workshop-increment lines —
   so the four lines that actually multiply coin income are the cheapest per unit in the category. The **Perk layer** `N`
   is that split taken to its extreme: **0.07 %** of the bill’s coins (**4.337 329 q**) for **38.65 %** of its clock, with
   **96.5 %** of the category’s clock inside the single 100-level `Waves Required` line (§Perk Research, finding 1) — the
   most clock-bound layer in the table, and the reason the bill’s clock grew **+63.1 %** while its coins moved by four
   thousandths of a Q. The **Bot layer** `O` is the opposite shape (**0.05 %** of the coins for **1.37 %** of the clock):
   its five `* Cooldown` lines are the cheapest per clock-day in the table — **9.041 T** for **2 883.4 d**, i.e.
   **3.136 × 10⁹** coins per queue-day, against **7.787 × 10¹¹** for the four `* Duration` lines and **1.843 × 10¹²** for
   `Burn Stack` (**×588** dearer per day) — so the cooldown labs are a pure queue decision (§Bot Research, finding 6).

### The enemy-stat layer, ladder by ladder (Rev 11)

Source: `wiki/enemy/common-enemy-labs`, `fast-enemy-labs`, `protector-labs`, `vampire-labs`, `ray-labs`, `scatter-labs`
(2026-11-01 / one page 2026-07-29), and (Rev 22) `ranged-enemy-labs` + `tank-enemy-labs` (2026-11-01). Every **value**
column is `step × n`, and nineteen of the twenty **30-level lines share one time ladder** (`2d 7h 33m → 161d 9h 28m`,
Σ **106 785 720 s = 1 235.95 d**), so one line's slot bill is a constant — the sole exception is `Ranged Enemy Range`
(its own ladder — the shared one scaled ×1.00808, see note 5):

| Lab (gate) | Lv | Value law | Cap | Price ladder | Σ coins | Σ time | coins / pp |
|---|---|---|---|---|---|---|---|
| `Common Enemy Health` / `Attack` | **T9 W10** | `−0.40 % × n` | **−12.00 %** ✓ “up to -12 %” | 20.00 B → 2.40 T | **21.117 T** | 1 235.95 d | **1.76 T** |
| `Fast Enemy Health` / `Attack` | **T9 W20** | `−0.40 % × n` | −12.00 % | 30.00 B → 2.70 T | 25.768 T | 1 235.95 d | 2.15 T |
| `Fast Enemy Speed` | **T9 W300** | `−0.40 % × n` | −12.00 % | 60 B → 3.60 T | 39.716 T | 1 249.83 d | 3.31 T |
| `Ranged Enemy Health` / `Attack` · `Tank Enemy Health` / `Attack` | **T9 W20** | `−0.40 % × n` | −12.00 % | 30.00 B → 2.70 T (same cells as the Fast pair ✓) | **25.768 T** each | 1 235.95 d | 2.15 T |
| `Ranged Enemy Range` | **T13 W80** | **`−0.50 % × n`** | **−15.00 %** | **`1.0 T × 1.4^(n−1)`**: L30 = **17 286.7 T** (= 1.4²⁹ ✓) | **≈ 60.50 T** | **80.99 d** (per-level constant **233 280 s**; the printed ladder runs **2d 16h 47m → 80d 23h 54m** — the same shape as the shared ladder, scaled ×**1.00808**, see note 5) | **4.03 T** |
| `Protector Health` / `Radius` | **T9 W20** | `−0.30 % × n` | −9.00 % | 40.00 B → 3.29 T | 34.767 T | 1 235.95 d | 3.86 T |
| `Protector Damage Reduction` | **T9 W20** | `−0.30 % × n` | **−6.00 %** (20 lv) | 80.00 B → 1.77 T | 16.521 T | 272.60 d | 2.75 T |
| `Boss Health` / `Boss Attack` | **T9 W20** | `−0.30 % × n` ✓ §four-more-ladders | −9.00 % | (per panel) | — | — | — |
| `Vampire` · `Ray` · `Scatter` Health + Attack | **T19 W60** | `−0.40 % × n` | −12.00 % | `0.25 q × n`: **0.25 q → 7.50 q** | **116.25 q** each | **5 021.68 d** each | **9.69 q** |
| `Lightning Amplifier - Scatter` | **T16 W60** | `1.25 × n` ⇒ **×37.5** | ×37.5 | `100 B × 1.5^(n−1)`: 100.00 B → **12.78 q** (×1.5 ✓ 29/29) | **38.344 q** | **2 011.11 d** | 1.02 q per ×1 |

Four reads that matter for the queue:

1. **The cheap band is T9, the expensive band is T19 — by ~5 500× per point.** One `Common Enemy Health` point costs
   **1.76 T** coins, one `Vampire`/`Ray`/`Scatter` point **9.69 q** (= 9 688 T). With 6 pp of gate difference (T9 → T19)
   that is the single largest price gap in the lab system, and it is why the T19 trio is a *far-future* line below T11.
2. **The T19 trio is fully arithmetic**: cost `0.25 q × n` (Σ = `0.25q × 465 = ` **116.25 q** ✓) and time `n × t₁` with
   `t₁ = 10 d 19 h 11 m = 933 060 s` (Σ = `933 060 × 465 = ` **433 872 900 s = 5 021.68 d** ✓) — the `n · t₁` time shape
   of T021's Echo labs, here paired with an *arithmetic* cost instead of ×2.25.
3. **`Lightning Amplifier - Scatter` is the cleanest closed form in this doc**: value `1.25 × n` ⇒ **×37.5**, cost
   `100 B × 1.5^(n−1)` ⇒ L30 = **12.78 q** ✓ (the printed row) and Σ = `100 B × (1.5^30 − 1)/0.5 = ` **38.34 q** ✓,
   time `720 000 s × 1.12^(n−1)` ⇒ L30 = **19 259 940 s = 222 d 21 h 59 m** ✓ and Σ = `720 000 × (1.12^30 − 1)/0.12 = `
   **173 759 640 s = 2 011.11 d** ✓ — a **×1.5 cost / ×1.12 time** pairing, i.e. the cost family of the main lines with a
   *slower* time constant than the ×1.15 of the bot/perk family (new constant for the shape table).
4. **The Protector pair's price ladder starts at 40 B, its Damage-Reduction line at 80 B** (double), which is the printed
   reason the 20-level line is the priciest-per-point of the T9 group after `Fast Enemy Speed`.
5. **`Ranged Enemy Range` is a fifth shape-pair, with two new constants** (new, Rev 22): the only line whose value step is
   **−0.50 %** (cap **−15.00 %** — one third deeper than the −12 % standard, printed in the page's own `Good to know`:
   “Basic, Fast, Tank and Ranged Health and Attack each reach −12 %; Fast Enemy Speed −12 %; **Ranged Enemy Range −15 %**”),
   its cost is geometric at **×1.4/level** (`1.0 T × 1.4^(n−1)`, L30 = 17 286.7 T = 1.4²⁹ ✓ — a new ratio constant beside
   ×1.5 and ×1.12, and every intermediate cell re-adds: L24 = 2 295.9 = 1.4²³ ✓) and its time is arithmetic
   (per-level constant **233 280 s = 2d 16h 48m**; the printed first difference L1→L2 is exactly 233 280 s, the rest sit
   within minute-truncation) ⇒ **Σ = 60.50 T coins / 1 245.94 d**, i.e. **4.03 T per pp** — the priciest per point of all
   T9–T13 lines, but the only enemy line that also shortens the *incoming fire distance*. Its time ladder is the shared
   one scaled by exactly **1.00808** (6 998 040 / 106 785 720 = 1.008080 = 80d 23h 54m ÷ 161d 9h 28m, two independent
   divisions agreeing), so queue behaviour is identical to the T9 pair. The four `Health`/`Attack` lines of the Ranged and
   Tank types print cell-for-cell identical ladders to the Fast pair (same **25.768 T** / 1 235.95 d bill, L30 price
   **2.70 T** = 30 × 1.1²⁹ ⇒ a **×1.10** cost ratio for the whole 30 B family), and their gates are the same **T9 W20**.
   The page also prints a mechanic worth knowing: these labs **break the fixed stat ratios** between enemy types (boss
   health is normally a fixed multiple of basic health — after researching the basic line, that multiple no longer holds).

**The two `* Level Skip` labs' steps are now printed too** (`wiki/workshop/enemy-level-skip`): **20** levels, value
`0.10 × n` ⇒ **+2.00** at L20, Σ **0.745 T** coins / **11 258 700 s = 130.31 d** per line — that is
**373 B coins per point**, cheaper per point than *every* enemy-stat line above; full ledger in
[T024](T024-enemy-level-skip-ledger.md).

### The wave laws: 0.9 per tier, and what it predicts for Elite Cells (Rev 12)

Source: `wiki/enemy/enemies` (16 tables) and `wiki/enemy/elite-enemies`, both last verified **2026-11-01**. Both print the
same grid: rows are the **spawn chance** of an Elite, columns are **T1 … T21/T24**, cells are the **wave** at which that
chance begins. Two things fall out:

**① The chance ladder (T1).** `0 %` at W0 · **0.33 %** at W500 · **1.33 %** at W1 000 · **3 %** at W1 500 · **5 %** at
W2 000 · **8 %** at W3 000 · **12 %** at W4 000 · **16 %** at W5 000 · **21 %** at W6 000 · **27 %** at W7 000 ·
**33 %** at W8 000. A wave inside a band pays that band’s chance (a step function, not a curve).

**② Tier compresses the wave axis by exactly 0.9.** `wave(chance, tier T) = base(chance) × 0.9^(T − 1)`. All **10** non-zero
rows re-add at T15 (`round(base × 0.9^14)`: 114 / 229 / 343 / 458 / 686 / 915 / 1 144 / 1 373 / 1 601 / 1 830 — every cell
✓), and the printed 0.33 % ladder re-adds for **15/15** tiers (`500 → 450 → 405 → 365 … 114`). Consequence: **a tier-14 run
reaches the 33 % elite band at about W1 830, a tier-1 run not until W8 000** — the same 4.4× head start that makes
T14+ the cell tier (§Elite Cell income).

**③ The predicted elite count** (step-function sum × the printed per-tier average from §Elite Cell income):

| Tier | Depth | Expected elites | × printed avg cells | ≈ cells/run |
|---|---|---|---|---|
| T1 | W1 000 | 1.65 | 1 | **2** |
| T5 | W1 000 | 5.92 | 3 | **18** |
| T10 | W1 000 | 20.28 | 5.5 | **112** |
| T11 | W1 000 | 23.26 | 6 | **140** |
| T13 | W1 000 | 32.92 | 7 | **230** |
| T14 | W1 000 | 37.63 | 10.5 | **395** |
| T14 | W2 000 | 223.11 | 10.5 | **2 343** |
| T18 | W1 000 | 72.16 | 15 | **1 082** |

The reading for a sub-T11 account: at W1 000 the elite bands that have *started* are only the first few (T11’s band starts
are **174 / 349 / 523 / 697 / 1 046 / …**), so the cells-per-run figure is dominated by how far past the **W500** first
band the run gets — depth, not luck. Note also the printed mechanics that cap the yield: at most **1** elite per wave early
(a second becomes possible at higher waves), each type capped at **8** on screen (Scatter children excluded), and every
elite is immune to **Orbs, Death Ray, Shockwave and Black Hole**.

**④ Fleet numbers (T14+), and they are pure shard income.** `wiki/enemy/fleet-enemies` prints the fleet drop table, and
both columns close: module shards = **`5 + (wave − 1) / 250`** (all **21** printed band rows ✓, reaching the printed cap
**25** at W5 000), reroll shards **1 080 → 2 100** for T14 → T21 (the deltas are **+120 then +150/tier** ✓). 80 % of fleet
drops are reroll shards, 20 % module shards (5 % per type). Spawn first-waves: T1–T13 `15 000 − 250 × (T − 1)` at a
frequency of **100** waves/fleet (T13 = 12 000 ✓), then **T14 2 495 · T15 1 495 · T16 995 · T17 495 · T18 95 · T19 45 ·
T20+ 5**, with the “bonus spawn” column closing as **`11 750 − 250 × (T − 14)`** (all 10 deltas = −250 ✓). Fleet
companions are fixed: **Overcharge + Ranged, Commander + Tank, Saboteur + Fast**. Tool coverage on fleets (printed):
Chrono Field, Chrono Loop (CF+), Thunder Bot, Poison Swamp stun and Land Mine stun work at **half** strength; Orbs, Death
Ray, Shockwave, Knockback and both Black Hole damage and pull do **not** connect, and Plasma Cannon cannot even select them.

**Skew, recorded not resolved.** The two pages print the *same* grid but from **T16** onward the columns are offset by one
row and differ by ±1 (`…/elite-enemies` shows 102 / 205 / 308 / 411 where `…/enemies` shows 103 / 206 / 412 / 618 — i.e.
`floor` vs `round` of the same `base × 0.9^15/16`). Use ① + ② to compute, and read the panel cell when a T16+ number
matters.


(multiplier − 1) × hours”:

| Boost | ×1.5 | ×2 | ×3 | ×4 | ×5 | ×6 | ×7 | ×8 |
|---|---|---|---|---|---|---|---|---|
| cells/h | **15** | 100 | 840 | 3 360 | 11 900 | 60 000 | 250 000 | 1 000 000 |
| cells per *saved* hour (1-h bucket) | **30** | 100 | 420 | 1 120 | 2 975 | 12 000 | 41 667 | 142 857 |

So every step above ×1.5 costs **2.7–4.2× more per saved hour** — buy ×1.5 repeatedly and let the big multipliers ride
on multi-day gate labs. (This is also the derivation of the “30 cells” row in the table below.)

**The two enhancement coin-ladders share one printed series** (first 10 levels, pre-discount): **5 B · 6.25 B · 12.46 B ·
27.42 B · 54.5 B · 96.85 B · 157.45 B · 239.17 B · 344.79 B · 477.01 B**, cumulative **5 → 11.25 → 23.71 → 51.14 →
105.64 → 202.49 → 359.94 → 599.11 → 943.90 → 1.42 T** — every printed cumulative re-adds ✓ (10/10), and “Showing 10 of
**300** rows” confirms the 300-level cap. `Coin Bonus` (gate **50 B** Utility spend, ×1 + 0.01/lv → ×4 at L300) and
`Cells/Kill` (gate 500 B) cost the same per level; the site notes Coin Bonus applies to *both* the tier bonus and
Coins/Kill, “so its effective benefit is **squared**” — it is the strongest late-coin enhancement line.

**The Assist Module Labs — 8 labs, one printed ladder, and the 100 % law (new, Rev 20).** `wiki/module/assist-module-labs`
(2026-11-01) is fully numeric and closes the assist layer. **Eight labs** (two families × four slot types: `Assist Module
Bonus` and `Assist Module Substats` for Cannon/Armor/Generator/Core), **30 levels** each, unlock at **Tier 19 wave 50**,
and the printed `Level | Time | Cost (Q Coins) | Value` ladder is exactly linear: **cost = 0.25 q × n** and **time =
933 078 s × n** per level, value **+1 pp/level** (the printed cells are those values to the minute: L1 = 10 d 19 h 11 m =
933 060 s, L10 = 107 d 23 h 53 m, L30 = 323 d 23 h 39 m ✓ each within the minute-truncation of `n × 933 078 s`).
| quantity | value | how |
|---|---|---|
| one lab, all 30 levels | **116.25 q** coins | 0.25 q × Σn = 0.25 × 465 |
| one lab, all 30 levels | **433 881 270 s = 5 021.8 d** | 933 078 s × 465 |
| all **8** labs | **930.00 q** coins / **40 174 d** | 8 × each |
| one **stone track**, 69 levels | **8 073** stones | `cost(k → k+1) = 3k + 15` from k = 0: Σ = 3·2 346 + 15·69 = 7 038 + 1 035 ✓ |

**Unit + time correction (Rev 36, `tools/assist-primary-tail.ps1`).** The fandom page’s own header is **`Cost (Q Coins)`**
— the same 10¹⁸ convention as the four BC Group pages — so the eight labs are **930.00 Q = 9.30 × 10²⁰** coins, one lab
**116.25 Q**, not 930 q. The reading is corroborated by the same-tier sibling: `Battle Conditions Group 1` (**T19 W100**)
prints **0.2 Q** at level 1 against the assist labs’ **0.25 Q**, i.e. one order-of-magnitude family. The fandom time
cells re-add **exactly** on `n × 15 551 min` (L1 = 15 551, L10 = 155 510, L30 = 466 530 min = **323 d 23 h 30 m**), which
is **18 s per level** below the Hub’s unrounded `933 078 s` = 15 551.3 min — the source of the 9-min gap between the two
wikis at L30; both prints are kept. The layer’s clock is unchanged (**40 174.2 d**), only the coin scale moves.

The page's own efficiency law is arithmetic: “a slot's efficiency **starts at 1 %** and gains **1 % per stone-upgrade
level** and **1 % per lab level**, so a fully upgraded track (**70 %**) with its lab at **30** reaches **100 %**” —
1 + 69 + 30 = 100 ✓ (69 stone levels + base, then the 30-level lab). And it prints the **hard caps** the substats stop at:
**98 % defense** (the number this repo's 98-vs-99 skew was about — Tower Hub prints **98**), **90 % Chrono Field slow**,
**150 s Wall rebuild**, **7 s Shockwave Frequency**, **37 s Inner Land Mine cooldown**. Practical ordering: the eight lab
bills are pure-coin (930 q is small against §6's S-scale enhancement bills), but **40 174 d** of shared-slot lab time
makes these the classic *buy-the-first-few-levels* labs — each level is +1 pp on one slot type, so the eight are
interchangeable per stone but the stone tracks (8 073 each) carry most of the efficiency.

### The exchange rate that decides Cells vs Gems

| Way to buy 1 skipped research-hour | Cost | Typical share of a day's income |
|---|---|---|
| Elite Cell boost ×1.5 | **30 cells** | ≈ 3 % of ~1 000 cells/day (T5) |
| Gem rush, 1-day bucket | 6.79 gems (163 / 24 h) | ≈ 17 % of ~40 gems/day |
| Gem rush, 1-week bucket | 5.95 gems (1 000 / 168 h) | ≈ 15 % |
| Gem rush, 30-day bucket | 4.93 gems | ≈ 12 % |
| Gem rush, 90-day bucket | 3.70 gems | ≈ 9 % |
| Gem rush, 360-day bucket | 2.89 gems | ≈ 7 % |

Read: **Elite Cells buy time ~5–6× cheaper than gems per skipped hour** for a sub-T11 account, so cells are always spent first and gems go to **lab slots / card slots** ([T009](T009-gem-spend-order.md)). Gem rush becomes competitive only in the ≥ 30-day buckets, i.e. for the multi-day gate labs (`Unlock Perks` 3 d 11 h, `Perk Option Quantity` 10 d, `Auto Pick Ranking` levels).
Gem rush is also **non-linear in your favour**: 1 h = 8 gems but 1 week = 1 000, so never rush a 1-week lab as 168 hourly purchases. Each **fully gold-boxed lab** adds +0.015× to your gem-rush efficiency, so rush after gold-boxing, not before.

## The two meta-labs (buy these before any stat line)

`Labs Speed` and `Labs Coin Discount` are the only lines that multiply *every other* line's cost or duration, so each
level is a discount on the whole remaining lab tree. Both have **99 levels**, both **exclude themselves** from their own
effect, and both use **one shared coin curve** (printed, first 10 levels — the same 10 numbers on both pages):

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| coins | 40 | 83 | 211 | 522 | 1 116 | 2 099 | 3 579 | 5 667 | 8 474 | 12 116 |
| **Σ coins** | 40 | 123 | 334 | 856 | **1 972** | 4 071 | 7 650 | 13 317 | 21 791 | **33 907** |
| base time (cumulative) | 0 m | 10 m | 24 m | 45 m | 1 h 14 m | 1 h 53 m | 2 h 43 m | 3 h 45 m | 5 h 1 m | **6 h 32 m** |

| Meta-lab | Unlock | Per level | At L10 | At L99 | Max cost |
|---|---|---|---|---|---|
| `Labs Speed` | **T1 W150** milestone | **+0.02×** | ×1.20 | **×2.98** (1 + 0.02·99 ✓) | 472 456 246 coins · **237 689 238 s** of base time (= 2 751 days ≈ 7.5 yr of one slot at 1×) |
| `Labs Coin Discount` | **T1 W30** milestone | **−0.30 %** | −3.00 % | **−29.7 %** (0.30·99 ✓) | same curve (both share it) |

**The stacking law (multiplicative, not additive):** `effective time = base ÷ (lab-speed research bonus × relic bonus)` —
the source's own example is **1.25 (relic) × 2.98 (research) = 3.725**, not 3.23 ✓. Two consequences: (a) **lab-speed relics
are top-priority event buys**, because they multiply the research bonus instead of adding to it; (b) `Labs Speed` is worth
taking to **L99** eventually even though its own levels never accelerate themselves (relics *do* shorten its levels).

**Two quirks that read like bugs:** `Labs Speed` does **not** speed up its own remaining levels (so its first 10 levels cost
the full **6 h 32 m** at 1× — start it first thing in a session), and it does **not** advance the “lab time” event mission,
so level it outside a mission deadline ([T013](T013-event-medal-economy.md)).

**Order inside the pair:** both cost the same per level, so take them in **10-level blocks**, `Labs Speed` first while you are
online often (it raises levels/day for all 5 slots: a `3 d 11 h` line becomes **22.3 h** at ×3.725), then
`Labs Coin Discount` while you bank coins (−3.00 % per 10 levels on *every* line you buy afterwards). Reference: 5 slots cost
**4 900 gems** total ([T009](T009-gem-spend-order.md) §1), and the boost ladder above is what buys back their hours.

## Steps

1. Home screen → **Lab** (flask icon) → **Research Panel**. Read every slot's remaining time.
2. Daytime: start levels that finish in **≤ 7 h** so each session refreshes a slot. Long levels go in the **overnight** queue. Never leave a slot showing “completed” for hours — that time is unrecoverable.
3. Tap the small **clock icon** left of a slot's progress bar (**Auto Research**) so the next level of the same line starts by itself. This is the single highest-yield QoL toggle in the game.
4. Boost with cells: select the slot → **Speed Up** → choose **1 h / 8 h / 24 h**, then the multiplier → the panel shows the Elite Cell price. Take **×1.5** on **every slot that has research running** (5 slots = 75 cells/h total, 1 800 cells/day) and set the boost to **auto-queue** in the same menu so it renews itself.
   - Only raise a slot to ×2 / ×3 after all five slots already carry ×1.5 **and** the cell counter is still climbing.
   - Do **not** buy a boost for an empty slot — boosts only tick while a lab is slotted for research (the idle indicator stays grey).
5. Only then consider gems, and only for the multi-day gate lab that unblocks your next system: use the **biggest single bucket** (1 week / 30 days), not hourly taps.
6. Priority lines for a new / low-tier account:
   - **Main:** `Game Speed` to max (×5.0 at L7) first, then `Lab Speed`, then `Labs Coin Discount`.
   - **Utility:** `Coins/Kill Bonus` (top economy line), `Cash Bonus`, `Max Interest`, then `Perks` unlocks ([T011](T011-perk-engine-tuning.md)).
   - **Attack:** `Attack Speed` for a long stretch (it raises the cap), then split `Damage` / `Critical Factor` / `Damage Per Meter`.
   - **Defense:** `Health`, `Defense %`; a couple of `Defense Absolute` levels only.
   - **Skip:** `Range` (breaks orb/land-mine builds), `Health Regen`, `Defense Absolute` past the first few levels.
7. When you switch a running research: the coins are refunded and elapsed time is kept as a **green bar**, but you pay the coins again on resuming — so switch only to another line you also want.

### The Main Research category priced line by line (new, Rev 27)

The Tower Hub category page lists the Main Research lines with their caps but no prices. The fandom lab pages print the
`Level | Time | Cost | Value` tables, so **13 of the category's lines are now priced** (`tools/main-research-family.ps1`).
Fandom prints costs to **three significant figures**, so its sums differ from Tower Hub's exact integers in the fourth
digit (`Labs Coin Discount` Σ **472 509 506** vs `Labs Speed` Σ **472 456 246**, Δ 53 260 = **0.011 %**, while both clocks
read **2 751 d**).

| Line | Levels | Σ coins | Σ clock | printed value law | coins per unit of effect |
|---|---|---|---|---|---|
| `Starting Cash` | 99 | **111 695 939** | 2 080 765 min = **1 444.98 d** | +5 per level ⇒ **495** | 225 648 per unit |
| `Workshop Attack Discount` | 99 | 111 695 939 | 1 444.98 d | +0.50 pp ⇒ **49.50 %** | 2 256 484 per pp |
| `Workshop Defense Discount` | 99 | 111 695 939 | 1 444.98 d | +0.50 pp ⇒ 49.50 % | 2 256 484 per pp |
| `Workshop Utility Discount` | 99 | 111 695 939 | 1 444.98 d | +0.50 pp ⇒ 49.50 % | 2 256 484 per pp |
| **the four-line block** | 396 | **446 783 756** | **5 779.9 d** = 15.82 y | one shared cost/time column | — |
| `Labs Coin Discount` | 99 | 472 509 506 | 3 961 437 min = **2 751 d** | −0.30 pp ⇒ **−29.7 %** | 15 909 411 per pp |
| `Enhancement Coin Discount` | **100** | **826.445 q** | **7 852 750 min = 5 453.3 d** | −0.30 pp ⇒ −30 % | **27.548 q per pp** |
| `Game Speed` | 7 | 1 714 800 | 65 273 min = 45.33 d | ×2.0 ⇒ ×5.0 (+0.5) | 571 600 per ×1.0 |
| `Buy multiplier` | 4 | **562 500** | 5 391 min = **89.8 h** | 5, 10, Max, 100 | 140 625 per step |
| `Presets` | 5 | 3.535 35 × 10¹³ | 833 min (L1 only) | one preset class per level | 7.07 × 10¹² per level |
| `More Round Stats` | 1 | 250 000 | 719 min = 11 h 59 m | unlocked | — |
| `Workshop Respec` | 1 | 3 000 000 | 3 666 min = 2 d 13 h 6 m | unlocked (150 gems per respec) | — |
| `Reroll Daily Mission` | 1 | 20 000 000 | 2 399 min = 1 d 15 h 59 m | unlocked | — |
| `Workshop Enhancements` | 1 | 5 000 000 000 | 9 599 min = 6 d 15 h 59 m | unlocked | — |
| `Target Priority` | 2 | 1 001 000 000 | 14 399 min = 9.99 d | unlocked ×2 | — |
| **Σ 13 lines** | 712 | **826.45 q** | **14 055 d = 38.5 y** | — | — |

1. **The category is one line deep.** The Σ is **826.45 q** and the single 100-level `Enhancement Coin Discount` line
   contributes **826.445 q** of it ⇒ **20.46 %** of the entire *priced* census (4 039 q) sits in one line, while the other
   12 lines together are **0.005 q**. Order inside the category therefore ignores the big line and takes the cheap ones.
2. **A four-line shared ladder.** `Starting Cash` and the three `Workshop … Discount` lines print cell-identical columns
   (L1 **30 / 0 m**, L2 **71 / 6 m**, L3 **178 / 16 m** … L98 **4 070 000 / 47 d 20 h 27 m**, L99 **4 190 000 /
   49 d 0 h 57 m**) ⇒ one table prices four lines: Σ **111 695 939** coins and **2 080 765 min = 1 444.98 d** each,
   **446 783 756** coins and **5 779.9 d** for the block. Their per-level ratios decay from **2.37** (L1→2) through
   **1.37** (L9→10) to a flat **1.03** tail (L90→98 average **1.030**) — the fifth clock shape from T012 again.
3. **`Enhancement Coin Discount` is the census's one exact geometric ladder:** cost `1.00 B × 1.30^(n−1)`
   (1.00 → 1.30 → 1.69 → 2.20 → 2.86 ✓ at 3 s.f.) and time `1 555 × n` **min** exactly (L1 `1d 1h 55m`, L100
   `107d 23h 40m`) ⇒ Σ time = 1 555 × 5 050 = **7 852 750 min**. Per percentage point of discount: **27.548 q** and
   **181.8 d** — by both currencies it is the last line in the category worth buying.
4. **The practical order inside the category** (cheapest per unit of effect first): `Buy multiplier` — the whole ×100
   capability for **562 500 coins / 89.8 h**, the cheapest complete line in the game; then the three workshop-discount
   lines at **2 256 484 coins per pp** each; then `Labs Coin Discount` at **15.91 M per pp**; `Game Speed` is a fixed
   1.71 M / 45 d bill that multiplies every other line (`×5.0` at L7); `Enhancement Coin Discount` last (27.5 q per pp),
   even though its 30 % applies to the 4.84 × 10⁷-year enhancement ledger of T025.
5. **Gate cross-check, with one skew.** The lab pages print their own milestone gates — `Workshop Attack Discount`
   **T1 W40**, `More Round Stats` **T1 W250**, `Workshop Respec` **T4 W30**, `Target Priority` **T4 W150** — and they
   agree with the per-tier table T019 uses. The Hub's *block* table puts the same `Workshop Attack Discount` cell in the
   **second** tier's free column of its wave-40 row: the same one-column offset as the `Nuke` / `Land Mine Stun` case,
   with the same single device test (read the T1 W40 cell of the **Milestones** screen).
6. **Two adjacent closures on the same source** (they re-add by construction, `Lab Upgrades`): the five lab slots are
   `Free / 100 / 400 / 1 400 / 3 000` = **4 900** gems ✓; the rush ladder's day-rate column is exactly `gems ÷ days of
   timer` (**192 / 163 / 142.9 / 118.3 / 88.9 / 69.4**) and its discount column is `1 − rate ÷ 192` on all five rows
   (**0 / 15 / 26 / 38 / 54 / 64 %**), with **> 360 d = 25 000 flat**, **< 1 min = 1 gem**, and “prices between the times
   listed scale evenly” (piecewise-linear, so any timer is interpolable from the six anchors). The Elite-Cell boost rows
   scale **×8** from 1 h to 8 h and **×24** from 1 h to 24 h (8/8), and the 40-row five-lab table is the sum of the five
   single-lab 1-hour costs with day = hour × 24; reading skipped time as `(m − 1) × duration` gives **30 / 100 / 420 /
   1 120 / 2 975 / 12 000 / 41 667 / 142 857** cells per skipped hour for ×1.5 … ×8. Five slots at ×1.5 = **75 cells/h =
   1 800 cells/day**, exactly the printed daily cell income ⇒ the ×1.5-on-all-slots row is the budget-exact build and the
   first row that exceeds income is ×2 on one slot (**160/h = 3 840/day**).

### The Attack Research category priced line by line (new, Rev 28)

Same route as §Main Research: the fandom prints one `Level | Time | Cost | Value` table per lab
(`Lab/Damage`, `Lab/Attack Speed`, `Lab/Critical Factor`, `Lab/Range`, `Lab/Damage Per Meter`,
`Lab/Super Crit Chance`, `Lab/Super Crit Mult`, `Lab/Rend Armor Max`, `Lab/Light Speed Shots`) and the category page
`Lab Category/Attack Research` confirms the caps, so **all nine lines close** — 598 levels. Re-added offline by
`tools/attack-research-family.ps1`. Every printed value cell obeys its line's law: **597 / 597** numeric cells fit
`1 + s·n` (or `s·n`, or `800 % + 25n`) exactly.

| Line | Levels | Σ coins | Σ clock | printed value law | coins per +0.01 |
|---|---|---|---|---|---|
| `Damage` | **100** | **116 005 939** | 2 153 117 min = **1 495.22 d** | `1 + 0.02n` ⇒ **×3.00** | 580 030 |
| `Attack Speed` | 99 | 111 695 939 | 2 080 765 min = 1 444.98 d | `1 + 0.02n` ⇒ ×2.98 | 564 121 |
| `Critical Factor` | 99 | 111 695 939 | 1 444.98 d | `1 + 0.03n` ⇒ **×3.97** | **376 081** |
| `Range` | **80** | **50 035 939** | 1 008 194 min = **700.13 d** | `1 + 0.02n` ⇒ ×2.60 | **312 725** |
| `Damage Per Meter` | 99 | 111 696 099 | 2 080 774 min = 1 444.98 d | `1 + 0.02n` ⇒ ×2.98 | 564 122 |
| `Super Crit Chance` | 50 | **800 429 361 760** | 146 559 209 min = **101 777.2 d** | `0.10 · n` pp ⇒ **5.00 %** | 1.6009 × 10¹¹ |
| `Super Crit Mult` | 40 | 221 179 361 760 | 23 141 533 min = 16 070.5 d | `1 + 0.02n` ⇒ ×1.80 | 2.764 7 × 10⁹ |
| `Max Rend Armor Multiplier` | 30 | **24.571 81 T** | 530 896 min = **368.68 d** | `800 % + 25n` ⇒ **1 550 %** | 3.276 2 × 10¹⁰ |
| `Light Speed Shots` | 1 | 3 000 000 | 1 199 min = 19.98 h | `Unlocked` | — |
| **Σ 9 lines** | **598** | **25.594 T** | **179 636 452 min = 124 747.5 d** = 341.5 y | — | — |

1. **One column prices four of the nine lines.** `Damage` levels 1–99, `Attack Speed`, `Critical Factor` and (as its
   prefix) `Range` print the *same* two columns as the Main Research block: L1 **30 / 0 m**, L2 **71 / 6 m**, L99
   **4 190 000 / 49 d 0 h 57 m** ⇒ Σ **111 695 939** coins and **1 444.98 d** per 99-level line. `Damage` adds a printed
   level 100 (**4 310 000 / 50 d 5 h 52 m** = 72 352 min) ⇒ **116 005 939** coins / **1 495.22 d**, and `Range` stops at
   level 80 ⇒ **50 035 939** coins / **700.13 d**.
2. **The 80-level cap is the coin knee of that ladder.** Levels 1–80 = **44.80 %** of the coins for **80.81 %** of the
   value (clock **48.45 %**), because the last 19 levels alone cost **61 660 000** = **55.20 %** of the line. So a
   99-level shared-ladder line is *worse* per coin than its own first 80 levels by ×1.23 — read `Range` as the published
   efficiency target and stop the 99-level lines near level 80 while coins are the binding currency.
3. **`Damage Per Meter` is the same ladder, re-printed.** Diffed cell by cell against the shared column it differs in
   exactly **16** cost cells, each by exactly **+10** coins, and only inside levels 1–26 (L1 **40** vs 30, L2 **81** vs
   71, L3 **188** vs 178, …, L26 **98 540** vs 98 530) and **9** time cells each by **+1 min** ⇒ totals differ by
   **Δ +160 coins / +9 min** only. One in-game ladder, two tables, differences of the third-significant-figure print.
4. **The two Super Crit lines share the price column but not the clock column.** `Super Crit Mult` levels 1–40 are
   cell-identical to `Super Crit Chance` levels 1–40 (L1 **200 000 / 1 d 3 h 46 m**, L40 **30 070 000 000**), while 38 of
   40 time cells differ (L3 3 354 vs 3 351 min, L4 4 284 vs 4 261 min) — the first pair in this census with a shared
   `Cost` ladder and an independent `Time` ladder. `Super Crit Chance`'s extra ten levels sum to exactly
   **579 250 000 000** coins. Their per-level cost ratios decay **1.126 → 1.102** across L41–L50: the decaying-ratio
   shape again, now with a *second* tail value.
5. **`Max Rend Armor Multiplier` is the census's near-arithmetic price line** — consecutive differences **40 B** for the
   first 19 cells (200, 240, 280.01, 320.03, 360.1, 400.23, 440.45 …), 50–60 B in the rounded tail — with a
   **quadratic clock**: increments run **835 → 976 min** and their second differences are **3…7 min**, so
   `t(n) ≈ 4999 + 835(n − 1) + 2.5(n − 1)(n − 2)` (worst error 155 min = 0.5 % at L30, from minute truncation). Its
   value column is the plainest in the game: **800 % + 25 pp × n ⇒ 1 550 %** at L30, and **0.492 d of clock per pp** is
   the cheapest clock per unit anywhere in this category (next best 4.376 d).
6. **Buy order, from the two per-pp columns.** Coins first: `Range` **312 725** → `Critical Factor` **376 081** →
   `Attack Speed` **564 121** ≈ `Damage Per Meter` **564 122** → `Damage` **580 030** → `Super Crit Mult` **2.764 7 × 10⁹**
   → `Max Rend Armor Multiplier` **3.276 2 × 10¹⁰** → `Super Crit Chance` **1.6009 × 10¹¹**. `Critical Factor` is the
   one to note: same 99-level price as `Attack Speed` but **+0.03 vs +0.02 per level**, so it pays **1.5×** the value per
   coin — a lab of the same price is only worth buying before another if its step is larger. Because the damage stack is
   printed as a product (`Displayed damage = Workshop × Lab × Damage Card × (1 + Relics) × …`), each +0.02 of the Lab
   factor multiplies the whole chain rather than adding to it.
7. **Which currency binds this category.** Σ coins **25.594 T** = **0.051 %** of a single 500 T income day, while the
   clock is **124 747.5 d** (341.5 y), of which the two Super Crit lines are **94.47 %**. The Attack category is
   therefore purely clock-bound: every coin bill in it is a rounding error, so it is exactly where the ×1.5 Elite-Cell
   boost (30 cells per skipped hour per slot) earns most and where gem rushing (180 gems/day at 0 % discount) is least
   needed — spend gems on the q-scale lines of Appendix A.2 instead.
8. **Gates, straight from the lab pages** (they ladder cleanly): `Attack Speed` and `Critical Factor` **T1 W30**,
   `Range` **T2 W30**, `Damage Per Meter` **T3 W30**, `Super Critical` **T5 W200**, `Light Speed Shots` **T7 W10**,
   `Max Rend Armor Multiplier` **T13 W10**, `Damage` **tier 1** (wave not printed). Same one-test rule as §Main Research:
   the in-game **Milestones** cell is the authority when a page and a block table disagree.

### The Defense Research category priced line by line (new, Rev 29)

Fifteen new lines (`Garlic Thorns` was already priced at Rev 11), from `Lab/Health`, `Lab/Health Regen`,
`Lab/Defense Absolute`, `Lab/Defense Percent`, `Lab/Orb Speed`, `Lab/Orb Boss Hit`, `Lab/Land Mine Damage`,
`Lab/Land Mine Decay`, `Lab/Shockwave Size` and the six `Wall Labs/<name>` pages; caps cross-checked against
`Lab Category/Defense Research`. Re-added offline by `tools/defense-research-family.ps1`. Every value column is an exact
step sequence (`1 + 0.03n`, `0.20n`, `10n`, `0.5n`, …), and the category closes at **16 lines / 655 levels** *(restated at
Rev 40: the row printed **635**, short by exactly **20**; the itemised §cap-table list sums to 655 and the layer-`J`
subtotal below to 645)*.

| Line | Levels | Σ coins | Σ clock | printed value law | coins per unit of value |
|---|---|---|---|---|---|
| `Health` · `Health Regen` · `Defense Absolute` | 100 each | **116 005 939** each | 2 153 117 min = **1 495.22 d** each | `1 + 0.03n` ⇒ **×4.00** | **386 686** |
| `Defense Percent` | 50 | 59 428 431 500 | 5 314 424 min = 3 690.57 d | `0.20n` pp ⇒ 10.00 % | 5.942 8 × 10⁹ |
| `Orb Speed` | 20 | 3 712 537 770 | 146 176 min = 101.51 d | `0.10n` ⇒ 2.00 | 1.856 3 × 10⁹ |
| `Land Mine Damage` | 20 | 12 936 316 980 | 205 239 min = 142.53 d | `10n` pp ⇒ 200 % | **6.468 2 × 10⁷** |
| `Land Mine Decay` | 35 | 266 556 316 980 | 2 278 640 min = 1 582.39 d | `0.5n` ⇒ 17.5 | 1.523 2 × 10¹⁰ |
| `Shockwave Size` | 20 | 12 937 873 980 | 297 315 min = 206.47 d | `0.05n` ⇒ 1.00 | 1.293 8 × 10¹⁰ |
| `Orb Boss Hit` | 10 | 76 950 000 000 | 47 075 min = 32.69 d | `0.20n` pp ⇒ 2.00 % | 3.847 5 × 10¹⁰ |
| `Wall Health` | 50 | 745.04 B | 218 913 min = 152.02 d | `+2n` pp ⇒ +100 % | 7.450 4 × 10⁹ |
| `Wall Rebuild` | 20 | 193.9 B | 360 873 min = 250.61 d | `−10n` s ⇒ −200 s | 9.695 × 10⁸ |
| `Wall Regen` | 30 | **3.540 84 T** | 2 961 672 min = 2 056.72 d | `10n` pp ⇒ 300 % | 1.180 3 × 10¹⁰ |
| `Wall Thorns` | 20 | 2.265 71 T | 1 637 600 min = 1 137.22 d | `1n` pp ⇒ 20 % | 1.132 9 × 10¹¹ |
| `Wall Invincibility` | 10 | 5.383 72 T | 120 610 min = 83.76 d | `1n` s ⇒ 10.0 s | 5.383 7 × 10¹¹ |
| `Wall Fortification` | 60 | **174.666 T** | 1 625 333 min = 1 128.70 d | `20n` pp ⇒ 1 200 % | 1.455 5 × 10¹¹ |
| `Garlic Thorns` | 10 | 1 350 000 | 25.45 d (Rev 11 print) | `1n` pp ⇒ 10 % | 135 000 |
| **Σ 16 lines** | **655** *(635 at Rev 29, a mis-add: see the note above)* | **187.228 T** | **21 709 869 min = 15 076.3 d** = 41.3 y | — | — |

1. **Seven census lines now sit on one price column** - the four Attack lines of Rev 28 plus `Health`, `Health Regen`
   and `Defense Absolute`, all printing L1 30 coins / 0 m and L99 4 190 000 / 49 d 0 h 57 m, the three 100-level ones
   adding the same L100 cell (4 310 000 / 72 352 min = 3.72 % of the line on its own). Same price, different printed
   step, so the step alone orders the buy queue: per +0.01 the 80-level `Range` costs 312 725, the 99-level
   `Critical Factor` 376 081, the three 100-level Defense lines 386 686, `Attack Speed` and `Damage Per Meter`
   564 121-122 and `Damage` 580 030 coins.
2. **`Land Mine Decay` is `Land Mine Damage` with fifteen cells bolted on.** The first 20 cost cells and the first 20
   time cells match with **0 differing cells**; the 21-35 tail is 253.62 B coins / 2 073 401 min = 1 439.9 d. One table
   prices both lines.
3. **`Shockwave Size` and `Land Mine Damage` are near-twins with different clocks.** 15 of 20 cost cells differ, by
   +1 557 000 coins in total (0.012 %), but all 20 time cells differ by +92 076 min in total, so the same-priced line
   takes 1.449x the clock. Same coin bill, half-again the waiting: a clean example of why the two columns must be read
   separately (T006's binding-currency law).
4. **The x1.15 clock law re-appears verbatim in the wall labs.** `Wall Regen`'s 30 printed times have ratios of exactly
   **1.1500** on 18 consecutive steps (L12 to L30) after an eleven-level head (1 666 to 28 278 min) - the same per-level
   clock law as the `L-I ... L-VI` families, now with a head/tail split. `Wall Fortification` instead decays
   1.054 to 1.042 over L41-L60 (the decaying-ratio shape).
5. **The arithmetic-price family grows to four members**: `Max Rend Armor Multiplier` (delta 40 B), `Wall Regen`
   (5.1 to 7.63 B), `Wall Thorns` (8.1 to 10.18 B), `Wall Invincibility` (51 to 55.77 B). In these the last level costs
   about 1.1x to 2.6x the first (784 B vs 300 B over ten cells for `Wall Invincibility`), against 139 667x for the shared
   ladder's L99 vs L1 - so finishing an arithmetic line is cheap and finishing a geometric line is not. Buy the wall labs
   to their caps; leave the 99-level lines at ~80 (finding 2 of Rev 28).
6. **`Wall Fortification` is the category's whole coin bill**: 174.666 T of the category's 187.228 T (93.29 %) for
   7.49 % of its clock. The other 15 lines together cost 12.562 T. So `Wall Fortification` (T14 W60) is the one Defense
   line where coins bind; everything else in the category is clock-bound.
7. **Buy order, coins per unit of printed value ascending**: `Garlic Thorns` 135 000 -> the three 100-level lines
   386 686 -> `Land Mine Damage` 6.4682 x 10^7 -> `Wall Rebuild` 9.695 x 10^8 -> `Orb Speed` 1.856 3 x 10^9 ->
   `Defense Percent` 5.942 8 x 10^9 -> `Wall Health` 7.450 4 x 10^9 -> `Wall Regen` 1.180 3 x 10^10 -> `Shockwave Size`
   1.293 84 x 10^10 -> `Land Mine Decay` 1.523 18 x 10^10 -> `Orb Boss Hit` 3.847 5 x 10^10 -> `Wall Thorns`
   1.132 86 x 10^11 -> `Wall Fortification` 1.455 5 x 10^11 -> `Wall Invincibility` 5.383 72 x 10^11. By clock per unit
   the order is almost the reverse at the top: `Land Mine Damage` 0.713 d/unit, `Wall Fortification` 0.941 d,
   `Wall Rebuild` 1.253 d, `Wall Health` 1.520 d, the 100-level trio 4.984 d - so `Land Mine Damage` is the single
   line that is cheap in both currencies and belongs first.
8. **Gates** (printed on the lab pages, the wall labs print none): `Health`, `Health Regen`, `Defense Absolute`
   **T1 W30**; `Shockwave Size` **T3 W50**; `Orb Speed` **T3 W80**; `Defense Percent` **T5 W30**; `Land Mine Damage` and
   `Land Mine Decay` **T6 W30**; `Orb Boss Hit` **T6 W750**; `Wall Fortification` **T14 W60**.

### The Utility Research category priced line by line (new, Rev 30)

Ten new lines, from `Lab/Cash Bonus`, `Lab/Cash Per Wave`, `Lab/Coins Per Kill Bonus`, `Lab/Coins Per Wave`,
`Lab/Interest`, `Lab/Max Interest`, `Lab/Package After Boss` and `Lab/Recovery Package Amount` / `Max` / `Chance`; caps
cross-checked against `Lab Category/Utility Research` (12 lines), the two `* Level Skip` lines having been priced already
as Appendix B layer `F`. Re-added offline by `tools/utility-research-family.ps1`. The category closes at **12 lines /
611 levels**.

| Line | Levels | Σ coins | Σ clock | printed value law | coins per unit of value |
|---|---|---|---|---|---|
| `Cash Bonus` · `Cash / Wave` · `Coins / Kill Bonus` · `Coins/wave` | 99 each | **111 696 509** each | 2 080 774 min = **1 444.98 d** each | `1 + 0.02n` ⇒ **2.98** | **564 124** per +0.01 |
| `Interest` | 99 | 472 468 836 | 4 904 452 min = 3 405.87 d | `1 + 0.02n` ⇒ 2.98 | 2 386 206 per +0.01 |
| `Max Interest` | 15 | **2 304 140** | 146 207 min = 101.53 d | cap 50 ⇒ **15 000** | **154.1** per $ of cap |
| `Package After Boss` | 1 | 1 B | 11 666 min = 8.10 d | `Unlocked` | 1 × 10⁹ |
| `Recovery Package Amount` | 20 | 2.968 19 T | 379 207 min = 263.34 d | `0.40n` pp ⇒ 8.00 % | 3.710 2 × 10¹¹ |
| `Recovery Package Max` | 20 | 2.968 19 T | 379 207 min = 263.34 d | `1.00n` pp ⇒ 20 % | **1.484 1 × 10¹¹** |
| `Recovery Package Chance` | 20 | 2.968 19 T | 379 207 min = 263.34 d | `0.20n` pp ⇒ 4.00 % | 7.420 5 × 10¹¹ |
| `Enemy Attack Level Skip` · `Enemy Health Level Skip` | 20 each | (layer `F`: 1.49 T) | 260.62 d | 200 − 10n waves | see §the 20-level families |
| **Σ 12 lines** | **611** | **10.396 T** | **14 898 335 min = 10 346.1 d** = 28.3 y | — | — |

1. **The shared 99-level column recurs a second time, now at head 40.** The four workshop-increment lines are
   byte-identical tables: **111 696 509** coins / **2 080 774 min = 1 444.98 d** each, L1 **40** coins / **0 m** /
   **1.02**, L99 **4 190 000** / **49 d 0 h 58 m** / **2.98**. That is the same ladder as the head-30 column of Rev
   27-29: **57 of 99** cost cells differ but only by **+570 coins** in total, and **9 of 99** time cells by **+9 min** —
   two prints of one ladder, so coins per +0.01 differ by three coins (564 124 against `Attack Speed`’s 564 121). The
   block of four costs 446 786 036 coins / 5 779.93 d, i.e. the Main-category block of four (446 783 756) plus 4 × 570.
2. **`Interest` is the `Labs Coin Discount` ladder at head 50.** Σ **472 468 836** against that line’s 472 509 506 —
   Δ **−40 670** spread over 47 differing cells, identical tail (19 360 000) and identical value law `1 + 0.02n`. Relative
   to the 40-head column it is **4.230×** the coins and **2.357×** the clock, so per unit of printed multiplier `Interest`
   costs **2 386 206** coins where the four workshop lines cost **564 124**.
3. **The interest-cap question collapses to one 15-level table.** `Max Interest` prints caps 100, 200, 300, 500, 700,
   1 000, 1 500, 2 000, 2 500, 3 500, 5 000, 7 500, 10 000, 12 500, **15 000** against a **$50** base, for Σ **2 304 140**
   coins / **101.53 d** ⇒ **154.1 coins per dollar of cap** and **0.0068 d per dollar** — the cheapest line per unit of
   effect in the whole priced census. The cap ladder is *not* arithmetic: the steps are +100 +100 +200 +200 +300 +500
   +500 +500 +1 000 +1 500 +2 500 +2 500 +2 500 +2 500.
4. **The three Recovery lines are one table printed three times.** 20 identical cost cells and 20 identical time cells
   (Σ **2.968 19 T** / **263.34 d**), with only the value column separating them (`0.40n`, `1.00n`, `0.20n` pp). Priced per
   printed percentage point the order is `Recovery Package Max` **1.484 1 × 10¹¹** < `Amount` **3.710 2 × 10¹¹** <
   `Chance` **7.420 5 × 10¹¹** (clock per pp 13.167 / 32.917 / 65.835 d) — same bill, so buy `Max` first.
5. **Two categories share one generator.** The Recovery time column is the exact 20-level prefix of the 30-level
   enemy-stat ladder (`Fast Enemy Health` & co.), **0 differing cells** (the enemy tail L21-30 is 1 400 541 min, full
   ladder 1 779 748 min). Their *price* columns obey the two-parameter relation
   **`enemy(n) = Recovery(n) + 10 + 25(n − 1)`** — **0 of 20** cells mismatch, and the per-step increments differ by
   exactly **+25 B** in 19 of 19 steps. One 20-cell array therefore prices five census lines.
6. **A fourth clock shape: the hump.** Consecutive-time ratios inside the Recovery ladder rise **1.1503 → 1.1909**
   (step L12→L13) and then fall to **1.1726** — neither the exact ×1.15 law of the 20-level families nor the decaying
   ratio of `Wall Fortification`. Fit it from the cells, not from a single ratio.
7. **The coin-side block is the cheapest multiplier block in the census.** `Cash Bonus` + `Cash / Wave` +
   `Coins / Kill Bonus` + `Coins/wave` + `Interest` + `Max Interest` + `Package After Boss` = **1 921 559 012** coins
   (1.9216 B = 0.000 04 % of the priced bill) for **9 295.4 d** of raw clock — 25.4 y single-slot, **5.1 y** on five
   slots, **1.37 y** with the ×3.725 stack — and that is what carries four ×2.98 workshop increments, the interest
   ×2.98 and the ×300 interest cap. Inside the layer they are **0.02 %** of the coins and **92.2 %** of the clock, so
   queue them early and pay for them with the ×1.5 cell boost rather than with gems.
8. **Layer shares.** The three Recovery lines hold **99.98 %** of the layer’s coins for **7.8 %** of its clock; the four
   40-head lines hold **0.01 %** of its coins for **57.3 %** of its clock. The layer (10 lines) = **8.906 T** =
   **0.0002 %** of the bill coins and **3.7 %** of its clock.
9. **Gates** printed on the pages: the four workshop-increment lines **T1 W30** (`Interest`, `Max Interest`, the three
   Recovery lines and `Package After Boss` print no gate sentence — the Milestones screen is the authority for those).

### The Card Research category priced line by line, and the 32 mastery labs (new, Rev 31)

Nine named lines from `Lab/Double Death Ray`, `Lab/Extra Orb Adjuster`, `Lab/Extra Extra Orbs`, `Lab/Energy Shield`
(the *Energy Shield Extra Hit* line), `Lab/Recharge Demon Mode`, `Lab/Recharge Nuke`, `Lab/Recharge Missile Barrage`,
`Second Wind Labs/Recharge Second Wind`, `Second Wind Labs/Second Wind Blast`, `Lab/Super Tower Bonus`, plus the mastery
labs from `Card Masteries`; caps cross-checked against `Lab Category/Card Research`. Re-added offline by
`tools/card-research-family.ps1`.

| Line | Levels | Σ coins | Σ clock | printed value law | coins per unit of value |
|---|---|---|---|---|---|
| `Recharge Second Wind` · `Recharge Demon Mode` · `Recharge Nuke` (+ `Recharge Missile Barrage`, UW) | 7 each | **14.430 T** each | 172 622 min = **119.88 d** each | recharge after `2 000 → 400` / `1 500 → 300` / `1 500 → 200` waves | **9.018 8 × 10⁹** per 100 waves |
| `Double Death Ray` | 30 | 1.097 08 T | 1 284 912 min = 892.30 d | `1n` pp ⇒ 30 % | 3.656 9 × 10¹⁰ |
| `Super Tower Bonus` | **30** | **12.304 T** | 1 292 112 min = 897.30 d | `1 + 0.03n` ⇒ **1.90** | 1.367 1 × 10¹¹ per +0.01 |
| `Energy Shield Extra Hit` | 2 | 890 B | 63 332 min = 43.98 d | `+1` / `+2` hits | 4.45 × 10¹¹ |
| `Extra Extra Orbs` | 2 | 925 M | 10 666 min = 7.41 d | `+1` / `+2` orbs | 4.625 × 10⁸ |
| `Extra Orb Adjuster` | 1 | 1.5 M | 2 999 min = 2.08 d | `Unlocked` | 1.5 × 10⁶ |
| `Second Wind Blast` (layer `D`) | 4 | 84.3 M | 750 000 s = 8.68 d | `25n` pp | 843 000 |
| **each of the 32 mastery labs** | 9 | **50.00 q** | 810 000 min = **562.5 d** | printed `Total` | 1.388 9 × 10¹⁶ |
| **Σ 41 lines** (9 named + 32 mastery) | **378** | **1.600 Q** | **29 104 387 min = 20 211.4 d** = 55.3 y | — | — |

1. **Four census lines, one 7-level column.** `Recharge Second Wind`, `Recharge Demon Mode`, `Recharge Nuke` and
   `Recharge Missile Barrage` print the *same* seven costs (550 B, 1.05 T, 1.55 T, 2.05 T, 2.56 T, 3.07 T, 3.6 T) and the
   same seven times (5 d 4 h 59 m → 51 d 8 h 11 m): Σ **14.430 T** / 172 622 min = **119.88 d** each — the re-add is exact
   (0.55 + 1.05 + 1.55 + 2.05 + 2.56 + 3.07 + 3.6 = 14.430). Only the value column separates them, so the buy order is
   decided by the printed wave count: Second Wind takes 2 000 → **400** waves (**1 600** saved, 9.018 8 × 10⁹ per 100
   waves), Missile Barrage 1 500 → **200** (1 300 saved, 1.11 × 10¹⁰), Nuke and Demon Mode 1 500 → **300** (1 200 saved,
   1.2025 × 10¹⁰). Same bill, so `Second Wind` is the cheapest wave and `Recharge Nuke` / `Demon Mode` the next.
2. **`Super Tower Bonus` has 30 printed levels, not 10.** The 10-level prefix re-adds to **115.95 B / 22.19 d** —
   exactly the Rev 11 print (115.94 B / 22.2 d), which confirms the same table — and the full 30-level line is
   **12.304 T / 897.30 d**, i.e. **×106** the coins and **×40** the clock of the ten-level reading. Its value column is the
   exact `1 + 0.03n` step (1.03 → 1.90) ⇒ **1.367 1 × 10¹¹ coins per +0.01**. Layer `G` in Appendix B is restated to the
   30-level figure.
3. **The mastery labs are the census’s largest single block: 1.600 Q over 18 000 d.** The wiki prints one shared 9-level
   table (`1.10 q … 10.00 q`, `20d 20h … 104d 4h`, `Total 50.00q / 562d 12h`) and **32** mastered cards, so the block is
   32 × 50 q = **1.600 Q** coins and 32 × 562.5 = **18 000 d** of clock — **24.7 %** of the whole priced bill’s coins for
   **6.2 %** of its clock. Both printed totals re-add exactly (50000000000000000 = 50.00 q; 13 500 h = 562.5 d), the times
   differ by a constant **250 h** (`500, 750, … 2 500 h`, the T012 §2.1 law) and the coin increments are
   **mirror-symmetric**: +0.20 +0.70 +1.40 +2.20 +2.10 +1.40 +0.70 +0.20 q.
4. **The two mastery-lab counts are two readings, and the bigger one is the wiki’s current list.** With 32 mastery labs
   the Card category is **41 lines / Σ 378 levels** and the census is **189 lines** (**191 / Σ 5 017** once the two
   `Bot Bot` lines join it at Rev 33, §Bot Research finding 5); the Rev 23 reading (12 mastery labs)
   gives 21 lines / Σ 198 and **169** lines. Both re-add internally (`90 + 32 × 9 = 378` vs `99 − 9 + 12 × 9 = 198`); the
   in-game **Lab** screen’s Card-category line count settles it (H063).
5. **Mastery stones re-add to the printed 28 500 only with fourteen 1 000-stone cards**: `2 × 500 + 13 × 750 + 14 × 1 000 +
   3 × 1 250 = 28 500` over 32 rows; the 13-bucket version T012 printed sums to 27 500 over 31 rows, so the fourth bucket
   is `1 000 × 14` (fixed at T012 Rev 7).
6. **The mastery labs are the most expensive per unit of printed value in the census** (1.388 9 × 10¹⁶ coins per unit of
   multiplier on the `Damage` mastery, ×1.4 → ×5) while the four Recharge lines are among the cheapest
   (9.018 8 × 10⁹ per 100 waves). In queue terms the mastery labs are pure late-game: **562.5 d** each of raw clock
   (**37.5 d** with the ×1.15-chain stack of T006, **7.5 d** on five slots), and 32 of them are 18 000 d.
7. **Cheap single-level unlocks deserve their own queue slot.** `Extra Orb Adjuster` is **1.5 M / 2.08 d** and
   `Extra Extra Orbs` **925 M / 7.41 d** (the second orb alone is 900 M = **36×** the first), `Energy Shield Extra Hit`
   **890 B / 43.98 d** for two extra charges; together they cost 0.92 B coins — under one printed income second at
   700 T/day — and are pure clock, so they belong in a short side-slot.
8. **Gates** printed on the pages: `Double Death Ray` **T3 W300**, `Energy Shield Extra Hit` **T4 W300**,
   `Extra Orb Adjuster` **T6 W50**, `Extra Extra Orbs` **T6 W80**, all four Recharge lines **T14 W60**,
   `Super Tower Bonus` **T8 W300**.

### The Perk Research category priced line by line (new, Rev 32)

Nine lines from `Perk Labs/Unlock Perks`, `Perk Labs/Waves Required`, `Perk Labs/Auto Perk Pick` (the *Auto Pick Perks*
lab), `Perk Labs/Standard Perk Bonus`, `Perk Labs/Perk Option Quantity`, `Perk Labs/First Perk Choice`,
`Perk Labs/Ban Perks`, `Perk Labs/Improve Trade-Off Perks`, `Perk Labs/Auto Pick Ranking`; caps re-add to the census
(`100 + 25 + 32 + 10 + 8 + 2 + 1 + 1 + 1 = 180` over **9** lines ✓). None of these pages prints a `Total` row, so every
figure below is a fresh re-add — `tools/perk-research-family.ps1`.

| Line | Levels | Σ coins | Σ clock | printed value law | coins per unit of value |
|---|---|---|---|---|---|
| `Waves Required` | **100** | **3.234 165 q** (3 234.165 T) | 254 459 903 min = **176 708.27 d** | `−1n` waves ⇒ −100 | 3.234 2 × 10¹³ |
| `Ban Perks` | 8 | **1.101 116 11 q** | 953 330 min = 662.03 d | `1 … 8` banned slots | 1.376 4 × 10¹⁴ |
| `Standard Perk Bonus` | 25 | 1.079 14 T | 534 339 min = 371.07 d | `+1n` % ⇒ +25 % | 4.316 6 × 10¹⁰ |
| `Auto Pick Ranking` | 32 | 948.49 B | 7 721 837 min = 5 362.39 d | ranks the `1n`-th perk | 2.964 0 × 10¹⁰ |
| `Improve Trade-Off Perks` | 10 | 17.261 35 B | 60 407 min = 41.95 d | `+1n` % ⇒ +10 % | **1.726 1 × 10⁹** |
| `First Perk Choice` | 1 | 1 B | 6 666 min = 4.63 d | `Unlocked` | 1.0 × 10⁹ |
| `Perk Option Quantity` | 2 | 2.2 B | 21 832 min = 15.16 d | `+1` / `+2` choices | 1.1 × 10⁹ |
| `Auto Pick Perks` | 1 | 100 M | 7 166 min = 4.98 d | `Unlocked` | 1.0 × 10⁸ |
| `Unlock Perks` | 1 | 1.5 M | 4 999 min = 3.47 d | `Unlocked` | 1.5 × 10⁶ |
| **Σ 9 lines** | **180** | **4.337 329 q** | 263 770 479 min = **183 173.9 d** = 501.5 y | — | — |

1. **`Waves Required` is the most clock-expensive single line in the entire census: 176 708.27 d.** One line carries
   **37.3 %** of the whole priced bill’s clock (and 74.6 % of this category’s coins, 96.5 % of its clock) — it beats the
   32-lab mastery block (18 000 d) by **×9.8**. Boosted it is still the longest single thing a player can own:
   **35 341.7 d** on five slots, **9 487.7 d** with the ×3.725 stack. Yet its level 1 is **100 K / 99 min** ⇒ buy the head
   and stop; the tail is where the clock goes to die.
2. **The stop-level table for a sub-T11 queue** (`Waves Required`, Σ through level *k*): *k* = 3 → **0.63 d** for −3
   waves; *k* = 5 → 27.5 M / **1.89 d**; *k* = 10 → **2.42 B / 11.43 d**; *k* = 25 → **719.40 B / 364.13 d**;
   *k* = 50 → **49.015 T / 7 776.49 d**; *k* = 100 → **3.234 165 q / 176 708.27 d**. The knee is between 25 and 50: the
   last level costs 159.25 B at *k* = 25 and 5.1 T at *k* = 50 (**×32** for 25 more waves). Its asymptotic ratios are a
   new pair — cost **1.052 1**, time **1.036 1** — so the tail is quasi-geometric, not the ×1.15 of the named families.
3. **`Ban Perks` contributes a new clock shape: an exact doubling ladder.** Its eight times are 3 333 / 6 666 / 13 333 /
   29 999 / 60 000 / 120 000 / 239 999 / 480 000 min, i.e. ratio **2.0000** on six of seven steps and **2.25** at level 4
   (the single break) — while its *cost* column is the printed decimal ladder `10 M, 100 M, 1 B, 15 B, 100 B, 1 T, 100 T,
   1 q` (ratios 10, 10, 15, 6.67, 10, 100, 10). Σ = **1.101 116 11 q** / 662.03 d, of which the last two levels alone are
   1 100 T (**99.9 %**). Reading: ban slots 1–6 are 1 116 B of coins, slots 7–8 are 1.1 q.
4. **Two exact shared time cells, and no shared columns otherwise.** `Perk Option Quantity` level 1 and `Auto Pick Perks`
   both print **4 d 23 h 26 m** (7 166 min, 0 differing cells) and `First Perk Choice` equals `Ban Perks` level 2 at
   **4 d 15 h 6 m** (6 666 min, 0 differing cells) — so the single-level unlocks share a printed “time alphabet”
   {4 999, 6 666, 7 166, 14 666} min. The two long ladders are *not* one column: `Standard Perk Bonus` vs `Waves Required`
   differ on 24 of 25 time cells and 18 of 25 cost cells, yet their **step ratios agree to four decimals from level 6**
   (2.475 8 vs 2.476 5, 2.156 8 vs 2.157 1, 1.947 7 vs 1.947 8) — the same exponential tail on a different head.
5. **`Improve Trade-Off Perks` is the best coins-per-point line in the category** (**1.726 1 × 10⁹** per +1 %, 4.19 d per
   +1 %) and its cost ladder is the only *accelerating* one here: the step ratio dips to **1.136 0** at level 4 then rises
   to **1.523 2** at level 10, while its time ratios decay monotonically (1.557 0 → 1.188 6). All ten levels are
   **17.26 B / 41.95 d**, so unlike `Waves Required` there is no reason to stop early.
6. **`Auto Pick Ranking` is the third humped clock** — ratios 1.116 9 → peak **1.327 4** at level 11 → 1.135 0 at the
   tail — and the cheapest per printed unit after the Trade-Off line (2.964 0 × 10¹⁰ coins per ranked perk, but 167.57 d
   each). 5 362.39 d of clock for 32 ranked perks; it is a *clock* purchase, not a coin purchase.
7. **The early game is a clock problem, not a coin problem.** The eight level-1 buys of the category
   (`Unlock Perks` 1.5 M, `Auto Pick Perks` 100 M, `First Perk Choice` 1 B, `Perk Option Quantity` 200 M, plus level 1 of
   the four ladders) sum to **1 901 800 000** coins and **30 560 min = 21.22 d**. At the printed 700 T/day that coin bill
   is **2.7 seconds** of income, so a sub-T11 player is limited only by queue slots.
8. **Gates**: `Unlock Perks` and `Waves Required` print none (the second follows the first), `First Perk Choice` **T2
   W250**, `Improve Trade-Off Perks` **T2 W400**, `Auto Pick Perks` **T4 W50**, `Perk Option Quantity` **T4 W80**,
   `Ban Perks` **T5 W40**, `Auto Pick Ranking` **T6 W10** — every one below Tier 11, so the whole category is reachable in
   the reader’s tier band; only the deep `Waves Required` tail is not.

### The Bot Research category priced line by line (new, Rev 33)

Ten lines under `Lab/<name>`: five `* Cooldown` labs (`Flame`, `Thunder`, `Golden`, `Amplify`, `Bot Bot`), four
`* Duration`/`Linger Time` labs (`Thunder Bot Linger Time`, `Golden Bot Duration`, `Amplify Bot Duration`,
`Bot Bot Duration`) and `Lab/Flame Bot - Burn Stack`. None of the ten pages prints a `Total` row, so every figure is a
fresh re-add — `tools/bot-research-family.ps1`.

| Line | Levels | Σ coins | Σ clock | printed value law | coins per unit of value |
|---|---|---|---|---|---|
| `* Cooldown` **× 5** (Flame T5 W60 · Thunder T5 W70 · Golden T5 W80 · Amplify T5 W90 · Bot Bot **T6 W60**) | 25 each | **1.808 T** each (**9.041 T** for all five) | 830 411 min = **576.67 d** each | `−1n` s ⇒ −25 s | 7.233 0 × 10¹⁰ |
| `* Duration` **× 4** (Thunder **Linger** · Golden · Amplify · Bot Bot, all T10 W50) | 20 each | **664.838 T** each (**2 659.35 T** for all four) | 1 229 315 min = **853.69 d** each | `0.5n` s ⇒ +10 s (Linger prints `3.5 + 0.5n` ⇒ 13.0) | 3.324 2 × 10¹³ |
| `Flame Bot - Burn Stack` (T10 W50) | 5 | **567.07 T** (exact-law sum **567.062 5 T**) | 442 973 min = 307.62 d | `1n` stacks | 1.134 1 × 10¹⁴ |
| **Σ 10 lines** | **210** | **3 235.464 T** = 3.235 5 q | 9 512 288 min = **6 605.8 d** = 18.09 y | — | — |

1. **Two shared columns carry eight of the ten lines, cell for cell.** The five `* Cooldown` pages print the same 25
   costs (`30 M … 398.88 B`) and the same 25 times (`1d 14h 53m … 85d 8h 22m`); the four `* Duration`/`Linger` pages
   print the same 20 costs (`100 B … 221.68 B`) and the same 20 times (`8d 8h 0m … 118d 14h 21m`) — **0 differing cells**
   in both cases. Eight census lines, two price ladders: the per-line bill is **1.808 T / 576.67 d** for a cooldown and
   **664.838 T / 853.69 d** for a duration.
2. **The Duration column is the raw family law undistorted** — cost ratio **1.5000** (max relative deviation
   **1.953 × 10⁻³**, entirely from the 3-s.f. prints `759.38 B` and `1140 B`) and **×1.1500 on all nineteen time steps**
   (max deviation **2.740 × 10⁻⁵**). `Burn Stack` matches it too (cost deviation **3.445 × 10⁻⁵**, time
   **2.877 × 10⁻⁶**). That lets T015’s closed form price a whole line from its first row:
   `t₁ × (1.15ⁿ − 1) / 0.15` gives **1 229 323.0 min** for the duration line against the printed re-add
   **1 229 315 min** (Δ **8 min** = **6.5 × 10⁻⁶**) and **442 974.4** for Burn Stack against **442 973** (Δ 1.4 min). The
   **Cooldown** column is the distorted one: its first ratio is **2.0017** where the law says 1.5, then 1.5254 / 1.4427 /
   1.5225 / 1.6712 / 1.7808 / **1.8036** (peak) and a decay to 1.5779 — the head/tail-with-hump shape of §Attack
   Research, max deviation **2.506 × 10⁻¹**.
3. **`Thunder Bot Linger Time` is the duration column shifted by 3.00 on every cell** (0 of 20 differ): the value ladder
   is `3.5 → 13.0` where the three `* Duration` ladders are `0.5 → 10.0`, same step `0.5`, same bill, same clock. So the
   Thunder bot’s second lab is a copy with a 3-second head start — it is worth its first levels *before* the other three.
4. **Three independent cross-checks against T015 all re-add.** Cooldown levels 1–5 = 30 + 60.05 + 91.6 + 132.15 +
   201.2 = **515.0 M** ✓ (T015 §4 “cooldown-lab block 1 = **515.0 M** on all three bots”); duration levels 1–5 =
   **1 318.75 B = 1.32 T** ✓ (T015’s Bot Bot `* Duration` block); the whole duration line = **853.69 d** ✓ (T015 prints
   **853.7 d ≈ 2.34 y**). Burn Stack from the printed cells is **567.07 T** against the law’s **567.062 5 T** (T015:
   **567.06 T**) — the gap is exactly the 5-s.f. rounding of the `145.13 B` and `217.69 B` cells.
5. **The census moves to 10 lines / Σ 210 for this category** (`5 × 25 + 4 × 20 + 5 = 210`). The Rev-23 census printed
   **8 / 165** because the two `Bot Bot` lines (25 + 20 = **45** levels) were missing; `165 + 45 = 210` ✓. With the
   32-mastery-lab reading that makes the whole census **191 lines / Σ 5 017** (`4 693 − 99 + 378 + 45`), and on the
   12-lab reading **171 / Σ 4 837** (§Card Research finding 4, H063).
6. **Coins and clock bind on different halves of the category.** The five cooldowns are **0.28 %** of the category’s
   coins but **43.65 %** of its clock; the four duration labs are **82.19 %** of the coins for **51.69 %** of the clock;
   `Burn Stack` alone is **17.53 %** of the coins for **4.66 %** of the clock. Per clock-day the cooldown lab is the
   cheapest thing in the category by **≈590×** against `Burn Stack` (0.28/43.65 = 0.0064 vs 17.53/4.66 = 3.76) — all five
   maxed together are **9.041 T**, i.e. **18.6 minutes** of the printed 700 T/day income, so they are a queue decision
   only. Per printed unit: **−1 s** of cooldown = 7.233 0 × 10¹⁰ coins / 23.07 d; **+0.5 s** of duration = 3.324 2 × 10¹³
   / 42.68 d; **+1 burn stack** = 1.134 1 × 10¹⁴ / 61.52 d.
7. **Stop-level prefixes.** *Cooldown*: *k* = 3 → 181.65 M / 5.91 d; *k* = 5 → **515.0 M / 11.74 d**; *k* = 10 →
   **7.69 B / 37.32 d**; *k* = 15 → 80.58 B / 99.37 d; *k* = 20 → 462.95 B / 249.45 d; *k* = 25 → 1 808.24 B / 576.67 d.
   *Duration*: *k* = 3 → 475 B / 28.94 d; *k* = 5 → **1 318.75 B / 56.19 d**; *k* = 10 → 11 328.13 B / 169.20 d;
   *k* = 15 → 87 368.13 B / 396.50 d; *k* = 20 → 664 838 B / 853.69 d. *Burn Stack*: *k* = 1 → **43 T / 45.63 d** for a
   single stack — the single dearest first level in the category, and it is 100 % clock-bound above *k* = 3
   (204.25 B / 158.43 d). The nine level-1 buys (five cooldowns + four durations) are **400 150 000 000** coins for
   **59 665 min = 41.43 d**.
8. **Gate skew to read on the device.** Today’s `Lab/Bot Bot Cooldown` prints **tier 6 wave 60**; T015’s table has
   **T6 W90** and its 2026-11-02 fetch showed **T5 W90** (footnote ¹ there). The other four cooldown gates form the
   clean **W60/W70/W80/W90** ladder across T5, and all four duration labs plus `Burn Stack` print **T10 W50**.

### The Bot category on a calendar-day scale — the joint medal/lab queue (new, Rev 37)

The ten lines above are priced in **two** scarce resources (coins and lab-slot clock), while the 25 bot **medal** lines of
[T015](T015-bot-economy.md) §3.3–§3.4 are priced in one (medals). Putting them in one queue needs a numeraire; the only one
that is printed for every currency is **time**: `cost_days = max( price / income_of_that_currency , Σclock / (1440 × slots) )`
and the statistic is `ln(value ratio) / cost_days`, i.e. **relative value per calendar day**. Incomes used: medals
**607.5 per week = 86.786/day** F2P (**1 080/week = 154.286/day** boosted, **677.5** and **1 150** with the two `Fetch`
passes, T013 §2.4) and coins the player’s own printed `/day` (**700 T/day** at the top of the printed ladder). The **par**
is the cosmetic line: `0.029559 / (1 000/86.786) =` **0.002 565 per day**.
`tools/lab-day-density.ps1` computes every cell from the printed sums above.

**Rev 43 unit note.** T013 §2.4 prints the medal flow **per week** (an event is 2 weeks and pays **1 215** F2P /
**2 160** boosted, so `1 215/2 =` **607.5/week**). Rev 37–42 divided by **607.5 as if it were a daily** figure, which
made every medal leg 7× too short. The per-week print is the one the game itself reproduces:
`212 660/1 215 =` **175.03 events** `× 2 =` **350.06 weeks**, exactly T015’s own “175.0 events ≈ 350 weeks”. Every medal
density below is therefore the Rev 42 value **÷ 7**, and no coin/clock/stone figure changes.

**1. Medal blocks all clear the par; only the two coin-bound lab layers fall under it.**

| buy | cost | days | ln | per day |
|---|---|---|---|---|
| **Echoing Shot 9 lv** | 8 100 m | 93.33 | 1.3863 | **0.014 853** |
| **Flame Cooldown 15 lv** | 5 700 m | 65.68 | 0.9163 | **0.013 951** |
| Titan Shock 20 lv | 11 500 m | 132.51 | 1.6094 | 0.012 145 |
| Thunder’s four lines | 30 600 m | 352.59 | 3.9850 | 0.011 302 |
| Golden’s four par lines | 33 780 m | 389.23 | 3.0920 | 0.007 944 |
| **whole medal sheet (445 taps)** | 212 660 m | 2 450.40 | 17.7550 | **0.007 246** |
| cosmetics (the par) | 1 000 m | 11.52 | 0.0296 | 0.002 565 |
| — lab category, all ten lines | 3.235 5 q | 1 321.2 (5 slots) | 4.5990 | **0.003 481** |

⇒ **the medal layer is 2.08× the lab category per calendar day** (`0.007 246/0.003 481`, exactly 14.57/7), so the
ordering of those two blocks is unchanged, but the whole gap narrowed by the 7×: **finish the medal sheet
(T015 §3.4) first, run the bot labs in the lab slots behind it**. The lab category’s own value is
not small — `Σ ln = 4.5990` is ~26 % of the medal layer’s 17.755 — it is simply 2.1× slower to accumulate.
The par drops to **0.002 565**, which now sits *between* the clock-bound lab layers (all ≥ **0.003 387**) and the two
coin-bound ones (`C` **0.000 020**, `P` **0.000 006**) — so the par’s role is now exactly the `C`/`P` cut-line.

**2. Inside the lab category the best order depends on whether coins bind** (the two-resource flip):

| line | Σ coins | Σ slot-days | ln | **per day at 5 slots** | per coin |
|---|---|---|---|---|---|
| `Burn Stack` (5 lv) | 567.06 T | 307.6 | 0.6931 | **0.011 266** | 1.222 × 10⁻¹⁵ |
| `Thunder Linger Time` (20 lv) | 664.838 T | 853.7 | 1.3499 | **0.007 906** | 2.030 × 10⁻¹⁵ |
| `Flame Bot Cooldown` (25 lv) | 1.808 24 T | 576.7 | 0.4055 | 0.003 516 | **2.242 × 10⁻¹³** |
| the three `* Duration` (20 lv) | 664.838 T | 853.7 | 0.4055 | 0.002 375 | 6.099 × 10⁻¹⁶ |
| the four 120-s `* Cooldown` (25 lv) | 1.808 24 T | 576.7 | 0.2336 | 0.002 026 | 1.292 × 10⁻¹³ |

* **clock-bound (rich, ≳ 10 T coins/day)**: `Burn Stack → Linger Time → Flame Cooldown → Duration ×3 → Cooldown ×4`.
* **coin-bound (the 1e11–1e13/day range most sub-T11 saves are in)**: the order **inverts** to
  `Flame Cooldown → the four Cooldowns (2.242e-13 / 1.292e-13 per coin) → Linger Time → Burn Stack → Duration`, because the
  cooldown labs are **212×** the duration labs per coin (finding 6’s “0.28 % of the coins for 43.65 % of the clock”).
* **The crossover incomes** (5 slots, from the same script): the **cooldown** lab is coin-bound below
  **15.68 B** coins/day, the **duration** lab below **3.894 T**, **Burn Stack** below **9.217 T**. So at 1 000 B/day the
  Linger/Burn/Duration lines are still coin-bound while the five cooldown labs are already clock-bound — which is exactly the
  “coins and clock bind on different halves” finding, now with the thresholds.
* Slot count scales the clock term linearly: every lab density is `×slots`, so at **1 slot** the best lab line
  (`Burn Stack`) is **0.002 253**/day, **0.88× the par** (0.002 565 — just under it); at 5 slots it is 0.011 266,
  **4.39× the par** (above it). The lab category overtakes the par once the slots are there, while the medal sheet still
  leads the whole block 2.08×; the flip only re-orders the labs among themselves.

**3. Print correction found by the re-add.** Finding 7 lists Burn Stack’s `k = 3` prefix as “**204.25 B**”; the printed
column is `43 + 64.5 + 96.75 =` **204.25 T** (and the five-level total is **567.06 T**, so a `B` suffix is impossible).
The prefix ladder used above is therefore `k = 1 · 3 · 5 = 43 T · 204.25 T · 567.06 T` for Burn Stack,
`475 B · 1 318.75 B · 11 328.13 B · 87 368.13 B · 664 838 B` for the duration column and
`181.65 M · 515.0 M · 7.69 B · 80.58 B · 462.95 B · 1 808.24 B` for the cooldown column — every block delta re-adds to the
line total, and `5 × 1.808 24 T + 4 × 664.838 T + 567.06 T =` **3.235 455 7 q** = the printed **3.235 5 q** ✓.

### The whole lab tree on the calendar — seventeen layers in one queue (new, Rev 38)

The day-scale model of the previous section is not specific to the bots: every layer of §Appendix B already prints
`Σ coins` and `Σ clock`, so the same two divisions put **all seventeen priced layers** (the 191-line census) in one line
with the medal sheet. `tools/lab-tree-day-ledger.ps1` prints every cell below.

`coin-days = Σ coins / income_coins` · `calendar days = Σ clock / slots` (and `/ 3.725` again with the lab-speed stack) ·
`cost = max(both)`, at the anchors **700 T coins/day**, **5 slots**, medals **607.5 per week = 86.786/day** (Rev 43).

| layer | lines | Σ coins | coin-days | **cal-days** | + stack | binds |
|---|---|---|---|---|---|---|
| `E` `Garlic Thorns` | 1 | 1.35 M | 0.00 | **5.1** | 1.4 | clock |
| `D` Second Wind pair | 2 | 14.4301 T | 0.02 | **25.8** | 6.9 | clock |
| `F` the two `* Level Skip` | 2 | 1.49 T | 0.00 | **52.1** | 14.0 | clock |
| `G` `Super Tower Bonus` | 1 | 12.304 T | 0.02 | **179.5** | 48.2 | clock |
| `L` six named Card lines | 6 | 30.848 T | 0.04 | **237.1** | 63.7 | clock |
| `Q` twelve named `Module` labs | 12 | 0.718 3 Q | 1 026.1 | **1 068.3** | 286.8 | clock |
| `O` Bot Research (10 lines) | 10 | 3.235 5 q | 4.62 | **1 321.2** | 354.7 | clock |
| `K` Utility | 10 | 8.906 T | 0.01 | **2 017.1** | 541.5 | clock |
| — the whole medal sheet (445 taps, F2P) | 445 taps | — | — | **2 450.4** | 2 450.4 | medals |
| — the same sheet, boosted flow (1 080/wk) | 445 taps | — | — | **1 378.4** | 1 378.4 | medals |
| `J` Defense | 15 | 187.228 T | 0.27 | **3 010.2** | 808.1 | clock |
| `B` enemy-stat T9–T13 | 13 | 383.113 T | 0.55 | **3 025.6** | 812.2 | clock |
| `H` Main Research | 15 | 826.445 q | 1 180.6 | **3 361.2** | 902.3 | clock |
| `M` the 32 mastery labs | 32 | 1.600 Q | 2 285.7 | **3 600.0** | 966.4 | clock |
| `A` the 39 UW tables | 39 | 2.4111 Q | 3 444.4 | **3 633.2** | 975.4 | clock |
| `B2` the T19 trio | 6 | 697.5 q | 996.4 | **6 026.0** | 1 617.7 | clock |
| `I` Attack Research | 9 | 25.594 T | 0.04 | **24 949.5** | 6 697.9 | clock |
| `N` Perk Research | 9 | 4.337 329 q | 6.20 | **36 634.8** | 9 834.8 | clock |
| `C` the 8 assist labs | 8 | 930.00 Q | **1 328 571.4** | 8 034.8 | 2 157.0 | **coins** |
| `P` BC + the two `Boss` lines | 7 | 2 307.577 5 Q | **3 296 539.3** | 2 290.6 | 614.9 | **coins** |

**1. The totals re-add to the printed census.** `Σ coins = 3 243.839 3 Q` ⇒ `3.2438393e21/700e12` = **4 634 055.8**
coin-days (Appendix B prints 4 634 056 ✓) and `Σ clock = 497 359.6` slot-days (the table prints 497 359.8 — a **0.2-day**
skew from the one-decimal prints, 4 × 10⁻⁷ %, logged as a rounding skew) ⇒ `/5` = **99 471.9 calendar days = 272.3 y** ✓
and `/5/3.725` = **26 703.9 d = 73.1 y** ✓. The two-side ratio is **×46.6**, the same number the Rev 36 bill prints.

**2. Two layers carry the coin side.** `C` + `P` = 1 328 571.4 + 3 296 539.3 = 4 625 110.7 of 4 634 055.8 coin-days =
**99.81 %** of the whole coin bill of the lab tree. Everything else is a rounding error on the coin axis at the 700 T
anchor — only `C` and `P` are coin-bound there, which is why the appendix’s “the binding currency flipped at Rev 34”
is really “two layers arrived”.

**3. The cheapest-first queue** (cost = the `max` column, the medal sheet inserted where it sorts) is the table order
above: `E · D · F · G · L · Q · O · K` then the **medal sheet** (**9th** item counting it, 8th of the lab layers — it was
6th under the 7×-fast medal leg of Rev 38–42), cumulative **4 906.2 d** through `K`; then `J · B · H · M · A · B2 · I · N`,
and only then the two coin-bound layers `C` and `P`. Two useful cuts of it:
* **per lab line** (cost / lines, the fair comparison when a layer’s `Σ ln` is not yet known): `E` 5.1 · `D` 12.9 ·
  `F` 26.1 · `L` 39.5 · `Q` 89.0 · `A` 93.2 · `M` 112.5 · `O` 132.1 · `G` 179.5 · `J` 200.7 · `K` 201.7 · `H` 224.1 ·
  `B` 232.7 · `B2` 1 004.3 · `I` 2 772.2 · `N` 4 070.5 · `C` 166 071 · `P` 470 934 d.
* **the year-one plan**: the five cheapest layers are only **12 of 191 lines** and **0.50 %** of the clock
  (499.6 of 99 471.9 d), and with the ×3.725 stack they need **134.1 calendar days** of slot time — so they fit
  **entirely inside** the 2 450.4-day medal sheet (Rev 43: **350.06 weeks**). Because medals and lab clock are *different*
  counters, the joint cost is the **max**, not the sum: `max(134.1 , 2 450.4) =` **2 450.4 d** (1 378.4 d on the boosted
  flow), and the two flows run in parallel. Concretely: keep the stack up, run `E → D → F → G → L → Q → O → K` in the five
  slots (**1 317.1 d** of stacked slot time) and buy medals in every gap; the lab chain is the short leg in every case, so
  the **sheet’s 175 events are the calendar**, and the first layer that does *not* fit inside it is `J`
  (cumulative 2 125.2 d stacked, still inside the F2P sheet but not inside the boosted one at 1 378.4 d).

**4. Where the flip happens, per layer** — the same crossover idea as the bot category, now for the whole tree at 5 slots
(`income* = slots × Σ coins / Σ clock`, so divide by 5 for a single slot): `E` 265.2 K · `I` 1.026 B · `K` 4.415 B ·
`F` 28.59 B · `G` 68.56 B · `J` 62.20 B · `N` 118.4 B · `B` 126.6 B · `L` 130.1 B · `D` 560.4 B · `O` 2.449 T ·
`B2` 115.7 T · `H` 245.9 T · `M` 444.4 T · **`A` 663.6 T · `Q` 672.4 T** · `C` 115.7 q · `P` 1.007 Q. Two readings:
the whole tree is clock-bound until the income climbs past a few hundred T/day, and **`A` and `Q` sit within 6 % of the
700 T anchor** — they are the two layers whose order genuinely depends on whether the player’s Fetch/stack income reads
above or below ~664 T (UW tables) and ~672 T (mastery labs) per day. Below 1e11 coins/day (the earliest saves) the
coin-bound set is `A, B, B2, C, D, H, L, M, N, O, P, Q` — **twelve of the eighteen rows** — so an early save should rank the
**per-coin** column, not the clock. (Counting: seventeen lettered layers = **18 rows**, because `B2` is a split of `B`.)

**5. Honest limits.** Only layer `O` has a printed `Σ ln` (4.5990, above) and the medal sheet has one (17.755, T015 §3.4),
so this ledger is **cost-side**: it orders the layers by the calendar they consume, and the value ranking is complete only
where `Σ ln` is known. `I` (Attack, 9 lines at 2 772 d/line) and `N` (Perk, 4 070 d/line) are the two clock hogs of the
tree — 61.9 % of the clock between them — so a mistake in either of their shared time columns moves the whole ledger most.

### The value side of the cheap layers — `Σ ln` for `E`, `D`, `F`, `G`, `L`, `M` (new, Rev 39)

The Rev 38 ledger was cost-side. Seven layers carry a **complete printed value law**, so their `Σ ln` and therefore their
density can be computed and compared with the medal sheet (**0.007 246/day**, Rev 43) and the par (**0.002 565/day**). Convention,
as in T015 §3.2: `gain = ln(value at max level / value at level 1)` read from the printed law — for a pure `k·n` law that is
`ln(N)` — and `density = Σ ln / (Σ clock / (1440 × 5 slots))`. `tools/lab-value-layers.ps1`.

| layer | the printed law | Σ ln | cal-days | **per day** | + stack | × par | × sheet |
|---|---|---|---|---|---|---|---|
| `E` `Garlic Thorns` | `+0.5 × n` ⇒ 5.0 (10 lv) | 2.302 6 | 5.09 | **0.452 374** | 1.685 094 | 176.4 | 62.4 |
| `D` Recharge Second Wind + Second Wind Blast | `2 000 → 400` waves · `25n` (4 lv) | 2.995 7 | 25.75 | **0.116 339** | 0.433 363 | 45.4 | 16.1 |
| `F` the two `* Level Skip` | `0.10 × n` ⇒ +2.00 (20 lv each) | 5.991 5 | 52.12 | **0.114 946** | 0.428 175 | 44.8 | 15.9 |
| `L` the six named Card lines | `1n`⇒30 pp · `+1/+2` ×2 · `1 500 → 300` ×2 | 8.006 4 | 237.10 | **0.033 768** | 0.125 785 | 13.2 | 4.66 |
| `M` the 32 mastery labs | ×1.4 → ×5 (9 lv, shared table) | 40.734 9 | 3 600.0 | **0.011 315** | 0.042 149 | 4.41 | 1.56 |
| `O` Bot Research | (the ten lines of Rev 37) | 4.599 0 | 1 321.16 | **0.003 481** | 0.012 967 | 1.36 | 0.48 |
| `G` `Super Tower Bonus` | `1 + 0.03n` ⇒ 1.90 (30 lv) | 0.612 3 | 179.46 | **0.003 412** | 0.012 709 | 1.33 | 0.47 |

**1. Eleven of the sixteen value-priced rows outrank the whole medal sheet.** Sorted by density (Smith’s rule =
the schedule that maximises the `Σ ln` delivered by a deadline):
`E` 0.452 374 · `D` 0.116 339 · `F` 0.114 946 · `L` 0.033 768 · `Q` 0.025 603 · `A` 0.018 143 · `B` 0.014 480 ·
`J` 0.014 128 · `H` 0.011 422 · `M` 0.011 315 · `K` 0.009 941 · **medal sheet** 0.007 246 · `O` 0.003 481 ·
`G` 0.003 412 · (`B2` 0.003 387, `C` 0.000 020, `P` 0.000 006). So the practical order is
**`E → D → F → L → Q → A → B → J → H → M → K`, then the medal sheet, then `O` `G` `B2`, then the par, then `C` `P`** — the
one change against the cost-side queue of Rev 38 is that **`L` is 9.9× the density of `G`** (8.0064/237.1 vs 0.6123/179.46),
so `G` drops behind the sheet. Concretely, with the stack up: `E` is a **1.4-day** item, `D` **6.9 d**, `F` **14.0 d**,
`L` **63.7 d** — the four of them are 86 calendar days of slot time for `Σ ln` **19.30**, against the sheet’s 17.755 for
2 450 days.
*(`Garlic Thorns` is the highest-density object found anywhere in this research: **1.685 094/day** with the stack,
**657×** the par — it is a 1 350 000-coin, 10-level line whose whole ladder is 25.45 slot-hours of clock.)*

**2. Convention sensitivity (the two ways to read a `k·n` law).** Taking the level-0 base instead of the level-1 base, i.e.
`ln((ρ+N)/ρ)` with `ρ = base/increment`, changes `Σ ln` by `+4.1 %` (`E`), `+1.6 %` (`F`), `+4.8 %` (`G`), `+1.0 %` (`L`’s
Death Ray) and `+16.1 %` (`D`’s Blast) — none of which moves any rank. Only the two-level `+1`/`+2` lines are sensitive
(`+58.5 %`, `ln 2` → `ln 3`), and they are 0.6931 of `L`’s 8.0064, so `L`’s density stays in the 0.028–0.046 band.

**3. Two printed per-unit figures re-add from these laws** — an independent check that the laws were transcribed right:
`F` `0.745 T / 2.00 points =` **3.725 × 10¹¹ coins/point** = the printed **373 B** ✓; `M` `50.00 q /(5 − 1.4) =`
**1.388 9 × 10¹⁶** ✓ = the printed figure, and `ln(5/1.4) = 1.272 966` × 32 = **40.7349** ✓ (assuming all 32 mastered cards
share the printed 1.4 → 5 table, see below). The layer sums also re-add: `D` `14.430 T + 84.3 M =` **14.430 09 T** vs the
printed **14.4301 T** ✓; `L`’s six lines = **30.847 1 T** and **1 185.53 d** vs the printed **30.848 T / 1 185.5 d**
(Δ **0.000 9 T**, 3 × 10⁻⁵ %, the two-significant-figure `890 B` line) and `M` `32 × 562.5 =` **18 000 d** ✓.

**4. Still cost-side for the other ten layers.** `A`, `B`, `B2`, `C`, `H`, `I`, `J`, `K`, `N`, `P`, `Q` have no `Σ ln` yet
(their per-line laws are printed but not summed), and the two ceilings of Rev 38 hold regardless: `I` and `N` would need
**140.6** and **206.5** `ln` per line to catch the sheet, while the richest single lab line found here is `E` at **2.3026**
— so the sheet stays ahead of every unpriced layer by two orders of magnitude.

### Four more layers on the value side (`Q`, `J`, `H`, `K`), and the merged schedule (new, Rev 40)

`tools/lab-value-layers-2.ps1` sums the printed laws of the four category layers that Rev 39 left out — the twelve named
`Module` labs (`Q`), **Defense** (`J`), **Main** (`H`) and **Utility** (`K`) — line by line, and merges them with the seven
layers above. Two readings of a percentage-point law are carried, because the pages print pp steps without saying whether
the underlying quantity is `1 + pp`:

* **reading R (raw):** a `k·n` pp line contributes `ln(N)` (the ratio of the printed totals, `pp_N / pp_1`);
* **reading P (physical):** the same line contributes `ln((1 + pp_N) / (1 + pp_1))`.
  `1 + kn` and pure-multiplier laws (`1 + 0.03n ⇒ 4.00`, `×1.4 → ×5`, the wave counts) are identical in both; unlock-only
  lines take `ln = 0`.

| layer | lines | Σ ln (**R**) | per line | cal-days | **/day (R)** | + stack | /day (P) |
|---|---|---|---|---|---|---|---|
| `Q` twelve named `Module` labs | 12 | **27.351 3** | 2.279 | 1 068.3 | **0.025 603** | 0.095 372 | 0.014 562 |
| `J` Defense Research | 15 | **42.529 0** | 2.835 | 3 010.2 | **0.014 128** | 0.052 628 | 0.008 155 |
| `H` Main Research | 15 | **38.390 5** | 2.559 | 3 361.2 | **0.011 422** | 0.042 546 | 0.004 099 |
| `K` Utility Research | 10 | **20.051 6** | 2.005 | 2 017.1 | **0.009 941** | 0.037 030 | 0.005 625 |

**1. The merged schedule (eleven of the eighteen rows are now value-complete).** Reading R, with the Rev 43 densities:
`E` 0.452 374 > `D` 0.116 339 > `F` 0.114 946 > `L` 0.033 768 > `Q` 0.025 603 > `J` 0.014 128 > `H` 0.011 422 >
`M` 0.011 315 > `K` 0.009 941 > **medal sheet** 0.007 246 > `O` 0.003 481 > `G` 0.003 412 per day, with **par** 0.002 565
sitting below `G`. Reading P (`Q` 0.014 562 · `J` 0.008 155 · `K` 0.005 625 · `H` 0.004 099) puts the sheet at 8th and
re-orders the middle block to `M > J > sheet > K > H`:
`E · D · F · L · Q · M · J · sheet · K · H · G · O · par`.
**Invariant in both readings:** `E > D > F > L > Q` at the top (the sheet fell from the head to the middle of the list when
the medal leg was corrected) and `M` inside the middle block.
The block whose order is *not* stable is `J`, `H`, `K` — 40 lines, the largest uncertainty left in the schedule.
Coverage: **11 rows / 106 of 197 lines / Σ ln 193.565** for **14 877.4** calendar days at five slots.

**2. Two layers are “one line deep” — the per-coin asymmetry is enormous.**
* `Q`: the four `* Effect Bans` labs are **99.70 %** of the coins (0.716 2 Q of 0.718 3 Q) for **21.27 %** of the `Σ ln`;
  the other eleven lines cost 117.513 T + 2.063 56 q and are **1 216× better per coin** — buy `Reroll Shards`
  (`ln 4.605` for 13.327 9 T), `Daily Mission Shards` (3.912 for 4.500 02 T) and the two `* Cost` twins before any ban lab.
* `H`: the single `Enhancement Coin Discount` line is **100.00 %** of the layer’s coins (8.264 45 × 10¹⁷ of 8.264 5 × 10¹⁷)
  and **12.00 %** of its `ln`; the other fourteen lines cost **3.536 × 10¹³** coins in total (the four-line block
  446 783 756 + the two 99-level discount lines 944 965 752 + `Game Speed` 1 714 800 + `Buy multiplier` 562 500 +
  `Presets` 3.535 35 × 10¹³ + the five unlock lines) and are **171 464× better per coin**. Same conclusion as finding 1 of
  §Main Research, now on the day scale: leave that one line for last and it never binds.

**3. Two print corrections from the level sums.**
* **Defense is 655 levels, not 635.** The §cap table row itemises `100+100+100+50+20+20+35+20+10+50+20+30+20+10+60+10 =`
  **655** ✓ and the §Defense Research table’s `Σ 16 lines` row prints **635**, short by exactly **20** — one of the four
  20-level lines was dropped in that addition. Layer `J` is **15 lines / 645 levels** (655 − `Garlic Thorns` 10), which is
  what the value sum above uses.
* **`Presets` (5 levels) vs `Card Presets` (1 level) is one row that moves a rank.** With the 5-level print, layer `H` is
  `Σ ln 38.3905 → 0.011 422`; with the cap table’s 1-level `Card Presets` (which is what makes the category 15 lines /
  **712** levels exactly) it is **36.7811 → 0.010 943**, and `M` sits between the two at **0.011 315** ⇒ `H` and `M` swap.
  Filed as **H069**; one look at the **Lab** screen’s Main category settles it.

### Layer `A` on the value side — the 39 UW lab tables, and the schedule with it (new, Rev 41)

The last large layer whose per-line laws are already printed is `A`: **Appendix A.1 lists 31 leveled tables** and the nine
pages also print **eight one-level unlock rows** (`565.255 B / 70.32 d` together), so `31 + 8 =` **39** ✓ — the layer's line
count closes without a new fetch. Each line's `ln` is `ln(v_cap / v_1)` from the printed `v1`/`step` columns
(`tools/lab-value-layer-A.ps1`), with the two readings of the percentage-point lines carried as in Rev 40.

| quantity | reading **R** (printed values) | reading **P** (`1 + pp`) |
|---|---|---|
| `Σ ln` of layer `A` | **65.916 2** | **63.482 6** |
| per line (39 lines) | **1.690** | 1.628 |
| calendar days (5 slots) | 3 633.2 | 3 633.2 |
| **density /day** | **0.018 143** | **0.017 473** |
| with the ×3.725 stack | **0.067 582** | 0.065 087 |
| against the par (0.002 565, Rev 43) | **7.07×** | **6.81×** |
| layer `A` ÷ the medal sheet (0.007 246) | 2.50× | 2.41× |

**1. `A` is above the par on both readings** (7.07× under R, 6.81× under P). Under the Rev 38–42 par of 0.017 957 this
layer was the only one that *straddled* it (1.010× vs 0.973×); that straddle was an artefact of the 7×-fast medal
denominator, and with the corrected par the layer is comfortably above it in both readings while the *relative* order of
`A` against the other layers is untouched. Under R the schedule is `E · D · F · L · Q · A · J · H · M · K · sheet · O · G ·
par`; under P it is `E · D · F · L · A · Q · M · J · sheet · K · H · G · O · par`. The head (`E D F L Q`) and the tail
(`O > G > par`) are unchanged in both.

**2. Inside the layer the L-IV family dominates the value.** Five lines print `ln 30 = 3.401 197` — `Chrono Field
Duration`, `Chain Thunder`, `Lightning Amplifier-Scatter`, `Swamp Radius`, `Swamp Rend - Basic Enemies` — then
`Golden Tower Bonus` at `ln 25 =` **3.218 9**, then five lines at `ln 20 =` **2.995 7** (`Golden Tower Duration`, `Chrono
Field Range`, `Inner Mine Blast Radius`, `Inner Mine Rotation Speed`, `Missile Despawn Time`) and `Missile Amplifier`
**2.734 4**. The cheapest block is also dense: the six L-I/L-III lines that cost **287–608 M** for their first ten levels
carry **19.190 8** of the layer's `ln` = **29.1 %**.

**3. The eight unlock rows are `ln 0` by convention, and that is a real assumption.** If an unlock is instead worth one
step each (`ln 2`), the layer's `Σ ln` rises to **71.461 4** and its density to **0.019 669**/day — still below `Q`
(0.025 603) and above the par, so the schedule does not move. `Swamp Rend - Additional Enemies` is the one **text-valued**
law (enemy types) and stays at 0 in every reading.

**4. Coverage after this pass:** **12 of the 18 rows**, **145 of the 197 lines** (`106 + 39`), `Σ ln` **259.481**
(`193.565 + 65.916`) over **18 510.6** calendar days at five slots. What remains is `B`, `B2`, `C`, `I`, `N`, `P`
(52 lines), of which `I` and `N` still need their per-line value columns re-transcribed.

### The four single-law blocks (`B`, `B2`, `C`, `P`) — sixteen rows value-complete (new, Rev 42)

Each of these layers is one arithmetic law repeated, so their `Σ ln` needs no new transcription: `B` is nine
`−0.40 % × n` lines (cap `−12.00 %`) plus the `−0.30 %` Protector trio and `Ranged Enemy Range` (`−0.50n`, cap
`−15.00 %`), `B2` the six T19-trio lines (`−0.40n` to `−12.00 %`), `C` the eight assist labs (`+1 pp/level`, 30 levels),
`P` the BC line (`2n` to 20 %), the four Groups (`1n` to 20/20/10/10 %) and the two `Boss` twins (`−0.30n` to `−9.00 %`).
`tools/lab-value-blocks.ps1`, `cost = max(Σ coins / 700 T , Σ clock / 5)`.

| layer | lines | Σ ln (**R**) | Σ ln (**P**) | cost (the `max`) | binds | **/day R** | /day P | per-line R |
|---|---|---|---|---|---|---|---|---|
| `B` enemy-stat T9–T13 band | 13 | **43.810 1** | 1.513 4 | 3 025.6 d | clock | **0.014 480** | 0.000 500 | 3.370 |
| `B2` the T19 trio | 6 | 20.407 2 | 0.743 0 | 6 026.0 d | clock | 0.003 387 | 0.000 123 | 3.401 |
| `C` the 8 assist labs | 8 | 27.209 6 | 21.926 7 | **1 328 571.4 d** | **coins** | 0.000 020 | 0.000 017 | 3.401 |
| `P` BC + the two `Boss` lines | 7 | 19.701 6 | 1.002 4 | **3 296 539.3 d** | **coins** | 0.000 006 | 0.000 000 31 | 2.815 |

**1. Every shared-ladder line is exactly `ln 30` per line** — the caps are 30 steps of their own printed step
(`−12.00 % / −0.40 % = 30`, `−9.00 / 0.30 = 30`, `−15.00 / 0.50 = 30`, and the assist labs' `30 pp / 1 pp = 30`), so
`B`, `B2` and `C` all sit at per-line **3.401** and `P` at **2.815** (its two 10-level Group lines pull the average down).
That is a checkable identity: **a lab line's `ln` under reading R is `ln(cap ÷ step)`**, so the value column alone predicts
the layer totals without re-adding anything.

**2. The reading fork is 29× for `B`, and it is the largest in the ledger.** Under R a `−0.40n %` line is worth
`ln 30 = 3.401 2`; under P (the physical multiplier, `0.996 → 0.88`) it is **0.123 8**, and the layer moves from
**0.014 480**/day (just under the par, above `J`) to **0.000 500**/day (14th of 18). The multiplier-law layers are stable
within **+0 … +16 %**, so: **use reading R for `E D F G L Q A J H M K O`, and treat `B`, `B2`, `P` as “reduce a stat by a
fixed pp” (P) when the question is what the run actually gains.** The two readings disagree most exactly where the printed
law is a small pp reduction on a stat that stays near 1.

**3. The two coin-bound layers are last in both readings.** `C` and `P` cost **1 328 571.4** and **3 296 539.3** coin-days
at the 700 T anchor (their clock is only 8 034.8 d and 2 290.6 d), so their densities are **2.0 × 10⁻⁵** and
**6.0 × 10⁻⁶** per day — 4 digits below the sheet. With their **T18–T21** gates that is the same answer the cost ledger
gave at Rev 38, now from the value side: **never let a sub-T11 save spend on `C` or `P` ahead of anything else.**

**4. The merged schedule (sixteen rows), re-issued with the Rev 43 medal unit.** Reading R:
`E 0.452374 > D 0.116339 > F 0.114946 > L 0.033768 > Q 0.025603 > A 0.018143 > B 0.014480 > J 0.014128 > H 0.011422 >
M 0.011315 > K 0.009941 > sheet 0.007246 > O 0.003481 > G 0.003412 > B2 0.003387 > par 0.002565 > C 0.000020 > P 0.000006`
(the sheet is **12th** of 18, the par **16th**).
Reading P: `E 0.471099 > D 0.125005 > F 0.116818 > L 0.033768 > A 0.017473 > Q 0.014562 > M 0.011315 > J 0.008155 >
sheet 0.007246 > K 0.005625 > H 0.004099 > G 0.003577 > O 0.003481 > par 0.002565 > B 0.000500 > B2 0.000123 >
C 0.000017 > P 0.0000003` (the sheet is **9th**, the par **14th**).
**Invariant in both: the head `E → D → F → L → Q`.** Under the 7×-fast medal leg the sheet had forced its way into 4th
place; at the correct per-week flow it sits mid-list, and the practical rule is unchanged in spirit —
*head first, then the middle block in any order, `C`/`P` last.* Everything from 6th to 15th sits in the band
**0.003 … 0.026** per day, a factor of 8 across ten layers — so after the head, the order matters far less than finishing
them.

**5. Coverage: 16 of 18 rows, 179 of 197 lines, `Σ ln 370.610`** (mean **2.07** per line). Only `I` (Attack, 9 lines) and
`N` (Perk, 9 lines) still lack value columns — their pages print the laws as shapes (`L-I … L-VI`, the doubling columns)
rather than `v1`/step pairs, so they need a re-transcription pass.

### The Battle Condition category and the two `Boss` lines — the census closes at 100 % (new, Rev 34)

Five BC lines (`Lab/Battle Condition Reduction`, `Lab/Battle Conditions Group 1…4`) plus the two `Boss` lines
(`Lab/Boss Attack`, `Lab/Boss Health`); level counts re-add to the census (`10 + 20 + 20 + 10 + 10 = 70` for BC ✓ and
`2 × 30 = 60` inside the 21-line Enemies row ✓). No page prints a `Total` row; the four Group pages print their header as
`Cost(Q)` (1 Q = 10¹⁸ coins) while `Battle Condition Reduction` prints `q` per cell (10¹⁵) — `tools/battle-condition-boss-family.ps1`.

| Line (gate as printed) | Levels | Σ coins | Σ clock | printed laws |
|---|---|---|---|---|
| `Battle Condition Reduction` (**T18 W1000**) | 10 | **1.247 5 Q** (1 247 450 T) | 1 320 000 min = 916.67 d | cost **×2.05**, time arithmetic **24 000 min**/level |
| `Battle Conditions Group 1` — Resistances (**T19 W100**) | 20 | **42 Q** | 4 082 190 min = 2 834.85 d | cost arithmetic **0.2 Q**/level, time step **19 439** = 1.25 × the unit |
| `Battle Conditions Group 2` — enemy/spawn buffs (**T20 W60**) | 20 | **105 Q** | 4 898 650 min = 3 401.84 d | cost arithmetic **0.5 Q**/level, time step **23 327** = 1.50 × |
| `Battle Conditions Group 3` — enemy ultimates (**T19 W500**) | 10 | **113.33 Q** | 1 088 587 min = 755.96 d | cost **×1.5** law, time arithmetic step **15 551** = 1.00 × |
| `Battle Conditions Group 4` — durations/reductions (**T21 W1000**) | 10 | **2 046 Q** | 1 543 462 min = 1 071.85 d | cost **×2.0000** doubling (`2 Q → 1024 Q`), time step **25 660** = 1.65 × |
| `Boss Attack` **and** `Boss Health` (**T9 W50**) | 30 each | **30.412 T** each (**60.824 T**) | 1 779 748 min = **1 235.94 d** each | value `−0.30n %` ⇒ −9.00 %, cost ratios 2.0003 → 1.0949 |
| **Σ 7 lines** | **130** | **2 307.577 5 Q** (+ 60.824 T) | 16 492 385 min = **11 453.0 d** | — |

1. **The BC category is now the most expensive thing in the census: 2 307.577 5 Q** = **99.72 %** of the whole priced
   bill’s coins, and **Group 4 alone is 88.42 %** of it (`2 + 4 + … + 1024 Q = 2 046 Q`). The 32 mastery labs (1.600 Q)
   are **×1 442** smaller. Yet the category holds only **1.83 %** of the bill’s clock (8 981.2 d), so it is the one place
   where coins, not the queue, are the obstacle.
2. **Four of the five BC time columns are exact multiples of one printed unit** — the assist-lab unit
   `933 078 s = 15 551.3 min` (layer `C`): Group 1 **×1.250 0**, Group 2 **×1.500 0**, Group 3 **×1.000 0**, Group 4
   **×1.650 0** (all four to four decimals). `Battle Condition Reduction` is the exception: its step is **24 000 min =
   exactly 400 h** (1.543 3 × the unit), so it uses the round-hour unit instead.
3. **The category contains three different cost shapes**: arithmetic (`Group 1` +0.2 Q and `Group 2` +0.5 Q per level,
   exact), geometric (`Group 3` = the **×1.5** family law; the generic line = **×2.05**, nine ratios 2.045 2–2.058 1 = the
   3-s.f. print wobble), and **exact doubling** (`Group 4`, ratio **2.0000** on all nine steps) — the same doubling shape
   as `Ban Perks` (§Perk Research finding 3) but on the Q scale.
4. **`Boss Attack` and `Boss Health` are perfect twins** (0 differing cells in the cost, time and value columns), and
   **their time column is the Bot `* Cooldown` column + 1000 min** on all 25 shared levels (0 differing cells; L25:
   123 902 vs 122 902) before continuing five levels to 232 408 min = 161.39 d. So one printed ladder serves nine census
   lines with two offsets (0 for the five bot cooldowns, +1000 for the two Boss labs). Cost ratios decay from **2.0003**
   to **1.0949**. (Gate skew: §four more printed ladders records the Boss pair at **T9 W20**, the 2026-11-03 pages print
   **tier 9 wave 50** — same lab, two prints, device read pending.)
5. **What a sub-T11 player can actually buy here:** only the two Boss lines (gate **T9 W50**, inside the tier band) —
   **1.013 74 × 10¹²** coins and **41.20 d** per −0.30 % level, **30.412 T / 1 235.94 d** each for −9.00 %. All five BC
   labs are T18–T21 gates. Per queue-day the BC labs cost **2.569 3 × 10¹⁷** coins against the Boss lines’
   **2.460 7 × 10¹⁰**, i.e. **×10⁷** dearer — the BC labs are a prestige-era purchase.
6. **The printed `Value` columns disagree with the doc’s reduction model.** The pages print `2n` for the generic line
   (⇒ 20 %) and `1n` for every group (⇒ 20 / 20 / 10 / 10 %), so the five maxima sum to **80 pp** additively and
   **58.5 %** multiplicatively (`1 − 0.8 × 0.8 × 0.8 × 0.9 × 0.9 = 0.585 28`), while §the cap table keeps
   **R = 54.4 %** built from T014 §4.1’s per-step 0.21 % / 0.51 % for Groups 1–2. Logged as **H064**.
7. **Coverage after this layer: 185 / 191 lines = 96.9 %.** The Appendix B rows sum to **185** and every one is distinct
   (`Garlic Thorns` is the Defense category's 16th line, priced as layer `E`, which is why layer `J` carries 15), and
   **six lines remain unpriced** — the `Module` named labs *(closed at Rev 35, §Module named labs: layer `Q` adds them and
   the rows reach 197 for 191 distinct lines)*. The bill is **2 314.051 Q / 492 018.4 d**: **3 305 787 d =
   9 050.75 y** of coin income at 700 T/day against **1 347.1 y** of single-slot clock (269.4 y five-slot, 72.3 y
   stacked) — the first Rev at which **coins bind over the clock** (**×6.72** single-slot, **×33.6** five-slot) instead
   of the reverse.

### The twelve named `Module` labs — the census closes at 100 % (new, Rev 35)

Twelve lines from `Module Labs/<name>` (plus `Lab/Shatter Shards`, where the tabber points); their level counts re-add to
the §census Module row’s “12 lines, Σ **254**” ✓. `tools/module-named-family.ps1`.

| Line (gate as printed) | Lv | Σ coins | Σ clock | printed `Value` law |
|---|---|---|---|---|
| `Common Drop Chance` (**T4 W70**) | 10 | 19.882 B | 86 024 min = 59.74 d | `+0.10 pp × n` ⇒ +1.00 % |
| `Rare Drop Chance` (**T10 W40**) | 10 | 28.425 4 T | 158 523 min = 110.09 d | `+0.10 pp × n` ⇒ +1.00 % |
| `Reroll Shards` (**T4 W70**) | 100 | 13.327 9 T | 699 055 min = 485.45 d | `+1 shard × n` ⇒ +100 |
| `Daily Mission Shards` (**T4 W70**) | 50 | 4.500 02 T | 359 411 min = 249.59 d | `+1 shard × n` ⇒ +50 |
| `Module Shard Cost` (**T10 W40**) | 30 | 35.614 2 T | 452 440 min = 314.19 d | `−1 % × n` ⇒ −30 % |
| `Module Coin Cost` (**T10 W40**) | 30 | 35.625 7 T | 452 440 min = 314.19 d | `−1 % × n` ⇒ −30 % |
| `Unmerge Module` (**T8 W20**) | 1 | **10 M** | 2 880 min = 2 d | unlock |
| `Shatter Shards` (**T16 W40**) | 5 | 2.063 56 q | 2 120 908 min = 1 472.85 d | `+20 % × n` ⇒ +100 % |
| `Cannon Effect Bans` **and** `Armor Effect Bans` (**T10 W40**) | 4 ea | 55.050 5 q ea | 714 000 min = 495.83 d ea | `+1 ban × n` |
| `Generator Effect Bans` (**T10 W40**) | 3 | 50.505 q | 618 000 min = 429.17 d | `+1 ban × n` |
| `Core Effect Bans` (**T10 W40**) | 7 | 555.555 q | 1 314 000 min = 912.50 d | `+1 ban × n` |
| **Σ 12 lines** | **254** | **0.718 3 Q** (718 342.1 T) | 7 691 681 min = **5 341.4 d** | — |

1. **The four ban labs are 99.70 % of the category’s coins** (0.7162 Q of 0.7183 Q) for 43.68 % of its clock; `Core
   Effect Bans` alone is 555.555 q — 77.6 % of the category. The 231 levels that are neither a ban lab nor
   `Shatter Shards` cost **117.513 T** between them (the two Cost twins 71.240 T + the four cheap lines 46.273 T), i.e.
   **0.016 %** of the layer.
2. **Two master ladders carry all 18 ban levels.** Costs: 8 values on an exact **×10.0000** ladder `50 B, 500 B, 5 T,
   50 T, 500 T, 5 q, 50 q, 500 q`. Times: 8 values whose successive differences are the **100-h arithmetic** series
   `30 000, 36 000, 42 000, 48 000, 54 000, 60 000, 66 000 min` on a head of `24 000 min = 400 h` — the same 400-h unit
   as `Battle Condition Reduction` (§BC/Boss finding 2). The four labs are subsequences of both: `Cannon` = `Armor` =
   indices **{2,4,6,7}**, `Generator` = **{3,5,7}**, `Core` = **{1,3,4,5,6,7,8}**; the cost and time index sets match for
   three of the four labs, and the single unpaired cell is `Generator` L2 (cost index 5 = 500 T, time index 6 = 162 d
   12 h), so the two columns are indexed independently.
3. **Twins.** `Cannon` = `Armor` cell for cell (0/4 differing in both columns). The two Cost lines share **one time
   column** (0/30 differ) but **18/30 cost cells differ**, Σ delta **−11.53 B** — `Module Shard Cost` is the cheaper of
   the pair at every level from 2, so buy it first.
4. **Four new clock shapes, none of them the ×1.15 family law**: `Reroll Shards` ×1.0255–1.0268 (eleven steps, the most
   stable column in the doc), `Daily Mission Shards` rising **1.0260 → 1.0448**, `Common Drop Chance` ≈ ×1.075,
   `Rare Drop Chance` ≈ ×1.050. Cost tails: Reroll ≈ 1.028, Daily ≈ 1.064, and the two ten-level drop lines decay to
   ×1.4582 / ×1.5041 — they *approach* the family law from above. `Shatter Shards`’ four ratios
   (**8.7 / 2.6345 / 2.3881 / 2.1741**) reproduce the pair T010 §2.1 printed (2.3881 / 2.1741) ✓.
5. **Per-point prices (what a sub-T11 player is choosing between).** Common Drop Chance **1.988 2 × 10¹⁰** coins per
   +1.00 pp against Rare Drop Chance’s **2.842 5 × 10¹³** for the *identical* printed +1.00 pp — **×1 430 dearer**; the
   cheapest per unit is `Daily Mission Shards` at **9.000 0 × 10¹⁰** per +1 shard, then `Reroll Shards` 1.332 8 × 10¹¹,
   `Shatter Shards` 4.127 1 × 10¹⁴ per +20 %. The four in-band level-1…10 buys — Reroll L1-10 **2 200 410 000** coins /
   15.64 d, Daily L1-10 **5 960 700 000** / 15.95 d, `Common Drop Chance` all 10 levels **19 882 000 000** / 59.74 d and
   `Unmerge Module` **10 000 000** / 2 d — together cost **28 053 110 000** coins (28.05 B) for **93.33 d** of one slot,
   which is 0.0012 % of the bill’s coins: the cheap tier of this category is a queue decision, not a savings decision.
6. **Two source skews, logged.** Re-adding `Reroll Shards` L1-10 from the fandom cells gives **2 200 410 000** coins vs
   the Rev-11 print **2 240 400 402** (1.8 %, the tables differ in the early cells; the 15.64-d time Σ agrees to 3 min),
   and `Daily Mission Shards` L10 prints **2.1 B** here vs T010’s **2.19 B**. Neither changes any ratio materially.
7. **The census is closed: 191 / 191 = 100 % coverage.** With layer `Q` the Appendix B rows sum to **197** for **191
   distinct** lines (layer `C` carries 8 rows where the Module category prints 2, so +6), and no census line is unpriced.
   The bill is **2 314.769 3 Q / 497 359.8 d** = **3 306 813 d = 9 053.56 y** of coin income at 700 T/day against
   **1 361.7 y** of single-slot clock ⇒ **coins bind ×9.32** single-slot, **×46.59** five-slot (after the Rev-36 unit
   correction to layer `C`, §The Assist Module Labs: bill **3 243.8393 Q**).
8. **Beyond the census: the four `Primary Module Bonus` labs.** Both the fandom `Modules` page and T010 print the law —
   one lab per module type, **unlocked at Tier 23 wave 500**, "**increase the main effect of the module in the primary
   slot by 1 % per level, up to +30 %**" ⇒ **4 × 30 = 120 levels**, +120 pp of primary effect. No per-level table exists
   (the `Module Labs` tabber does not include them), so on the **assumption** that they share the assist ladder
   (`0.25 Q × n`, `15 551 min × n`) they cost **465.00 Q** for **20 087.1 d**, i.e. 14.3 % of this layer’s coins for
   3.76 % of its clock. **H065** carries the read that fixes it: level 1 of any `Primary Module Bonus` lab must show
   **0.25 Q = 250 000 000 000 000 000** coins and `10d 19h 11m`.
9. **The unit ladder extends past Q: `s` = 10²¹.** The slot-cost table prints cumulative `804.46Q` at L261, `5.79s` at
   L281 and `18.07s` at L300. Testing `s ∈ {10²⁰, 10²¹, 10²²}` against the trapezoid sums of the printed per-level coin
   column (106 Q, 411 Q, 886 Q) gives deviations **104.4 % / 0.3 %** for 10²⁰, **3.6 % / 0.3 %** for **10²¹** and
   **1004.4 % / 896.6 %** for 10²² ⇒ the ladder is `K M B T q Q s = 10³ … 10²¹`.
10. **The module slot ladder is printed to L300: 3 136 095 shards / 18.07 s coins** (`Modules/Cost`). Its per-level shard
    column is piecewise-linear with the implied slopes `1.4, 2, 3.5, 4.5, 6, 7, 10, 15, 20, 30, 50, 70, 100, 125, 250,
    500` per level; the top five segments’ trapezoid sums re-add to the printed cumulative deltas within **≤ 1 %**, while
    the early milestone gaps need the full 300-row read (7–22 %), so the printed `Total Shard` column is authoritative.

## Reproduction checklist

- [ ] No slot shows “completed, not started” for more than a few minutes; at least one long level is running overnight.
- [ ] The **Speed Up** menu shows **15** cells for a 1 h ×1.5 boost (that number confirms the table above).
- [ ] **Clock laws:** a lab's level-2 research time is level 1 × **1.15** while its coin
      price is × **1.5**; (8 d 8 h ⇒ 9 d 14 h at level 2); and the whole 20-level `Duration` line forecasts to ≈ **853.7 d** from `t₁ = 8 d 8 h`.
- [ ] **Family check:** `Dissonant Echo - Utility` (visible from **T17 W60**) prices level 2 at **2.25q** and
      **41 d 16 h** — coins ×2.25 and time `2 × t₁` (the arithmetic shape), so its level 10 is **208 d 8 h**, not the
      **73 d 7 h** a ×1.15 ladder would give.
- [ ] All five slots show the green speed-up background while their own timers keep their nominal length.
- [ ] Elite Cell counter still ends the day **>** 0 after all five ×1.5 renewals (if it hits 0, stop escalating multipliers).
- [ ] Record: cells at run start / run end ÷ minutes = your measured cells/h — then check it against `(1 + Tier)/2 × elites/h`.
- [ ] `Labs Speed` level 1 costs **40** coins with **0 m** base time, and its panel value reads **1.02**; level 10 = **12 116**
      coins / **1.20**; the Σ across levels 1–10 is **33 907** coins.
- [ ] `Labs Coin Discount` level 1 = **40** coins / **0.30 %** and level 10 = **12 116** / **3.00 %**.
- [ ] With one lab-speed relic equipped, the effective time shown on a line drops by the **product** (e.g. 3.725× with a
      ×1.25 relic at `Labs Speed` L99), not the sum.
- [ ] A 1-week lab's rush price is **1 000** gems (never 168 × the 1-hour price of 7.5).
- [ ] On T14 a run's average drop per Elite lands near **10.5** cells (min 7, max 14); on T13 near **7**.
- [ ] The ×8 boost line reads **1 000 000** cells/h in the Speed Up menu (it only appears on long gate labs).
- [ ] The `Coin Bonus` (or `Cells/Kill`) enhancement’s first level costs **5 B** coins and level 10’s **Total** reads
      **1.42 T**; the 300-level cap is visible in its panel.
- [ ] A Wave-Skipped wave during **Intro Sprint** still pays cells (≈ 0.22× of a normal wave = 1.1 × 0.20).
- [ ] **Census (§census):** the Lab list’s category counts are Main **15** · Attack **9** · Defense **16** · Utility **12** ·
      UW **39** · Card **10** (or **41** with the 32 mastery labs listed one-per-card, H063) · Perk **9** · Bot **10**
      (the two `Bot Bot` labs must be visible: five Cooldown + four Duration/Linger + Burn Stack) · Enemies **21** ·
      Module **14** · Battle Condition **5**; a missing line = an unclaimed milestone gate.
- [ ] **Rush prices:** a 1-day remaining reads **163** gems, 1 week **1 000**, 30 d **3 550**, 90 d **8 000**, and anything
      past 360 d reads **25 000** (the flat tail ⇒ deep lines are the cheapest gems-per-hour in the game).
- [ ] The Speed Up menu’s `all labs` price is exactly **5 ×** the single-slot price (e.g. **15 → 75**, **360 → 1 800**), and
      the skipped hours at ×1.5 are **half** the nominal duration (1 h → 0.5, 24 h → 12).
- [ ] `Daily Mission Shards` has **50** levels and `Shatter Shards` **5** and `Module Shard Costs` **30** (the last two cap at
      **+100 %** and **−30 %**).
- [ ] **Second Wind pair:** `Second Wind Blast` appears after the **T3 W150** milestone with **4** levels reading
      **25 / 50 / 75 / 100 %** and costs **1.8 M → 3.0 M → 4.5 M → 75 M**; `Recharge Second Wind` (T14 W60) has **7** levels
      whose value falls **2 000 → 400** and whose time at level 1 is **5 d 5 h**.
- [ ] With Second Wind at **star 1** the invincibility is **10 s** and at **star 7** it is **40 s** (`5 × star + 5`), and it
      fires **once per round** — a second death in the same round has no save.
- [ ] **Wall ladder (§four more printed ladders):** the six Wall labs show **50 / 20 / 30 / 20 / 10 / 60** levels and their
      value columns read `+2 %` … `+100 %`, `−10 s` … `−200 s`, `+10 %` … `300 %`, `+1 %` … `20 %`, `+1 s` … `10 s`,
      `+20 %` … `1 200 %` — one arithmetic law per line.
- [ ] **Rebuild floor:** with every reduction source maxed the Wall's rebuild time stops at **150 s** (base **1 200 s**).
- [ ] `Garlic Thorns` unlocks at the **T2 W1000** milestone, has **10** levels costing **4 500 → 459 900** coins
      (Σ **1 350 000**) and its value column is **0.5 … 5.0**.
- [ ] `Boss Health` / `Boss Attack` (both **T9 W20**) cap at **−9.00 %** after 30 levels, i.e. `0.30 % × 30`.
- [ ] **§cap table:** the per-category `Σ levels` re-add on the Lab screen: Main **712** · Attack **598** · Defense **655** ·
      Utility **611** · UW **669** · Card **99** · Perk **180** · Bot **165** · Enemies **620** · BC **70** · Module **314**
      ⇒ **4 693** for all 158 lines, and the enemy-stat lines all read **30** levels except `Protector Damage Reduction`
      (**20**).
- [ ] **Cap-shape fingerprint:** the increment lines stop at level **99** (`Labs Speed`, the three Workshop discounts, the
      five coin lines) while the +1 %-style lines stop at **100** (`Damage`, `Health`, `Defense Absolute`, `Waves Required`,
      the three enhancement-discount labs).
- [ ] **R ceiling:** with the generic BC lab + all four group lines maxed, an Overheat removes **16** and **23** levels
      (not 15/22, not 17/24) and a value-55 skip reads **×0.7492**.
- [ ] **§enemy-stat layer:** `Common Enemy Health` (T9 W10) has **30** levels whose value column runs
      **−0.40 % … −12.00 %** with prices **20.00 B → 2.40 T** (Σ **21.117 T**, Σ **1 235.95 d**), and every other
      30-level enemy line prints the *same* times (**2d 7h 33m** at L1, **161d 9h 28m** at L30).
- [ ] **The Range line:** `Ranged Enemy Range` (T13 W80) has **30** levels, its value column steps **−0.50 %** to
       **−15.00 %**, its price at L30 reads **17 286.7 T** (and **2 295.9 T** at L24), and its time ladder is the shared
       one scaled ×**1.00808** — printed **2d 16h 47m** at L1 and **80d 23h 54m** at L30 (= 30 × 233 280 s), i.e. the
       only enemy line whose Σ time is **1 245.94 d** rather than 1 235.95 d.
- [ ] **T19 arithmetic ladder:** `Vampire Enemy Health` L1 = **0.25 q / 10 d 19 h 11 m** and L30 = **7.50 q /
      323 d 23 h 39 m** (= `30 × t₁`), Σ **116.25 q** / **5 021.68 d**.
- [ ] **The ×1.5 / ×1.12 line:** `Lightning Amplifier - Scatter` (T16 W60) prints **×1.25** at L1 and **×37.5** at L30
      (`1.25 × n`), prices **100.00 B → 12.78 q** (×1.5 every level) and times **8 d 8 h → 222 d 21 h 59 m** (×1.12).
- [ ] **Level Skip labs:** each of the two 20-level lines sums to **0.745 T** coins / **130.31 d** and its value column
      ends at **2.00** ([T024](T024-enemy-level-skip-ledger.md) §2).
- [ ] **`Target Priority`:** the lab's cell reads **Tier 4 W150**, its two levels read **2 d 0h 0m / 1 000 000** and
      **8d 0h 0m / 1.00B**, and the panel offers a `Closest` entry plus (if Spotlight is owned) a `Spotlight` entry.
- [ ] **UW labs:** `Golden Tower Bonus` level **1** costs **1 000,000** coins and takes **1 d 16 h 0 m**; level **10** costs
      **277 370 352** and takes **6 d 13 h 32 m**; the value column reads **+0.15 … +1.50**.
- [ ] **The 2.25 line:** one DW lab line reads **100.00B** at L1 and **147.79T** at L10 with its time going **200 h → 1 538 h**
      (each level exactly ×2.25 in coins and ×1.2544 in time).
- [ ] **Family lookup:** on a `Chrono Field` lab the level-1 price is **250 000** / **0d 20h 0m** and level 2 is
      **285 000** / **0d 23h 21m** (the L-III sequence), while on `Chain Lightning` the same slot reads **250 000** / **560 000**
      / **1 101 067** (the L-II sequence) — two different ladders, both starting at 250 000.
- [ ] **The interleave:** DW's ×2.25 line and the Chain Lightning / Poison Swamp ×1.5 line share their odd cells exactly
      (L1 **100.00B** / **8d 8h 0m**, then **225.00B** at L3, **506.25B** at L5, **1.14T** at L7 …).
- [ ] **Ledger spot check:** `Black Hole Damage` level **1** = **20,000,000** coins / **1d 16h 0m** and level **10** =
      **300,870,352** / **6d 13h 32m** (the line stops at 10), and `Inner Land Mine - Chrono Jump` starts at **1.00q** /
      **16d 16h 0m** with each level **×2.05** in coins and **+16d 16h** in clock.
- [ ] **The eight unlock rows** read **750,000 / 700,000 / 900,000 / 950,000 / 1,500,000 / 250M / 15B / 550B** coins
      (Σ **565.25 B**, ~**70 d** of clock); `Missile Barrage` in particular is **1,500,000** coins / **6d 16h 0m**.
- [ ] **Wave law:** the elite spawn table’s 0.33 % row reads **500 / 450 / 405 / 365 / 328** for T1–T5, and the 33 % row
      reads **1 830** at T15 (= `8000 × 0.9^14` ✓).
- [ ] **Elite count:** a T11 run to W1 000 shows roughly **23** elite kills on the counter (the model says 23.26); at T14
      the same depth shows ≈ **38**.
- [ ] **Fleet shards:** the fleet drop column reads **5** module shards at W1, **6** from W250, **7** from W500 … and
      **25** from W5 000 (`5 + (wave − 1)/250`); the reroll-shard column reads **1 080** at T14 and **2 100** at T21.
- [ ] **Appendix A.1 value laws:** `Shock Chance` reads **3.00 %** at L1 and **17.50 %** at L30 (step **+0.50**),
      `Swamp Stun Time` **1.3 → 10.0** (step **+0.3**), `Spotlight Missiles` counts **down** **19 → 2** (`20 − n`),
      `Recharge Missile Barrage` **1 500 → 200** (−250 four times, then −150 twice) and
      `Missile Barrage Quantity` **25 → 50** (step **+5**).
- [ ] **The cheap-tier bill:** the four 250 K–1 M families sum, over their first **ten** levels, to **600.53 M**
      (`Chain Lightning Shock Chance`, `Shock Multiplier`, `Chrono Field Range`, `Death Wave Health` / `Coins Bonus`,
      both Inner Land Mines) or **287.47 M** (`Chrono Field Duration` / `Reduction %`, the three `Swamp` lines,
      `Missile Despawn Time`) — and the whole 18-lab tier re-adds to **8.10 B** coins / **462.33 d**.
- [ ] **The 5-hour relation:** a `Chrono Field Duration` level and a `Shock Chance` level of the *same* number differ by
      exactly **5 h** in the printed `Time` column (L2: `0d 23h 21m` vs `1d 4h 21m`), on every level you check.
- [ ] **The offset law:** `Missiles Radius` level 1 = **800 000** = `250 000 + 550 000` and `Missile Amplifier`
      level 1 = **500 000** = `250 000 + 250 000`, level 2 = **860 000** = `560 000 + 300 000` (the offset grows
      **+50 000** per level).
- [ ] **Corrected caps:** the three `Swamp` lines run to **level 30**, `Swamp Rend - Additional Enemies` to **11**,
      `Death Wave Health` to **30** with its bill **15.79 B**.
- [ ] **`Super Tower Bonus` ladder (§ the STB lab):** L1 **2.00 B / 0d 5h 0m / 1.03**, L5 **6.97 B / 1d 16h 49m / 1.15**,
      L10 **32.14 B / 5d 2h 32m / 1.30** — value law `1 + 0.03·L` (10/10), Σ10 = **115.94 B** coins, the two blocks are
      **21.37 B** (L1–5) and **94.57 B** (L6–10) = **×4.43**, and the Lab panel's level counter tops out at **30**.
- [ ] **Time reading:** at STB L1 the Lab panel's `Research time` reads **0d 5h 0m** (= 300 min) — the per-level reading
      confirmed (Σ10 = 22.2 d), matching the `Game Speed` lab's own printed-total proof (T020 §1.6).
- [ ] **Appendix A.2 arithmetic:** the nine per-weapon subtotals re-add to **2.4111 Q** coins and **18 165.95 d**;
       `18 165.95 / 5 =` **3 633.19 d**, `/ 3.725 =` **975.4 d = 2.67 y**; the cell bill is
       `18 165.95 × 24 × (1 − 1/1.5) × 30 =` **4.3598 M cells** (`4 360 d` at 1 000/day).
- [ ] **Appendix A.2 two-tier law:** the four `L-IV` lines are **38.34 q** each ⇒ `4 × 38.34 =` **153.36 q**, and
       `1 247.44 / 153.36 =` **8.134**; `1 247.44 q / 2 411.09 q =` **51.74 %**; the 33-cheap subtotal is
       `2.4111 Q − 2.4108 Q =` **289.2 T**, i.e. `/ 700 T =` **0.41 days** of income.
- [ ] **Device spot-reads for Appendix A.2:** `Inner Land Mine - Chrono Jump` totals **1 247.44 q** over its ten levels —
       the largest *line* total on the nine UW lab pages, ahead of `Swamp Rend - Additional Enemies` (**1.01 Q** =
       **1 010 q**) — and `Chain Thunder` L30 reads **38.34 q / 2 011.1 d**, the three `Swamp` 30-level lines read
       **116.24 B / 825.4 d** each.
- [ ] **Appendix B running bill:** the eight layer subtotals re-add to **4.039 Q** coins and **104 035.3 d**
       (`2 411.1 q + 0.383113 q + 697.5 q + 930 q + 0.0144301 q + … =` **4 039 q**), the coverage is
       `72 / 169 =` **42.6 %**, the T19 band is `1 627.5 / 4 039 =` **40.29 %** of the coins and
       `(30 130.08 + 40 174.4) / 104 035.3 =` **67.6 %** of the clock, and the sub-T19 band is
       `399.15 T / 700 T =` **0.57 days** of income.
- [ ] **Recharge family:** every printed Recharge line reads **550.00B** at level 1 and **3.60T** at level 7 with the
       seven times `5d 5h · 6d 14h 21m · 8d 0h 55m · 9d 23h 10m · 14d 1h 59m · 24d 19h 29m · 51d 8h 12m`, whose sum is
       **10 374 360 s = 120 d 1 h 46 m** and whose cost sums to **14.43 T**; `Recharge Nuke` reads
       **1 500/1 250/1 000/750/550/400/300** waves and `Recharge Second Wind` reads
       **2 000/1 500/1 250/1 000/750/550/400** ⇒ `Nuke(k) = SecondWind(k+1)` on **6/6** steps; the family is
       `3 × 14.43 T =` **43.29 T** and `3 × 120.074 =` **360.22 d**.

- [ ] **§Main Research (Rev 27):** `Starting Cash` level 1 reads **30** coins / **0 m** and level 99 reads
      **4 190 000** / **49 d 0 h 57 m**, and `Workshop Attack Discount` prints the *same* two columns; the four levels of
      `Buy multiplier` are **2 500 / 10 000 / 50 000 / 500 000** coins (**562 500** total, **89.8 h**).
- [ ] **§Main Research (Rev 27):** `Enhancement Coin Discount` level 1 reads **1.00B** / **1d 1h 55m** / **0.30 %** and
      level 100 reads **190.72Q** / **107d 23h 40m** / **30.00 %** — every level's time is **1 555 min** apart
      (27 h 55 m), and L2 = 1.30 × L1, L3 = 1.30 × L2.
- [ ] **§Main Research (Rev 27):** the three one-level QoL lines read **250 000** (`More Round Stats`), **3 000 000**
      (`Workshop Respec`) and **20 000 000** (`Reroll Daily Mission`) coins, and `Workshop Enhancements` is **5B**.
- [ ] **§Attack Research (Rev 28):** `Damage` level 1 reads **30** coins / **0 m** / **1.02** and level 100 reads
      **4 310 000** / **50 d 5 h 52 m** / **3.00**; `Range` stops at level **80** with **2 320 000** / **29 d 7 h 22 m** /
      **2.60**; `Critical Factor` level 99 reads **4 190 000** / **49 d 0 h 57 m** / **3.97**.
- [ ] **§Attack Research (Rev 28):** `Super Crit Chance` level 1 is **200 000** / **1d 3h 46m** / **0.10** and level 50 is
      **87,900,000,000** / **10201d 12h 58m** / **5.00**, and `Super Crit Mult` level 40 is **30,070,000,000** / **1.80**.
- [ ] **§Attack Research (Rev 28):** `Max Rend Armor Multiplier` prints **825 %** at level 1, **1 550 %** at level 30, and
      its first four prices are **200 B / 240 B / 280.01 B / 320.03 B** (+40 B each).
- [ ] **§Defense Research (Rev 29):** `Health` level 1 reads **30** coins / **0 m** / **1.03** and level 100 reads
      **4 310 000** / **50 d 5 h 52 m** / **4.00** - the same two columns as `Damage`, only the value step differs.
- [ ] **§Defense Research (Rev 29):** `Land Mine Damage` level 1 is **25 000** coins / **1 h 39 m** / **10 %** and level 20
      is **3 150 000 000** / **26 d 22 h 20 m** / **200 %**; `Land Mine Decay` prints those same 20 rows and continues to
      **38 490 000 000** at level 35.
- [ ] **§Defense Research (Rev 29):** `Wall Invincibility` prints ten prices from **300 000 000 000** to
      **783 630 000 000** (steps of about 51 B) with **1.0 s … 10.0 s**, and `Wall Fortification` level 60 reads
      **10 570 000 000 000** / **57 d 10 h 12 m** / **1200 %**.
- [ ] **§Utility Research (Rev 30):** `Cash Bonus` level 1 reads **40** coins / **0 m** / **1.02** and level 99 reads
      **4 190 000** / **49 d 0 h 58 m** / **2.98** - and `Cash / Wave`, `Coins / Kill Bonus` and `Coins/wave` print those
      same two rows.
- [ ] **§Utility Research (Rev 30):** `Max Interest` level 1 is **250** coins / **41 m** / **$100** and level 15 is
      **624 680** / **28 d 2 h 55 m** / **$15 000**; `Interest` level 1 is **50** coins / **0 m** / **1.02** and level 99
      is **19 360 000** / **122 d 9 h 39 m** / **2.98**.
- [ ] **§Utility Research (Rev 30):** `Recovery Package Max` level 1 is **20 B** / **2 d 7 h 33 m** / **1.00 %** and
      level 20 is **476.6 B** / **41 d 10 h 16 m** / **20 %**, and `Fast Enemy Health` level 20 shows the *same*
      **41 d 10 h 16 m** while `Recovery Package Amount` / `Chance` show **476.6 B** and that time too; the two
      `* Level Skip` lines are the only other 20-level Utility lines.
- [ ] **§Card Research (Rev 31):** all four Recharge lines print level 1 = **550 B** / **5 d 4 h 59 m** and level 7 =
      **3.6 T** / **51 d 8 h 11 m** (Missile Barrage’s page rounds that last one to **51 d 8 h 12 m**).
- [ ] **§Card Research (Rev 31):** `Super Tower Bonus` level 10 is **32.14 B** / **5 d 2 h 31 m** / **1.30** and level 30
      is **1.83 T** / **116 d 16 h 28 m** / **1.90**; `Double Death Ray` level 30 is **205.12 B** / **116 d 12 h 28 m** /
      **30 %**.
- [ ] **§Card Research (Rev 31):** any mastered card’s lab prints level 1 = **1.10 q** / **20 d 20 h** and level 9 =
      **10.00 q** / **104 d 4 h**, and the page’s `Total` row is **50.00 q** / **562 d 12 h**; the Card category shows
      **41** lines (32 of them mastery labs) on the current wiki list.
- [ ] **§Perk Research (Rev 32):** the **Perk** category lists **9** lines and the two long ladders print **100** /
      **25** levels; `Waves Required` level 1 is **100 K** / **1 h 39 m** / **−1.00** and level 100 is **190.2 T** /
      **7 835 d 15 h 13 m** / **−100.00**.
- [ ] **§Perk Research (Rev 32):** `Ban Perks` prints exactly **8** rows ending **100.00T** / `166d 15h 59m` and
      **1.00q** / `333d 8h 0m`, and `Improve Trade-Off Perks` prints **10** rows ending **4.92B** / `8d 10h 58m` / **10 %**.
- [ ] **§Perk Research (Rev 32):** the single-level unlocks print **1,500,000** / `3d 11h 19m`, **100,000,000** /
      `4d 23h 26m`, **1,000,000,000** / `4d 15h 6m`, and `Perk Option Quantity` **200,000,000** / `4d 23h 26m` then
      **2,000,000,000** / `10d 4h 26m` — the two `4d 23h 26m` prints are the shared time cell of finding 4.
- [ ] **§Bot Research (Rev 33):** the **Bot** category lists **10** lines (the two `Bot Bot` labs included) and any
      `* Cooldown` lab prints level 1 = **30 M** / **1 d 14 h 53 m** / **−1** and level 25 = **398.88 B** /
      **85 d 8 h 22 m** / **−25**; the five prints are identical.
- [ ] **§Bot Research (Rev 33):** any `* Duration` lab prints level 1 = **100 B** / **8 d 8 h 0 m** / **0.50** and level
      20 = **221.68 B** / **118 d 14 h 21 m** / **10.00**, while `Thunder Bot Linger Time` prints the same two columns
      with **3.50** and **13.00** in the value cell.
- [ ] **§Bot Research (Rev 33):** `Flame Bot - Burn Stack` prints exactly **5** rows: **43 T, 64.5 T, 96.75 T, 145.13 T,
      217.69 T** with times **45d 15h 0m … 79d 19h 9m** (the ×1.5 / ×1.15 pair), and its gate is **T10 W50**.
- [ ] **§BC/Boss (Rev 34):** `Boss Attack` and `Boss Health` print identical tables: level 1 = **40 B** / **2d 7h 33m** /
      **−0.30 %** and level 30 = **3.00T** / **161d 9h 28m** / **−9.00 %**, both gated **T9 W50**.
- [ ] **§BC/Boss (Rev 34):** level *n* of any `* Cooldown` bot lab is exactly **1 000 min** shorter than level *n* of a
      `Boss` lab (e.g. L1: `1d 14h 53m` vs `2d 7h 33m`) — the offset law of finding 4.
- [ ] **§BC/Boss (Rev 34):** `Battle Conditions Group 4` prints ten rows `2, 4, 8, 16, 32, 64, 128, 256, 512, 1024` under
      a `Cost(Q)` header with times `26d 23h 58m` … `187d 8h 55m`; `Battle Condition Reduction` prints `1.00q … 639.4q`
      with times `16d 16h 0m 0s` … `166d 16h 0m 0s`.
- [ ] **§Module named labs (Rev 35):** `Common Drop Chance` has **10** levels `5 M … 7.32 B` (times `4d 4h 0m …`
      `8d 5h 0m`) and `Rare Drop Chance` **10** levels `70 B … 11.01 T` (`8d 16h 20m … 13d 18h 19m`); both print
      `+0.10 % … +1.00 %`.
- [ ] **§Module named labs (Rev 35):** `Cannon Effect Bans` and `Armor Effect Bans` print the identical four rows
      `500.00B, 50.00T, 5.00q, 50.00q` with times `37d 12h … 204d 4h`, and `Core Effect Bans` seven rows beginning
      `50.00B / 16d 16h 0m 0s`.
- [ ] **§Module named labs (Rev 35):** `Module Shard Cost` level 2 = **5.12B** while `Module Coin Cost` level 2 =
      **5.13B**, and both print level-30 time `20d 7h 39m` / value **−30 %**.
- [ ] **§Module named labs (Rev 35):** `Shatter Shards` (**T16 W40**) prints `10.00T, 87.00T, 229.20T, 547.36T, 1.19q`
      ending at `1y 158d 6h 15m`; `Unmerge Module` is one level at **10,000,000** coins / `2d 0hr 0m`.
- [ ] **Rev 36:** the assist lab table’s header reads **`Cost (Q Coins)`**, with level 1 = **0.25** / `10d 19h 11m` and
      level 30 = **7.5** / `323d 23h 30m`.
- [ ] **Rev 36:** a `Primary Module Bonus` lab (any type) shows **0.25 Q** and `10d 19h 11m` at level 1, **+1 %** per
      level, ending at **+30 %** (H065’s read).
- [ ] **Rev 36:** the module slot ladder’s level **1** price is **7 shards + 10 000 coins** and its printed cumulative at
      level **300** is **3 136 095 shards** / **18.07 s** coins.
- [ ] **§Rev 37 (the day scale):** the three lab columns still print the prefix sums used by the model —
      `Burn Stack` `43 T` (L1) and the five-level total **567.06 T**; each `* Cooldown` lab L1 = **30 M** / `1d 14h 53m`
      (**2 693 min**) and each `* Duration` lab L1 = **100 B** / `8d 8h 0m` (**12 480 min**).
- [ ] **§Rev 37 (the day scale):** your own coin `/day` counter decides the order — if it reads below **15.68 B** all four
      lab columns are coin-bound (buy the five `* Cooldown` labs first); above **9.217 T** everything is clock-bound (buy
      `Burn Stack`, then `Thunder Bot Linger Time`).
- [ ] **§Rev 37 (the day scale):** the medal side re-adds independently of the lab side, on the **week** unit: **1 215**
      medals per event (T013 §2.4) ⇒ **607.5/week = 86.786/day** F2P, so the whole medal sheet is
      `212 660/86.786 =` **2 450.4 days = 350.06 weeks = 6.71 years** (and `212 660/1 215 =` **175.03 events**, ×2 weeks =
      the same 350.06 ✓) while the ten lab lines are `9 512 288/(1440 × 5) =` **1 321.2** days ⇒ the ratio
      **2.08×** (`0.007 246/0.003 481`), all three checkable from three divisions.
- [ ] **§Rev 43 (the unit fix):** the two densities re-add by hand: `17.7550/2 450.4 =` **0.007 246** and
      `0.029559/(1 000/86.786) =` **0.002 565**; the par sits **below** `O` (**0.003 481**) and **above** `C`
      (**0.000 020**), and the sheet is **12th** of 18 under reading R and **9th** under reading P.

- [ ] **§Rev 38 (the whole tree):** the two divisions of the appendix re-add — `3 243.8393 Q / 700 T =` **4 634 055.8**
      days and `497 359.8/(5) =` **99 472.0** days (`= 272.3 y`), `/(5 × 3.725) =` **26 704** days (`= 73.1 y`).
- [ ] **§Rev 38:** the first five layers of the queue print the clock column `25.45 + 128.75 + 260.62 + 897.30 + 1 185.5`
      **slot-days** for **12 lines**, i.e. `499.6` calendar days at 5 slots and **134.1** with the stack — all less than
      the `212 660/86.786 =` **2 450.4** days of the medal sheet, and `5.1 + 25.8 + 52.1 + 179.5 + 237.1 + 1 068.3 +
      1 321.2 + 2 017.1 =` **4 906.2** d takes the queue to `K`, the layer just before the sheet row.
- [ ] **§Rev 38:** the two coin-bound layers are the ones whose appendix `Σ coins` is in the `Q` range (`C` **930.00 Q**,
      `P` **2 307.577 5 Q**) and their coin-days are **1 328 571.4** and **3 296 539.3**, together **99.81 %** of the bill.
- [ ] **§Rev 39 (the value side):** the four laws read straight off the **Lab** pages — `Garlic Thorns` level **10** prints
      **5.0** (`+0.5 × n`), `Enemy Attack Level Skip` level **20** prints **+2.00** (`0.10 × n`), `Super Tower Bonus` level
      **30** prints **1.90** (`1 + 0.03n`), and one `Damage` mastery lab prints **×1.4 → ×5** over **9** levels.
- [ ] **§Rev 39:** the two printed per-unit figures fall out of those same laws: `0.745 T / 2.00 =` **373 B** coins per
      point for a `* Level Skip` line, and `50.00 q / 3.6 =` **1.388 9e16** coins per unit of multiplier for a mastery lab.
- [ ] **§Rev 39:** the schedule is `E → D → F → L`, then the medal sheet, then `M`, then `O`, then `G` — with the stack up
      their clock legs are **1.4 / 6.9 / 14.0 / 63.7** days, i.e. **86** days for `Σ ln` **19.30**.
- [ ] **§Rev 40:** the four new layers re-add from their own tables — `Q` **12 lines / 254 levels** and
      **0.718 3 Q**, `K` **571 levels** (+ the two 20-level `* Level Skip` lines = the printed **611**), `J` **645 levels**
      (+ `Garlic Thorns` 10 = **655**), `H` **15 lines / 712** or **716** levels depending on the presets row.
- [ ] **§Rev 40:** the two one-line-deep checks: the four `* Effect Bans` labs cost **0.716 2 Q** of the category’s
      **0.718 3 Q** (= **99.70 %**) and `Enhancement Coin Discount` costs **8.264 45 × 10¹⁷** of layer `H`’s
      **8.264 5 × 10¹⁷**; the other lines of each layer cost **117.513 T + 2.063 56 q** and **3.536 09 × 10¹³** coins.
- [ ] **§Rev 40/41:** the schedule to follow is `E → D → F → L`, the medal sheet in parallel, then `Q`, then `A`, then the
      middle block `J`/`H`/`M`/`K` (order per the pp reading), then `O`, `G`; `B`, `B2`, `C`, `I`, `N`, `P` are still
      cost-side only.
- [ ] **§Rev 41:** the UW lab pages print **31** leveled tables across the nine weapons plus **8** one-level unlock rows
      (`565.255 B / 70.32 d` for the eight together) = the **39** lines of layer `A`, and one line (`Swamp Rend - Additional
      Enemies`) prints text rather than numbers.
- [ ] **§Rev 41:** five of those lines print a value column that runs to exactly thirty times its first level (`ln 30 =`
      **3.401 2**): `Chrono Field Duration` `1.00 → 30.00`, `Chain Thunder` `3 % → 90 %`, `Lightning Amplifier-Scatter`
      `×1.25 → ×37.5`, `Swamp Radius` `0.04 → 1.20`, `Swamp Rend - Basic Enemies` `3 % → 90 %`.
- [ ] **§Rev 42:** the `ln = ln(cap ÷ step)` identity on the screens you already read — `Common Enemy Health` cap
      **−12.00 %** with step **−0.40 %** (ratio 30), `Protector Health` **−9.00 %** / **−0.30 %** (30), `Ranged Enemy
      Range` **−15.00 %** / **−0.50 %** (30), one assist lab **30 pp** / **+1 pp** (30), `Battle Conditions Group 1`
      **20 %** / **1 %** (20), `Group 3` **10 %** / **1 %** (10) — each `ln` is then **3.401 2**, **3.401 2**, **3.401 2**,
      **3.401 2**, **2.995 7**, **2.302 6**.
- [ ] **§Rev 42:** the practical order for a sub-Tier-11 save: **`E` → `D` → `F` → the medal sheet → `L`** (invariant in
      both readings), then the ten middle layers in any order, and **`C`/`P` last**.

## Falsification

- If a ×2 boost costs **less than ~3.3× the ×1.5 price**, the flat per-hour pricing changed (it was made flat in v25.5) → re-derive the ranking column from the in-game prices.
- If a boost on an **empty** slot still ticks down, the “only ticks while slotted” rule is wrong and you can pre-buy boosts before starting the level.
- If cells do not appear from Vampire/Ray/Scatter kills at all, note which enemy type is missing and which tier you are in — the drop table is indexed by tier (`gm_strings.txt`: “Drop range of Elite Cells by tier … X is the min value and Y the max value”).
- If the gem-rush price for a 1-week lab is exactly 168× the 1-hour price, the long-bucket discount no longer exists → gems and cells then rank by table only (the printed discount column — 0.91 / 0.79 / 0.66 — is the version marker).
- If `Labs Speed` **does** shorten its own remaining levels, the self-exclusion quirk is gone → re-read the two meta-labs'
  level-1 times and re-order the pair (with self-acceleration the speed line dominates even more clearly).
- If a lab-speed relic and the research bonus **add** (1.25 + 1.98 = 3.23 rather than ×3.725), rebuild the effective-time
  column as `base ÷ (1 + Σbonuses)` — every hours-per-level figure here uses the product form.
- If a **> 360-day** lab’s rush price is **more than 25 000** gems, the flat tail became proportional ⇒ the “rush the long
  lines first” ranking changes; recompute `gems/day = price ÷ days` for each bucket before re-ordering.
- If the Lab list’s **category counts** differ from §census (e.g. Utility shows 13 instead of **12**), a lab was added or a
  milestone gate is unclaimed — the census is the quickest way to spot a missed unlock, and one added line shifts every
  “Σ levels per season” estimate in this doc.
- If `Second Wind Blast` level 4 is not **75 M** (or level 1 is not **1.8 M**), the hand-set ladder was re-versioned → read
  the four prices and re-add them; the `25 × n` value column is independent of the prices, so the +100 % cap likely stands.
- If a Second Wind save gives something other than **50 %** HP, or the invincibility is not `5 × star + 5`, the star law is
  superseded → read stars 1 and 2 and derive the step from that pair (10 → 15 is +5 s/star).
- If a Wall lab's value column stops being arithmetic (e.g. `Wall Health` level 2 reads something other than **+4 %**),
  the line was re-versioned → re-read levels 1–2 and derive the step from that pair; the gate/level-count table is the
  part that shifts the Σ estimates.
- If the Wall's rebuild time can go **below 150 s**, the floor changed → re-derive the six-source reduction budget
  (1 200 − floor) before comparing rebuild builds.
- If `Reroll Shards` costs rise at a steady ratio after level 3 (rather than the printed 3.24 / 4.77 / 2.86 / 2.15 …), the
  cost column became a clean geometric → then forecast it from the first two ratios instead of using the rows.
- If T14’s average stops landing on **10.5** (e.g. always 7 or always 14), the server overrode the default drop table →
  record your min/max/mean per tier; the “server can override” caveat is the version marker.
- If a skipped wave during Intro Sprint pays **0.22×** but the plain-IS wave pays ≠ 20 %, the two rules are not
  multiplicative → re-derive §“Elite Cell income” rows 2–3 from one timed run.
- If a category’s `Σ levels` is not the §cap-table value, one line’s `Max Lv` was re-versioned (or the category gained a
  line) → read the last level of each line in that category and re-add; the Σ is the fastest integrity check because it
  moves only when a cap moves.
- If the Module category lists **12** lines in your client, the two 30-level assist lines belong to the assist page
  instead → the total is **4 633**, not 4 693 (the census’s “14” is the 12 + 2 reading).
- If an Overheat removes **15/22** levels at fully-maxed BC labs, the group labs are not additive with the generic one →
  re-derive `R_max` as `max(generic, group)` instead of the sum, and re-check the two floor values above.
- If a 30-level enemy-stat line's **times** are not the shared ladder (`2d 7h 33m … 161d 9h 28m`), the constant-time
  property is version-dependent → recompute that line's Σ from its own printed rows (the per-point table uses only Σ).
- If `Lightning Amplifier - Scatter` level 2 costs **125 B** (×1.25) rather than **150 B** (×1.5), or its level-2 time is
  not **9 d 8 h** (= `8 d 8 h × 1.12`), the closed forms are superseded → rebuild from the two printed ratios; the value
  column `1.25 × n` is independent of both.
- If a T19 enemy lab's cost column grows geometrically (**L2 = 0.375 q**, L3 = **0.5625 q**) instead of the printed
  **L2 = 0.50 q**, L3 = **0.75 q**, the trio left the arithmetic shape → its Σ becomes
  `0.25q × (1.5^30 − 1)/0.5 = ` **95 875 q** instead of **116.25 q** (an **825×** difference), so re-rank it against the
  T9 lines before queuing.
- If the elite spawn table’s 0.33 % row does **not** halve-ish per tier (e.g. T2 reads something other than **450**), the
  0.9 compression is version-dependent → recompute the band starts from the two printed tiers’ ratio and keep the
  step-function sum (§“The wave laws” ③ needs only the band starts).
- If a UW lab’s printed `Time` column does **not** behave per level (e.g. on the ×2.25 line the successive costs stop being
  ×2.25, or `L(n) − L(n − 1)` stops matching the sibling line’s own deltas), that page’s column is cumulative instead →
  difference the column before summing, and re-derive the §“UW-category lab ladders” totals (the level-10 knee at
  **0.5 % / 40 %** is the only number the queue needs, and it is stable under either convention).
- If two lab lines on the **same** weapon page print different level-1 prices **and** different level-2 prices, they are not
  one family's offset — read each table on its own (the offset laws above are stated per printed range, and the 3-significant-digit
  prints after level ~12 are only good to ±0.5 %).
- If a line’s printed **level count** differs from Appendix A (say `Missile Amplifier` is not **25** levels, or the eight
  unlock rows are no longer one level each), that family was re-binned → re-read the shared column from a line that still has
  **30** levels, re-derive the offset from levels **1 and 2** only, and re-sum; the appendix is a snapshot of the printed
  tables, not an independent law.
- If the fleet module-shard column jumps by **2** at some wave band (6 → 8), the `5 + (wave − 1)/250` line was re-binned →
  read the band edges and rebuild the arithmetic; the reroll-shard column is independent of it.
- If a T1 run to W1 000 yields far more than **2** elites, either the run passed W500 twice (Intro Sprint re-counts) or the
  band function is per-run rather than cumulative → log the elite counter against the wave counter in one run.
- If a `Chrono Field Duration` level and a `Shock Chance` level of the same number differ by something other than **5 h**,
  the two ladders were re-binned independently → drop the shortcut and read each line's own Σ10 clock; the coin side
  (**600.53 M** / **287.47 M**) is unaffected because it comes from the price column alone.
- If a `Value` column in Appendix A.1 is **not** arithmetic (e.g. `Swamp Stun Time` level 2 is not **1.6**), that line was
  re-versioned → derive its step from levels 1–2 only and re-derive its cap; the L1–10 **coin** sums are independent of the
  value column, so the cheap-tier budget (8.10 B / 462.33 d) still stands while the per-point ranking goes stale.
- If a line's level-1 price is **not** one of **250 000**, **1 000 000**, **20 000 000**, **100.00 B**, **1.00 B**,
  **200 000 000**, **1.00q** or a single-level unlock price, the six-family census is incomplete → difference it against both
  250 K-base ladders before assuming a new family (the two proven offsets are `+550 000` constant and `+200 000 + 50 000·n`).
- If `Swamp Radius` / `Swamp Stun Chance` / `Swamp Stun Time` stop at **level 20** on your client, the appendix's correction
  is the newer print → use **12.94 B / 157.8 d** for the 20-level prefix and treat the 30-level figures as the post-patch
  value (both numbers come off the same page, so note which one your screen shows).
- **§STB:** if level 2 costs **2.72 B** rather than **3.00 B**, the ladder really is a clean geometric and the printed cells
  are rounded → refit from L1 with `2.00 × r^(n−1)` and re-derive the block bills (**21.37 B** / **94.57 B** move with it).
  If the `Value` at level 10 is **not 1.30**, the `1 + 0.03·L` law breaks past the printed rows → take the cap from the
  panel and recompute the **351 / 513** card products from that cap alone.
- **§STB clock:** if the Lab panel's `Research time` at level 1 reads **5 d 2 h 32 m**-style numbers already (i.e. the first
  cell is not 5 h), the `Time` column is cumulative for this family → the ten levels take **5.1 d**, not **22.2 d**, and the
  slot-hours table in §the two clock laws needs the cumulative total for B-scale lines.
- **§Appendix A.2:** if the nine per-weapon subtotals no longer re-add to **2.4111 Q / 18 165.95 d**, one page's `Total`
  changed → rebuild from the 39 printed line totals (Appendix A + A.1's corrections are the authoritative prints), not from
  this summary; the two-tier law survives as long as `Inner Land Mine - Chrono Jump` stays the single largest line total.
- **§Appendix A.2 boost price:** if the Lab panel prices a ×1.5 boost at something other than **30 cells per skipped
  hour**, the whole-layer cell bill moves with it (`cells = clock_h × (1 − 1/m) × price_per_skipped_h` at that multiplier)
  while the coin bill is unchanged ⇒ re-check which currency binds, the flip point is the ratio in the A.2 table.
- **§Appendix B:** if the eight layer subtotals no longer re-add to **4.039 Q / 104 035.3 d**, one layer was re-priced ⇒
  the layer table lists each layer’s own printed `Σ`, so rebuild from those; the coverage figure (72 / 169) moves only when
  a category page gains a `Total` row or a device read supplies the missing 97 lines.
- **§Appendix B T19 band:** if a T19-band line’s level 30 is not **7.50 q** (`0.25 q × 30`), the arithmetic ladder changed
  ⇒ re-derive the line’s `Σ = 0.25 q × 465 =` **116.25 q** from the new step and re-weight the 40.29 % / 67.6 % shares.
- **§Recharge family:** if a second Recharge lab’s level-1 price is **not 550.00B**, the shared ladder broke ⇒ price that
  line from its own two first rows (the family rule covers cost and time only, never the value column — `Missile Barrage`
  already departs at L5). If the seven printed times sum to **10 371 960 s** rather than **10 374 360 s**, one cell lost
  40 min of truncation ⇒ take the per-cell readings, not a quoted Σ. If the Nuke save fires **before** `Second Wind` on
  your client, the automation order was re-versioned ⇒ re-read a lethal hit with all five saves loaded.
- **§Main Research (Rev 27):** if `Starting Cash` and `Workshop Attack Discount` stop printing the *same* cost column, the
  shared-ladder reading is wrong ⇒ re-run `tools/main-research-family.ps1` with two separate arrays; the four per-line
  figures move but the category total does not. If `Enhancement Coin Discount` level 1 is not **1.00B** or its times stop
  being **1 555 min** apart, the two closed forms (geometric **×1.30** price, arithmetic **1 555 n** clock) are dead and
  the 100 cells must be re-transcribed. If fandom's cost column stops being three significant figures, the **0.011 %**
  gap against the Tower Hub integers vanishes and the Hub print becomes the only one to use.
- **§Main Research gates:** if the in-game **Milestones** screen shows `Workshop Attack Discount` on **Tier 2** wave 40
  rather than Tier 1, the lab page's gate sentence is the stale one and the Hub block column is the live one (the inverse
  of the H047 outcome) ⇒ the four-line block's unlock window moves one tier later, its prices do not.
- **§Attack Research (Rev 28):** if `Damage` level 100 exists on one wiki but the in-game lab caps at **99**, the extra
  cell is a wiki artefact and the line's total drops to the shared **111 695 939** / **1 444.98 d** (the category total
  then loses 4 310 000 coins and 72 352 min). If `Damage Per Meter` starts printing prices that differ from the shared
  column by more than **10** coins at some level, the two tables are genuinely different ladders ⇒ re-run
  `tools/attack-research-family.ps1` with two independent arrays and drop finding 3. If `Max Rend Armor Multiplier`
  reaches level **31**, or its step stops being 25 pp, both the near-arithmetic price law and the quadratic clock need
  re-fitting from the new cells.
- **§Attack Research buy order:** the per-pp ranking assumes the printed `+0.02` / `+0.03` steps; if a version changes
  one step (say `Attack Speed` to +0.03), that line overtakes `Critical Factor` immediately — recompute the two
  `coins per +0.01` figures rather than reusing the table.
- **§Defense Research (Rev 29):** if `Land Mine Decay` stops printing `Land Mine Damage`'s 20 rows as its own prefix, the
  prefix relation (finding 2) is gone and the 15-cell tail must be summed on its own; if `Wall Regen` stops showing
  **1.1500** between consecutive times from L12 on, the head/tail split moved and the clock law needs re-fitting from the
  new cells. If `Health` prints **1.02** at level 1 instead of **1.03**, the Defense trio has been rebalanced to
  `Damage`'s step and the 386 686-coins-per-pp figure becomes 580 030.
- **§Defense Research ladder twins:** `Shockwave Size` and `Land Mine Damage` agree on coins to 0.012 % but not on clock
  (ratio **1.449**); if a version makes those two rows identical in both columns, one of the two tables is being copied
  and only a device read can separate them again.
- **§Utility Research (Rev 30):** if the four workshop-increment lines stop all printing **4 190 000** /
  **49 d 0 h 58 m** at level 99, or `Interest` stops printing **19 360 000**, the two-heads-one-ladder model is gone and
  each 99-cell column must be summed on its own; the coins-per-+0.01 figures 564 124 and 2 386 206 move with them.
- **§Utility Research cross-category ladder identity:** if `Recovery Package Max` level 20 stops matching
  `Fast Enemy Health` level 20 on the **time** column, the prefix relation (finding 5) is broken; if the price columns
  stop obeying **`enemy(n) = Recovery(n) + 10 + 25(n − 1)`** (0 of 20 cells today), re-derive both arrays separately. If
  `Max Interest` level 15 prints something other than **$15 000**, the cap ladder was rebalanced and the
  **154.1 coins per dollar of cap** figure must be recomputed from the new cells.
- **§Card Research (Rev 31):** if any one of the four Recharge lines stops printing **550 B … 3.6 T** across seven rows,
  the shared-column claim (finding 1) is broken and that line must be summed on its own; if `Super Tower Bonus` prints ten
  rows again, layer `G` reverts to the 10-level **115.94 B / 22.2 d** and the bill loses **12.188 T** / **875.1 d**.
- **§Card Research census:** if the Lab screen’s Card category lists **21** lines rather than **41**, the mastery-lab
  block is the 12-lab reading (**0.600 Q** / **6 750 d**), the census is **169** and coverage **139 / 169 = 82.2 %**; the
  whole Appendix B coin column drops by **1.000 Q** to **5.466 Q**.
- **§Perk Research (Rev 32):** if `Waves Required` has a **Total** row on the page, compare it with the re-add
  **3.234 165 q / 254 459 903 min**; a different print means the page carries a row the parser dropped (the table is
  100 rows long) and the line must be summed from the screen instead. If `Ban Perks` prints more than **8** rows the
  doubling law (finding 3) extends with ratio 2 and only the Σ changes.
- **§Perk Research census:** if the Lab screen’s **Perk** category lists a number of lines other than **9**, or the
  `Waves Required` cap is not **100**, the category Σ of **180** levels is stale and layer `N` must be re-summed; every
  other layer in Appendix B is unaffected.
- **§Bot Research (Rev 33):** if any one `* Cooldown` lab stops printing **30 M … 398.88 B** across 25 rows, the
  five-way shared column (finding 1) is broken and that lab must be summed on its own; likewise for the four
  `* Duration` labs against **100 B … 221.68 B**. If `Thunder Bot Linger Time` prints a value column that is *not* the
  duration column **+ 3.00**, finding 3 is wrong and the ladder is independent.
- **§Bot Research census:** if the Lab screen’s **Bot** category lists **8** lines rather than **10**, the two `Bot Bot`
  labs are not separate entries (they are one lab per bot), the category Σ is **165** again, the census returns to
  **189** lines, and layer `O` loses the two `Bot Bot` lines: **666.646 T** of coins (1.808 + 664.838) and
  **1 430.36 d** of clock (576.67 + 853.69), leaving **176 / 189** lines priced.
- **§BC/Boss (Rev 34):** if `Boss Attack` and `Boss Health` ever print different cost columns, the twin claim (finding 4)
  is broken; if a `* Cooldown` level and the matching `Boss` level differ by anything other than **1 000 min**, the offset
  law is broken and the two columns must be summed separately. If the four Group pages’ `Cost(Q)` header turns out to mean
  something other than 10¹⁸ (e.g. the UI shows `2.00q` at `Group 4` level 1), every Q-scale figure here scales by that
  factor — the clock columns are unaffected.
- **§BC/Boss value columns:** if the **Perks/Tournaments** screen shows a condition reduction that is neither the additive
  **80 pp** nor the multiplicative **58.5 %** of finding 6, both readings are wrong and H064 must be rewritten from the
  screen’s own numbers (the model’s **R = 54.4 %** is the third candidate).
- **§Module named labs (Rev 35):** if `Cannon Effect Bans` and `Armor Effect Bans` print different columns the twin claim
  (finding 3) dies; if any ban level’s cost is not one of the eight `50 B … 500 q` values, the master-ladder claim
  (finding 2) is wrong and each lab must be summed from its own cells. If the two Cost lines ever print different **time**
  columns, the shared-clock finding is broken.
- **§Module per-point prices:** if a drop-chance line’s per-level step is not **0.10 pp** (say 0.2 pp), the **×1 430**
  gap of finding 5 rescales and the buy order must be rebuilt from the panel’s own numbers.
- **Rev 36 (units):** if the assist lab table’s header is not `Cost (Q Coins)` (say `Cost (q Coins)`), the layer-`C`
  figure reverts to **930 q** and the bill back to **2 314.769 3 Q** with **×6.65** binding; the whole Q/q scale of this
  doc then needs a second look, since the four BC Group pages use the same `Cost(Q)` convention. If a
  `Primary Module Bonus` level 1 is not **0.25 Q** with `10d 19h 11m`, H065 is killed and the four labs must be summed
  from their own printed cells (H065’s own falsification).
- **§Main Research:** if `Starting Cash` and `Workshop Attack Discount` no longer print an identical cost column, the
  shared ladder split ⇒ re-run `tools/main-research-family.ps1` with two arrays; the four per-line figures change but the
  category total does not (each line is still counted once). If `Enhancement Coin Discount` level 1 stops being **1.00B**
  or its times stop being **1 555 min** apart, both closed forms are dead and the 100 cells need re-transcribing. If the
  fandom cost column stops being three significant figures, the **0.011 %** gap against the Hub exact sums vanishes ⇒
  prefer the Hub integers from that version on.
- **§Main Research gates:** if the **Milestones** screen shows `Workshop Attack Discount` on **T2** W40 rather than T1
  W40, the lab page gate sentence is the stale one and the Hub block column is the live one (the inverse of the H047
  reading) ⇒ the four-line block unlock window shifts by one tier, its prices do not.
- **§Rev 37 (the day scale):** if the **Bots**/**Lab** screens show a lab’s clock column that is not the shared column of
  its family (`2 693 min` at `* Cooldown` L1, `12 480 min` at `* Duration` L1), the `Σclock` totals move and every
  per-day figure must be re-divided — the per-coin column is unaffected.
- **§Rev 37:** if your printed coin `income/day` is **between** the crossovers (**15.68 B** and **9.217 T**), the category
  is *mixed*: the five `* Cooldown` labs are clock-bound and the rest coin-bound, which is the case the script prints as
  “coins” and “clock” side by side — the order is then the union of the two lists, best-first per line.
- **§Rev 37:** the model assumes the four medal/cell/stone/gem incomes are the printed ones; if your own counter differs
  (Fetch on, ad gems, guild), rescale each line by the ratio — the statistic is linear in income, so the *ordering* only
  changes if two incomes cross each other.
- **§Rev 38:** if `Garlic Thorns` (`E`) stops printing **1.35 M / 25.45 d** or the appendix’s 497 359.8 d total moves by
  more than a day, the queue order is still produced by `max(coin-days, Σ clock/slots)` but the year-one numbers
  (499.6 d · 134.1 d · 2 450.4 d) must be re-divided — re-run `tools/lab-tree-day-ledger.ps1`, whose layer array is a
  literal copy of the §Appendix B table.
- **§Rev 38:** the ledger is **cost-side**; the value ceiling is computable though — layer `I` reaches the medal sheet’s
  density (**0.007 246/day**, Rev 43) only at `0.007 246 × 24 949.5 =` **Σ ln 180.8**, i.e. **20.1 per line**, and `N` at
  **Σ ln 265.5** (**29.5 per line**). No lab line’s `ln` exceeds **1.4** anywhere in this doc, so the sheet stays ahead
  of every layer; if a device read ever prints a `Σ ln` above those two numbers, re-sort the queue.
- **§Rev 38:** if your printed coin `income/day` is between **663.6 T** and **672.4 T**, layers `A` and `Q` are on
  opposite sides of their flips — the two of them are the only order-sensitive layers at the anchor, all others are the
  same in both regimes.
- **§Rev 39:** if a mastery lab other than `Damage` prints a final multiplier other than **×5** (or a base other than
  **×1.4**), `Σ ln = 40.7349` for layer `M` is wrong and the layer must be summed from the 32 printed pairs; the other six
  layers are unaffected. The layer-`M` density only changes the ranking if it moves below **0.009 941** (past `K`) or above
  **0.011 422** (past `H`), i.e. if `Σ ln` leaves **35.79 … 41.12** (the two neighbours, not the par, are the limits).
- **§Rev 39:** if `Garlic Thorns` prints a **`+0.5`** step at a level other than 10 (the cap is **10** in the §cap table),
  `ln 10` becomes `ln N`; first place survives down to **`N = 2`** (`ln 2 / 5.09 =` **0.136 2** > 0.114 946), so only a
  one-level cap would move it.
- **§Rev 39:** the `+1`/`+2` two-level lines (`Energy Shield Extra Hit`, `Extra Extra Orbs`) are the only ones whose `ln`
  depends on the level-0-vs-level-1 reading (**58.5 %**); if the **Lab** page prints a level-0 value for them, use `ln 3`
  and `L`’s density rises from 0.033 768 to **0.037 189** (`Σ ln 8.8172 / 237.1`) — still between the par and the sheet.
- **§Rev 40:** the pp reading is a model choice, not a print — if a **Lab** page prints the underlying multiplier instead
  of the pp step (e.g. `Wall Fortification` showing `×13.00` rather than `1 200 %`), use reading **P** throughout and take
  the second order (`Q · M · J · K · H` in the middle block); mixing the two readings inside one layer is what would make
  the table wrong.
- **§Rev 40:** if the **Lab** screen’s Main category does not have **15** lines, or the presets row’s cap is neither **5**
  nor **1**, H069’s three cases are all dead and layer `H`’s `Σ ln` (and its `Σ clock`) must be re-summed from the screen;
  no other layer is touched by that row.
- **§Rev 40:** if the **Defense** category’s itemised list stops summing to **655** (the 16 printed caps are
  `100+100+100+50+20+20+35+20+10+50+20+30+20+10+60+10`), the level restatement above is wrong and layer `J`’s 645 follows
  the new list — the density is unaffected because it divides by the printed `Σ clock`, not by the level count.
- **§Rev 41:** if the nine UW pages print fewer or more than **31** leveled tables (or the eight one-level unlock rows stop
  summing to **565.25 B / 70.32 d**), the `31 + 8 = 39` closure fails and layer `A`'s `Σ ln` must be re-added from the pages;
  the density only leaves its place (between `Q` **0.025 603** and `B` **0.014 480** under R, between `L` **0.033 768** and
  `Q` **0.014 562** under P) if `Σ ln` leaves **52.61 … 93.02** under R (and **52.91 … 122.68**
  under P), i.e. the layer keeps its place unless roughly five `ln 30` lines go missing or appear.
- **§Rev 41:** if a value column's first printed cell is not the level-1 value (some pages print the level-0 base), use the
  `ρ`-form `ln((ρ+N)/ρ)`; for the five `ln 30` lines that is `ln(31/1) = 3.433 98` each, `+0.96 %` on the layer — the
  schedule is unchanged.
- **§Rev 41:** if the eight unlock rows are worth one step each rather than `ln 0`, take the sensitivity row
  (**Σ ln 71.461 4**, **0.019 669**/day): `A` then sits above the par in both readings, which is the only rank change this
  section can produce.
- **§Rev 42:** the identity `ln = ln(cap ÷ step)` breaks if a page prints a cap that is **not** `step × levels` — e.g. a
  `−0.40 %` line capping at `−11 %` gives `ln 27.5 =` **3.314 1** (−2.6 % on the layer); re-add those lines from the printed
  value column and the table still holds layer by layer.
- **§Rev 42:** if the **Lab** screen shows the resulting stat rather than the pp step (a boss at `0.997` health instead of
  `−0.30 %`), take reading **P** and its order (`B` and `B2` fall to 15th–16th); the head `E D F L Q` is identical in
  both, so no instruction changes.
- **§Rev 42:** if the assist labs multiply the stone track’s efficiency instead of adding `+1 pp` to it, each lab is
  `ln(100/71) =` **0.342 5**, layer `C` is `Σ ln` **2.740 2** and density **2.1 × 10⁻⁶**/day — still one of the last two
  places, so the buy order is unchanged.
- **§Rev 43 (the unit):** if the **Event** screen’s shop shows a different **per-day** medal flow than **86.786** — e.g. the
  counter prints **607** on a day-1 snapshot that is really the two-week total — the whole medal column scales by the
  ratio and the sheet’s rank moves: with `density = 17.755 × W / 1 488 620` (`W` = medals per week) the sheet overtakes
  `K` (**0.009 941**) at `W =` **833.5**/week and returns to 4th place (behind `L` **0.033 768**) only at
  `W =` **2 831.2**/week, so the 4th-place result of Rev 38–42 needs the unreachable **4 252.5**/week. If instead your event runs 1 week (a shortened bracket), halve the day figures again.
- **§Rev 43:** the three independent closures must agree: `212 660/1 215 × 2 =` **350.06** weeks, `212 660/86.786 =`
  **2 450.4** days, and `350.06 × 7 =` **2 450.4** ✓. If they do not, the medals-per-event print (T013 §2.4) or the
  sheet total (T015 §3.4) has changed and both must be re-read before the schedule is used.

## Sources

- `tools/medal-unit-fix.ps1` (new, Rev 43) — the medal-unit reconciliation: the four flows (**86.786 / 154.286 / 96.786 /
  164.286** medals per day for **607.5 / 1 080 / 677.5 / 1 150** per week), the **event identity**
  (`212 660/1 215 = 175.03` events `× 2 =` **350.06 weeks** `× 7 =` **2 450.4 d**), the re-issued block table and the two
  merged 18-row schedules with the sheet at **12th**/par at **16th** (R) and **9th**/**14th** (P), the five joint-plan cases
  (**2 450.4 / 2 450.4 / 1 378.4 / 2 197.2 / 1 294.5 d**, every one bound by medals), and the medal sensitivity
  (**+10/50/100 per week = 39.7/186.3/346.3 d** saved).
- Tower Hub `wiki/system/the-tower` (last verified **2026-11-01**, re-pulled 2026-11-02, “1 data table”) — the
  `Super Tower Bonus` lab's printed rows (**10** of **30**: gate T8 W300, `1 + 0.03·L`, **2.00 B → 32.14 B**, 5 h →
  5 d 2 h 32 m) and the four taxonomy prints (workshop = minimum level, lab = scaling *or* cap incl. `Max Interest`,
  slot-limited cards with some locked mid-run, one perk every **200 rounds** after its lab). Parsed with
  `tools/stb-lab.ps1` (value law, price ratios and fit, Σ10, block bills, the two time readings, the card products).
- Tower Hub `wiki/system/content-creator-page` (last verified **2026-11-01**) — creator codes: **5 %** of in-app and
  **8 %** of Webstore revenue to the creator at no extra cost to the buyer, valid **30 days**, entered in **Settings**
  in-game / on the Webstore, **removed on iOS since 29.0.5**, programme closed to new creators.

- Tower Hub `wiki/uw/black-hole` · `chain-lightning` · `chrono-field` · `death-wave` · `golden-tower` ·
  `inner-land-mines` · `poison-swamp` · `smart-missiles` · `spotlight` (last verified **2026-11-01**, pulled 2026-11-02)
  — the **31** leveled `Level | Time | Cost | Value` tables behind Appendix A/A.1, the per-page section names
  (`Labs - <line>`) that label the ledger, the printed caps (`Swamp Stun Time` **1.3 → 10.0**,
  `Spotlight Missiles` **19 → 2**, `Missile Barrage Quantity` **25 → 50**), and the workshop `Total` rows used by T008 §2;
  parsed with `tools/uw-lab-census.ps1` (rows / L1 / last / step / Σ / Σ L1–10 / coins-per-point) and totalled by
  `tools/lab-summit2.ps1` + `tools/lab-summit-d.ps1` for Appendix A.2 (`tools/lab-summit.ps1` / `-b` / `-c` are the
  pre-correction passes, kept for comparison), `tools/lab-summit-e.ps1` for Appendix B’s layer ledger, and
  `tools/recharge-family.ps1` for the Recharge-family block.
- Tower Hub `wiki/enemy/common-enemy-labs` · `fast-enemy-labs` · `protector-labs` · `vampire-labs` · `ray-labs` ·
  `scatter-labs` (last verified **2026-11-01**, `ray-labs` 2026-07-29) — the per-level `Level | Time | Cost | Value`
  rows behind §enemy-stat layer: Common 20.00 B → 2.40 T with **−0.40 % … −12.00 %**, Fast 30.00 B → 2.70 T,
  the 60-B line 60,000,000,000 → 3,600,000,000,000, Protector 40.00 B → 3.29 T and its Damage-Reduction twin
  80.00 B → 1.77 T (**20** levels, “unlike the other two protector labs”), Vampire/Ray/Scatter **0.25 q → 7.50 q**
  all at **T19 W60**, and `Lightning Amplifier - Scatter` (**T16 W60**) with `×1.25 … ×37.5` and
  **100.00 B → 12.78 q**; plus the pages’ own “Labs for Basic, Fast, Tank and Ranged Health and Attack: 30 levels, up to
  -12 %” summary line and the caution that researching enemy-stat labs breaks the default ratios between enemy types.
- Tower Hub `wiki/workshop/enemy-level-skip` (last verified **2026-11-01**) — the two **20**-level `* Level Skip` labs with
  their `0.10 … 2.00` value column (**900,000,000 → 152.29 B**, `0d 16h 40m → 17d 7h 20m`), which is the step the §cap
  table left open; full ledger in [T024](T024-enemy-level-skip-ledger.md).
- Tower Hub `wiki/enemy/enemies` (last verified **2026-11-01**, 16 data tables) + `wiki/enemy/elite-enemies` (2 data
  tables) — the Elite spawn grids behind §“The wave laws”: eleven chance rows with their T1 bases
  (500 / 1 000 / 1 500 / 2 000 / 3 000 / 4 000 / 5 000 / 6 000 / 7 000 / 8 000) and the tier columns that re-add as
  `× 0.9^(T−1)`; plus the printed elite rules (1 per wave early and 2 later, **8** on screen per type with Scatter children
  excluded, immune to Orbs / Death Ray / Shockwave / Black Hole) and the two-page floor-vs-round offset from T16.
- Tower Hub `wiki/enemy/fleet-enemies` (last verified **2026-11-01**, 5 data tables) — the fleet reward table (reroll shards
  **1 080 → 2 100** for T14 → T21, module shards **5 → 25** by wave band, split 80 % / 20 % with 5 % per type), the spawn
  tables (**T1–T13**: first spawn `15 000 − 250·(T−1)` at frequency **100**; **T14+**: first wave 2 495 / 1 495 / 995 /
  495 / 95 / 45 / 5, bonus-spawn column `11 750 − 250·(T−14)`), the fixed companion pairs (Overcharge+Ranged,
  Commander+Tank, Saboteur+Fast), the per-type behaviours (Saboteur de-levels one UW per tower hit, Commander pulses
  ×1.15 health/mass/speed up to 8, Overcharge multiplies its projectile ×1.4 per hit) and the tool-coverage list
  (half-strength: Chrono Field / Chrono Loop / Thunder Bot / both stuns; no connection: Orbs, Death Ray, Shockwave,
  Knockback, Black Hole damage and pull; Plasma Cannon cannot select them).
- Tower Hub `wiki/uw/golden-tower` · `wiki/uw/black-hole` · `wiki/uw/death-wave` (last verified **2026-11-01**) — the
  per-line `Level / Time / Cost / Value` ladders behind §“The UW-category lab ladders”: GT Bonus **25** levels
  (**1 000 000 → 26.19 B**, `1d 16h 0m → 64d 20h 51m`, `+0.15 … +3.75`), GT Duration **20** levels (`+1.0 s … +20 s`), the
  BH ×-line (**20** levels, `1.50x … 11.00x`) with its two single-level unlock lines (**15 B / 17d 8h 40m**, **550 B /
  28d 22h 27m**), and the DW line whose costs are exactly **×2.25** and times exactly **×1.2544** per level.
- Tower Hub `wiki/uw/spotlight` · `chrono-field` · `chain-lightning` · `inner-land-mines` · `smart-missiles` ·
  `poison-swamp` (last verified **2026-11-01**) — the other **28** lab tables behind §“The nine-weapon census”: the two
  identical `Chrono Field` cost columns (rotation-rate and slow-% lines, **30** levels, `1.00 … 30.00` and
  `10.50 % … 25.00 %`), the `Smart Missile` pair on the same ladder plus its two offset variants, the `×1.5 / ×1.12` lines on
  Chain Lightning and Poison Swamp (`100.00B … 12.78q`, `8d 8h … 222d 21h 59m`, values `3 % … 90 %` and `×1.25 … ×37.5`),
  and the Inner Land Mines `×2.05 / +400 h` line (**1.00q … 639.42q**, `5s … 50s`).
- Tower Hub’s nine `wiki/uw/<name>` section headings + workshop tables (last verified **2026-11-01**) — the printed line
  **names** used by Appendix A (`Labs - <name>` on each page), `Smart Missiles`’ **Damage 35 / Quantity 15 / Cooldown 16 =
  39,177** stones with the Damage (`0,5,11,…`) and Cooldown (`0,8,24,…`) columns, its `Cover Fire` UW+ table
  (11 levels, Σ **12,650** ✓ §1.④), the Inner Land Mines **37 s** cooldown hard cap, Chain Lightning’s **×2 … ×7,961**
  stone range, and the Poison Swamp ramp example (`100x, 150x, 300x, 450x, 600x` at 50 % base ramp).
- Tower Hub `wiki/guide/target-priority` (last verified **2026-11-01**) — the two-level `Target Priority` ladder
  (**2 d 0h 0m / 1 000 000** and **8d 0h 0m / 1.00B**), its **T4 W150** milestone gate, the printed L1/L2 behaviour
  (one focused type vs a full sort with `Closest` and `Spotlight` entries) and the v29 drag-and-drop note.
- Tower Hub’s eleven `wiki/lab/lab-category-<name>` pages (fetched **2026-11-02**) — the per-line `Max Lv` list for
  Main (15 rows), Attack (9), Defense (16), Utility (12), Ultimate Weapon (39), Card (10), Perk (9), Bot (8), Enemies
  (21), Battle Condition (5) and the Module page’s 12: the §cap table is transcribed from those tables, including the
  two **20**-level `Enemy Attack/Health Level Skip` lines, the **20**-level `Protector Damage Reduction`, the
  **8**-level `Ban Perks` and the BC caps **10 / 20 / 20 / 10 / 10**.
- Tower Hub `wiki/bot/flame-bot` + `wiki/bot/amplify-bot` (last verified **2026-11-01**) — the lab tables’ three-column
  rows (`Level | Time | Cost | Value`) that give both clock laws: Burn Stack 43.00/64.50/96.75/145.12/217.69 T with
  45 d 15 h · 52 d 11 h 15 m · 60 d 8 h 8 m · 69 d 9 h 21 m · 79 d 19 h 10 m (value 1…5), and the Duration lab’s
  L5–L10 (506.25 B/14 d 13 h 48 m · 759.38 B/16 d 18 h 16 m · 1.14 T/19 d 6 h 37 m · 1.71 T/22 d 4 h · 2.56 T/
  25 d 11 h 48 m · 3.84 T/29 d 7 h 34 m, value +0.5 s per level) — “Showing 10 of **20** rows” ⇒ 20 levels.

- fandom `Lab_Upgrades` (raw) — boost cost table (flat since v25.5), most-efficient 5-lab ladder, gem-rush bucket prices, gold-box +0.015×, Auto Research / green-bar / search / history UI behaviour.
- fandom `Currency/Elite Cells` (raw) — elite = Vampire/Ray/Scatter, `1 … Tier` drop range, `(1+X)/2` average, Wave Skip ×1.1, Intro Sprint 20 %, list of cell-flow upgrades.
- game-vault `Guide:Labs_Guide`, `Currency` — 5-slot role allocation, lab slot gem costs (0/100/400/1 400/3 000).
- `tools/gm_strings.txt` — `Assets\Scripts\LabSpeedUp.cs`, UI strings `Research`, `Research Panel`, `Research Confirm Panel`, `Speed Up`, `2_showSpeedUpIdleIndicator`, and the Elite-Cell drop-range config comment.
- Tower Hub `wiki/lab/labs-speed` (last verified 2026-11-01) — 99 levels, **+0.02/level ⇒ ×2.98**, the printed
  cost/time ladder (40 / 83 / 211 / 522 / 1 116 / 2 099 / 3 579 / 5 667 / 8 474 / 12 116 with cumulative times to
  6 h 32 m), the **multiplicative** relic stacking with the 1.25 × 2.98 = 3.725 example, the **self-exclusion** quirk
  (relics do shorten its own levels), “does not help the lab time event mission”, and “at most 5 labs”.
- Tower Hub `wiki/lab/labs-coin-discount` (2026-11-01) — 99 levels, **−0.30 %/level ⇒ −29.7 %**, same cost ladder, the
  self-exclusion note, and the max figures **472 456 246 coins / 237 689 238 s** of base time.
- Tower Hub `wiki/lab/laboratory` (2026-07-29) — the 5-slot bill (**4 900** gems: 100/400/1 400/3 000) and the **v0.17
  rush table** with its discount column (0.91 / 0.79 / 0.66) against the pre-0.17 flat 7.5 gems/hour — the second source
  for the bucket prices in the exchange-rate table.
- Tower Hub `wiki/lab/lab-upgrades` (2026-07-29, 4 data tables) — the **complete lab list by category with `Max Lv`**
  (the 158-lab census in §census: 15/9/16/12/39/10/9/8/21/14/5 and the per-line caps 99 / 100 / 50 / 30 / 25 / 20 / 15 / 5 …),
  “you start with a single lab slot … up to a maximum of five … buying all of them costs **4 900** gems”, the
  **gem-rush table** (1 h **7.5** / 1 d **163** / 1 w **1 000** / 30 d **3 550** / 90 d **8 000** / 360 d **25 000** /
  **> 360 d = 25 000**) with its `Gems/Day rate` and `Discount` columns, “gold-boxing … adds **0.015×** to your gem
  efficiency, stacking additively”, and the boost table’s `Cost One lab` / `Cost All labs` / `Effective time skip` columns.
- Tower Hub `wiki/lab/second-wind-labs` (last verified **2026-11-01**, 2 data tables) — `Second Wind Blast` “unlocked
  through Milestones at **tier 3 wave 150** … The lab has **4 levels**” with its Level/Time/Cost/Value rows
  (1 d 3 h 47 m · **1,800,000** · 25 % … 3 d 11 h 20 m · **75,000,000** · 100 %), and `Recharge Second Wind` “unlocked …
  at **tier 14 wave 60** … allows it to recharge and become available again a set number of waves after it activates …
  **7 levels**” with its seven rows (550.00 B → **3.60 T**, value **2,000 → 400**); “**Once per round Second Wind revives
  the tower at 50% health, respawns the Wall and grants invincibility** for a set time. Second Wind invincibility by
  star 1-7: **10, 15, 20, 25, 30, 35, 40 s**”.
- Tower Hub `wiki/card/nuke` (last verified **2026-11-01**, 1 data table) — `Recharge Nuke` “unlocked in Milestones at
  **tier 14, wave 60** … The lab has **7 levels**” with its seven rows: **550.00B / 1.05T / 1.55T / 2.05T / 2.56T /
  3.07T / 3.60T** and **5d 5h 0m … 51d 8h 12m**, value **1,500 → 300** (the Second Wind ladder shifted one level); plus
  the automation block (“First, Death Defy … an Energy Shield charge … Second Wind … Demon Mode … only then Nuke”), the
  **v27.3 (18 December 2025)** note (“Smart Nuke Automation also grants you **15 seconds of invulnerability**”), “this
  automatic Nuke does **not** destroy projectiles already in flight”, “Automation re-activates Nuke when its cooldown is
  complete, but **only after** Nuke was used once in that run”, and the card’s own per-star ladder
  (**25/35/45/55/65/80/100 %**) with `Nuke Mastery` “max level **9** … **0.05** at level 0 up to **0.5** at level 9, in
  steps of 0.05” (T012 §2.3).
- Tower Hub `wiki/lab/wall-labs` (2026-07-29, 6 data tables) — the six Wall labs with their milestone gates
  (“**Wall Health and Wall Rebuild** … at **tier 8 wave 10**; **Wall Regen and Wall Thorns** … at **tier 10 wave 70**;
  **Wall Invincibility** … at **tier 12 wave 10**; **Wall Fortification** … at **tier 14 wave 60** and has **60 levels**”),
  the per-level tables, the “requires **Wall Regen** to heal any health above the maximum” dependency, and “Base rebuild
  time is **1,200 s** and can never go below **150 s**; sources are Workshop, lab, module substats, Vault, relics and
  **Fortress Mastery**”.
- Tower Hub `wiki/lab/lab-garlic-thorns` (2026-11-01) — “You unlock Garlic Thorns by reaching **wave 1000 on tier 2**. The
  lab has **10** upgrade levels”, the ten Level/Time/Cost/Value rows (4,500 → 459,900 coins; 0.5 → 5.0), and the mechanic
  (Vampires take a % of thorns damage **per second while channeling** their ranged attack, which normal thorns do not).
- Tower Hub `wiki/enemy/boss-labs` (2026-11-01) — `Boss Health` and `Boss Attack`, both “unlock in Milestones at
  **tier 9 wave 20** … **30 levels**”, the −0.30 %/level column with 40.00 B → 421.14 B, and the caution that enemy-stat
  labs break the base relationships (“boss health will no longer reliably sit at **twenty times** basic enemy health”).
- Tower Hub `wiki/module/module-labs-reroll-shards` (2026-11-01) — “unlocked through Milestones by reaching **wave 70 on
  tier 4** … **100 levels**, and each level adds **one extra reroll shard per boss drop**”, the ten printed rows
  (900,000 → 755,277,021 coins), and “**Shattering a Rare gives 10 shards**; shards are typed by module type. Vault:
  **Module Reroll Discount +2.5 % per level, 8 levels (+20 %, 180 keys)**”.
- Tower Hub `wiki/currency/currency-elite-cells` (last verified **2026-11-01**) — the T14–T24 min/max/average table
  (10 rows, all re-adding; “the server can override them”), the three drop-enemy types and the zero-drop list, the
  **1.1×-even-during-Intro-Sprint** skip rule, the full boost-cost ladder (**15 … 1 000 000** cells/h) with
  “`(multiplier − 1) × hours` saved”, the four multiplier ladders with closed caps (DW lab 20 lv → ×3.0, Bonus Cells
  25 lv → ×2.5, Cells card T4 W40 +2/lv → +14, Cells Mastery 1 000 stones ×1.05→×1.32 v29), and the Cells/Kill
  enhancement gate (**500 B** Utility spend) + its 10 printed prices with the cumulative **1.42 T**.
- Tower Hub `wiki/currency/currency-coins` (2026-11-01) — the **Coin Bonus** enhancement (gate **50 B** Utility spend,
  ×1 + 0.01/lv, L300 = ×4, “applies to both the tier bonus and Coins/Kill → effective benefit is **squared**”), the
  four coin sources (kills pay on every type *except* Basic), and the tier/farm-depth advice line.
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Main Research
  category** tables: `Lab/Starting Cash`, `Workshop_Attack_Discount` / `_Defense_` / `_Utility_` (the shared 99-level
  column, costs at three significant figures), `Lab/Labs Coin Discount`, `Lab/Enhancement Coin Discount` (**100** rows,
  `1.00B … 190.72Q` and `1d 1h 55m … 107d 23h 40m`), `Lab/Game Speed` (7 rows, `x2.0 … x5.0`), `Lab/Buy Multiplier`
  (4 rows plus the “Max came before x100” note), `Card_Presets` (5 rows `350,000 … 35T`, four times printed `Unknown`),
  `More_Round_Stats`, `Target_Priority`, `Workshop_Respec` (with the **150-gem** respec fee), `Daily_Missions` (the 20 M
  reroll line and the `+1 shard per level, up to +50` Daily Mission Shards lab) and `Workshop_Enhancement`; each page also
  prints its own gate sentence (`tier 1 wave 40`, `tier 4 wave 30`, `tier 4 wave 150`). Plus `Lab Category/Main Research`
  (the 20-line name list with `Max Lv` caps) and `Lab Upgrades` (the 5-slot ladder `Free / 100 / 400 / 1 400 / 3 000` =
  **4 900** gems, the rush ladder with its discount column, and both Elite-Cell boost tables).
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Attack Research
  category** tables: `Lab/Damage` (100 rows, `30 … 4 310 000`, `0d 0h 0m … 50d 5h 52m`, `1.02 … 3.00`),
  `Lab/Attack Speed`, `Lab/Critical Factor` (`1.03 … 3.97`), `Lab/Range` (80 rows, last `2,320,000`),
  `Lab/Damage Per Meter` (head `40 / 81 / 188 / 408 / 782`), `Lab/Super Crit Chance` (50 rows `200,000 …
  87,900,000,000`), `Lab/Super Crit Mult` (40 rows), `Lab/Rend Armor Max` (30 rows `200,000,000,000 …
  1,540,000,000,000`, `825% … 1550%`) and `Lab/Light Speed Shots` (1 row `3,000,000 / 0d 19h 59m / Unlocked`), plus
  `Lab Category/Attack Research` (the 9-line name list with its `Max Lv` caps), the per-page gate sentences
  (`tier 1 wave 30`, `tier 2 wave 30`, `tier 3 wave 30`, `tier 5 wave 200`, `tier 7 wave 10`, `tier 13 wave 10`) and the
  `Damage` page's printed **damage product** (`Workshop x Lab x Damage Card x (1 + Relics) x (1 + Cannon Module %) x
  Enhancements x Perk + Berserker`).
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Defense Research
  category** tables: `Lab/Health`, `Lab/Health Regen`, `Lab/Defense Absolute` (100 rows, `30 … 4,310,000`,
  `0d 0h 0m … 50d 5h 52m`, `1.03 … 4.00`), `Lab/Defense Percent` (50 rows `5,000 … 5,760,000,000`, `0.20 … 10.00`),
  `Lab/Orb Speed` (20 rows `15,000 … 874,760,000`), `Lab/Orb Boss Hit` (10 rows `800,000,000 … 25,540,000,000`),
  `Lab/Land Mine Damage` and `Lab/Land Mine Decay` (20/35 rows, `25,000 … 38,490,000,000`), `Lab/Shockwave Size`
  (20 rows `100,000 … 3,150,000,000`) and the six `Wall Labs/<name>` pages (`Wall Health` 50 rows `1,00B … 48,61B`,
  `Wall Rebuild` 20 rows, `Wall Regen` 30 rows `30.00B … 217.89B`, `Wall Thorns` 20 rows, `Wall Invincibility` 10 rows
  `300,000,000,000 … 783,630,000,000`, `Wall Fortification` 60 rows `300,000,000,000 … 10,570,000,000,000`), plus
  `Lab Category/Defense Research` (the 16-line name list with `Max Lv`) and `Lab Category/Utility Research` (the 12-line
  list, used to confirm the census counts). Note the wall tables write decimals with a comma (`48,61B` = 48.61 B), so a
  naive comma-strip mis-scales them by x10 — `tools/defense-research-family.ps1` transcribes the normalized values.
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Utility Research
  category** tables: `Lab/Cash Bonus`, `Lab/Cash Per Wave`, `Lab/Coins Per Kill Bonus`, `Lab/Coins Per Wave` (99 rows each,
  `40 … 4,190,000`, `0m … 49d 0h 58m`, `1.02 … 2.98`), `Lab/Interest` (99 rows `50 … 19,360,000`), `Lab/Max Interest`
  (15 rows `250 … 624,680`, caps `$100 … $15,000`), `Lab/Package After Boss` (1 row `1,000,000,000` / `8d 2h 26m`),
  `Lab/Recovery Package Amount` / `Max` / `Chance` (20 rows each `20,000,000,000 … 476,600,000,000`,
  `2d 7h 33m … 41d 10h 16m`) plus `Lab/Fast Enemy Health` (the 30-row ladder the Recovery times prefix) and
  `Lab Category/Utility Research` (the 12-line name list with `Max Lv`). New script:
  `tools/utility-research-family.ps1`.
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Card Research
  category** tables: `Lab/Double Death Ray` (30 rows `2,500,000 … 205,120,000,000`, `1% … 30%`),
  `Lab/Extra Orb Adjuster` (1 row `1,500,000` / `2d 1h 59m`), `Lab/Extra Extra Orbs`
  (2 rows `25,000,000` / `900,000,000`), `Lab/Energy Shield` (= the *Energy Shield Extra Hit* line, 2 rows
  `40,000,000,000` / `850,000,000,000`), the four Recharge pages `Lab/Recharge Demon Mode`, `Lab/Recharge Nuke`,
  `Lab/Recharge Missile Barrage`, `Second Wind Labs/Recharge Second Wind` (7 rows `550B … 3.6T`),
  `Second Wind Labs/Second Wind Blast`, `Lab/Super Tower Bonus` (now **30** rows `2,000,000,000 … 1,830,000,000,000`,
  `1.03 … 1.90`), `Lab Category/Card Research` (the 10-row list whose mastery row is `Max Lv 9`) and `Card Masteries`
  (the shared 9-level `Mastery lab costs` table with `Total 50.00q / 562d 12h`, the 32-row stone list totalling 28,500 and
  the per-card 0-to-9 value ladders). New script: `tools/card-research-family.ps1`.
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Perk Research
  category** tables, all under the `Perk Labs/` prefix and none of them printing a `Total` row:
  `Perk Labs/Unlock Perks` (1 row `1,500,000` / `3d 11h 19m`), `Perk Labs/Waves Required` (**100** rows, head
  `100K` / `0d 1h 39m` / `-1.00`, tail `190.2T` / `7835d 15h 13m` / `-100.00`), `Perk Labs/Auto Perk Pick`
  (1 row `100,000,000` / `4d 23h 26m`, T4 W50), `Perk Labs/Standard Perk Bonus` (**25** rows `100,000` …
  `238,880,000,000`), `Perk Labs/Perk Option Quantity` (2 rows `200,000,000` / `4d 23h 26m`, `2,000,000,000` /
  `10d 4h 26m`, T4 W80), `Perk Labs/First Perk Choice` (1 row `1,000,000,000` / `4d 15h 6m`, T2 W250),
  `Perk Labs/Ban Perks` (**8** rows `10.00M, 100.00M, 1.00B, 15.00B, 100.00B, 1.00T, 100.00T, 1.00q`, T5 W40),
  `Perk Labs/Improve Trade-Off Perks` (**10** rows `600,000,000 … 4,920,000,000`, T2 W400),
  `Perk Labs/Auto Pick Ranking` (**32** rows `100.00K … 154.26B`, whose last six
  times print with a `y` unit — `1y 24d 20h` … `2y 37d 9h` — read here as 1 y = 365 d, T6 W10).
  New script: `tools/perk-research-family.ps1`.
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Bot Research
  category** tables, all under the `Lab/` prefix: `Lab/Flame Bot Cooldown`, `Lab/Thunder Bot Cooldown`,
  `Lab/Golden Bot Cooldown`, `Lab/Amplify Bot Cooldown`, `Lab/Bot Bot Cooldown` (**25** rows each, `30M, 60.05M, 91.6M,
  132.15M, 201.2M, 336.25M, 598.8M, 1.08B, 1.91B, 3.25B, 5.33B, 8.41B, 12.83B, 18.98B, 27.34B, 38.45B, 52.94B, 71.53B,
  95.05B, 124.4B, 160.63B, 204.87B, 258.37B, 322.54B, 398.88B`; times `1d 14h 53m` … `85d 8h 22m`; value `-1` … `-25`),
  `Lab/Thunder Bot Linger Time`, `Lab/Golden Bot Duration`, `Lab/Amplify Bot Duration`, `Lab/Bot Bot Duration`
  (**20** rows each, `100B, 150B, 225B, 337.5B, 506.25B, 759.38B, 1140B, 1710B, 2560B, 3840B, 5770B, 8650B, 12970B,
  19460B, 29190B, 43790B, 65680B, 98530B, 147790B, 221680B`; times `8d 8h 0m` … `118d 14h 21m`; value `0.50` … `10.00`,
  with `Linger Time` printing `3.50` … `13.00`), and `Lab/Flame Bot - Burn Stack` (**5** rows `43T, 64.5T, 96.75T,
  145.13T, 217.69T`; times `45d 15h 0m` … `79d 19h 9m`; value `1` … `5`). Gates as printed: T5 W60/W70/W80/W90,
  Bot Bot **T6 W60**, all four duration labs and Burn Stack **T10 W50**. `Lab Category/Bot Research` prints the 10-row
  name list with `Max Lv 25 / 20 / 5`. New script: `tools/bot-research-family.ps1`.
- fandom lab pages, raw wikitext via `api.php?action=parse&prop=wikitext` (pulled 2026-11-03) — the **Battle Condition**
  and **Boss** tables: `Lab/Battle Condition Reduction` (**10** rows, costs `1.00q, 2.05q, 4.20q, 8.6q, 17.7q, 36.2q,
  74.2q, 152.2q, 311.9q, 639.4q`; times `16d 16h 0m 0s` … `166d 16h 0m 0s`; value `2 … 20`; gate T18 W1000),
  `Lab/Battle Conditions Group 1` (**20** rows `0.2 … 4` under a `Cost(Q)` header, times `13d 11h 59m` … `269d 23h 40m`,
  value `1% … 20%`, T19 W100), `Lab/Battle Conditions Group 2` (**20** rows `0.5 … 10`, `16d 4h 46m` … `323d 23h 39m`,
  T20 W60), `Lab/Battle Conditions Group 3` (**10** rows `1.00, 1.50, 2.25, 3.38, 5.06, 7.59, 11.39, 17.09, 25.63, 38.44`,
  `26d 23h 58m` … `124d 4h 40m`, T19 W500), `Lab/Battle Conditions Group 4` (**10** rows `2, 4, 8, 16, 32, 64, 128, 256,
  512, 1024`, `26d 23h 58m` … `187d 8h 55m`, T21 W1000), `Lab/Boss Attack` and `Lab/Boss Health` (**30** rows each,
  costs `40 M × 10³` … `3 T` in the printed 3–4-s.f. form (`40000000000`, `80010000000`, … , `3000000000000`); times
  `2d 7h 33m` … `161d 9h 28m`; value `−0.30 % … −9.00 %`; both gated **T9 W50**). The four
  Group pages carry the unit header `Cost(Q)` (1 Q = 10¹⁸ coins), `Lab/Battle Condition Reduction` the per-cell `q`
  suffix (10¹⁵) — see §BC/Boss. New script: `tools/battle-condition-boss-family.ps1`.
- fandom per-line tables for the twelve named **Module** labs (pulled 2026-11-03): the slugs `Module Labs/Common Drop
  Chance` (10 rows `5M, 40M, 114.25M, 282.7M, 610.03M, 1.17B, 2.03B, 3.29B, 5.02B, 7.32B`), `Module Labs/Rare Drop
  Chance` (10 rows `70B … 11,01T`, comma decimals), `Module Labs/Reroll Shards` (**100** rows `900K … 488.93B`),
  `Module Labs/Daily Mission Shards` (**50** rows `1.2M … 352.9B`), `Module Labs/Module Shard Cost` and
  `Module Labs/Module Coin Cost` (**30** rows each, `5B … 4.79T`), `Module Labs/Unmerge Module` (1 row `10,000,000` /
  `2d 0hr 0m`), `Lab/Shatter Shards` (5 rows `10.00T, 87.00T, 229.20T, 547.36T, 1.19q`, T16 W40) and the four
  `… Effect Bans` pages (4/4/3/7 rows). `Module Labs` itself is only a `{{:…}}` transclusion shell (856 bytes) and
  `Lab Category/Module Research` prints **15** rows (the 12 named + 2 assist + `Primary Module Bonus`, the last not in the
  census). New script: `tools/module-named-family.ps1`.
- fandom raw wikitext (pulled 2026-11-03) for the module tail: **`Assist Module Labs`** (one 30-row table, header
  `Cost (Q Coins)`, cells `0.25 … 7.5` with times `10d 19h 11m … 323d 23h 30m`), **`Modules`** (the `Main Effect` section,
  which prints the Ancestral star multipliers **×1.04 / 1.08 / 1.12 / 1.16 / 1.20**, the sub-stat rarity chances
  **61.2 / 25 / 10 / 2.5 / 1 / 0.3 %**, and “the Primary Module Bonus labs … **Tier 23 Wave 500** … **1 % per level, up to
  +30 %**”), **`Modules/Cost`** (28 milestone rows, level 1 → 300, `7 → 49 500` shards and `10 000 → 886Q` coins per
  level, cumulative `3 136 095` shards / `18.07s` coins) and **`Currency/Power Stones`** (the stone income and price
  lists, used by T010). New script: `tools/assist-primary-tail.ps1`.
- `tools/lab-day-density.ps1` (new, Rev 37; **per-week medal unit since Rev 43** — the block loop divides by
  `607.5/7 = 86.7857`) — the two-resource day-scale model and every number in §The Bot category on a
  calendar-day scale: the medal-block table (**0.014 853 / 0.013 951 / 0.012 145 / 0.011 302 / 0.007 944 / 0.007 246** per
  day), the lab-category figure (**0.003 481** per day for `Σ ln = 4.5990` over **1 321.2** days at 5 slots), the
  clock-bound order (**0.011 266 / 0.007 906 / 0.003 516 / 0.002 375 / 0.002 026**), the per-coin column
  (**2.242e-13 / 1.292e-13 / 2.030e-15 / 1.222e-15 / 6.099e-16**, the cooldown/duration ratio **211.8**), the crossover
  incomes (**15.68 B / 3.894 T / 9.217 T**), and the prefix re-adds (`5 × 1.808 24 T + 4 × 664.838 T + 567.06 T =`
  **3.235 455 7 q**) with the **204.25 T** unit correction.
- `tools/lab-tree-day-ledger.ps1` (new, Rev 38) — the seventeen-layer calendar ledger: the layer array is a literal copy of
  the §Appendix B table, and it prints the two cost columns per layer, the totals check (**4 634 055.8** coin-days,
  **497 359.6** slot-days = **99 471.9** calendar days = **26 703.9** with the stack), the `C`+`P` share (**99.81 %**), the
  cheapest-first queue with the medal sheet inserted, the per-line costs, the per-layer flip incomes
  (**663.6 T** for `A`, **672.4 T** for `Q`) and the with-stack year-one cumulative (**134.1 d** for the first five layers).
- `tools/lab-value-layers.ps1` (new, Rev 39) — the value side: the seven `Σ ln` values (**2.3026 / 2.9957 / 5.9915 /
  8.0064 / 40.7349 / 4.5990 / 0.6123**), the density table (**0.452 374 / 0.116 339 / 0.114 946 / 0.033 768 / 0.011 315 /
  0.003 481 / 0.003 412** per day, and the ×3.725-stack column), the convention-sensitivity list (`+4.1 / +1.6 / +4.8 /
  +1.0 / +58.5 / +16.1 %`), and the re-adds **373 B** per point, **1.388 9e16** per multiplier, `D` **14.430 09 T**,
  `L` **30.847 1 T / 1 185.53 d**, `M` **18 000 d**.
- `tools/lab-value-layers-2.ps1` (new, Rev 40) — the four category layers and the merged schedule: the line-by-line `ln`
  lists for `Q` (12), `J` (15), `K` (10) and `H` (15), the two pp readings with both orders, the level re-adds
  (**254** / **645** / **571** / **716–712**), the two one-line-deep ratios (**1 216×** and **171 464×**) and the coverage
  line (**11 rows / 106 of 197 lines / Σ ln 193.565 / 14 877.4 calendar days**).
- `tools/lab-value-layer-A.ps1` (new, Rev 41) — layer `A`: the 31 printed laws with their `ln` in both readings, the
  `31 + 8 = 39` closure, `Σ ln` **65.916 2 / 63.482 6**, the densities (**0.018 143 / 0.017 473**, stack
  **0.067 582 / 0.065 087**), the internal top-twelve list, the 29.1 % cheap-block share, the `ln 2`-per-unlock
  sensitivity (**71.461 4 → 0.019 669**) and the two merged schedules.
- `tools/lab-value-blocks.ps1` (new, Rev 42) — the four single-law blocks: `Σ ln` in both readings
  (**43.810 1 / 20.407 2 / 27.209 6 / 19.701 6** under R), the two-resource cost and bind per layer, the eight densities, the
  per-line averages, and the sixteen-row schedule under both readings with the sheet and the par inserted.
