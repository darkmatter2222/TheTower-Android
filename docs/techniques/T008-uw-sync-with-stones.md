# T008 — Stone economy: knee-first UW buying + cooldown sync

Rev: 2 (2026-11-01) — the whole stone ledger is now numeric (per-level columns read and summed; all 9 UW totals and all 9 perk-UW `stone value` entries reproduced exactly), and the sync ladder is rebuilt from those columns.
Currency: **Power Stones** (and the coin rate they buy) · Status: **Verified** — the derived model reproduces 9/9 published stone values exactly (§6).

| | |
|---|---|
| **Value** | ★★★★ — three cooldown blocks on GT/BH/DW (**2 620 stones**) move the triple-coincidence period from **600 s → 200 s**, and the GT first-block (**2 520 stones**) is the cheapest power per stone in the game: ×9 cash+coins per kill with 30 s of uptime. |
| **Confidence** | **High** — every price is the fandom `…/Basic_Upgrades` per-level column, and the sums match those pages' own `Total` rows and the perk table's `stone value` column exactly (§6). **Medium** on the preferred stat order for a given build, and on the UW+ tree totals (§1). |
| **Ease** | 1 tap per level (the `+` on each stat line in the **Ultimate Weapons** panel); the target package is **2 620 stones**. |
| **Prerequisite** | the first UW costs **5** stones, the 9th **3 000**; UW+ needs all 9 UWs. |

---

## 1. The four stone pools — why knee-first buying is forced

| Pool | Total (stones) | Composition |
|---|---|---|
| Unlock all **9 UWs** (price = how many you already own) | **9 705** | 5 + 50 + 150 + 300 + 800 + 1 250 + 1 750 + 2 400 + 3 000 |
| Unlock all **9 UW+ abilities** (needs all 9 UWs first) | **14 650** | 500 + 625 + 750 + 975 + 1 250 + 1 650 + 2 200 + 2 900 + 3 800 |
| Max **every basic UW stat** on all 9 UWs | **244 302** | the per-UW table in §2 |
| Max **all 9 UW+ abilities** (10 levels each, 3 price trees) | **184 740** | 3 × 23 800 (Smite / Cover Fire / Death Creep) + 2 × 18 570 (Golden Combo / Charged Mines) + 4 × 19 050 (Kill Wall / Consume / Chrono Loop / Light Range) |
| **UW block total** | **≈ 453 400** | + card masteries 28 500, Bot+ 1 250 × 5, Synchronicity 1 500 + 3 × 1 500, assist slots 1 000 each ⇒ **≈ 500 k stones** |

Against ≈ **10 700 stones/year** free (T022 §1) that is **≈ 47 years**, so the only sane policy is: buy each stat's **first cheap block** and stop, and spend the rest on the sync ladder in §4.

## 2. Per-UW max-out cost (the `Total` rows, verified by summing the per-level columns)

| UW | Total | stat 1 | stat 2 | stat 3 |
|---|---|---|---|---|
| Black Hole | **9 723** | Size 2 291 | Duration 5 392 | Cooldown 2 040 |
| Chrono Field | **9 946** | Duration 5 530 | Slow 2 910 | Cooldown 1 506 |
| Chain Lightning | **18 375** | Damage 15 710 | Quantity 655 | Chance 2 010 |
| Inner Land Mines | **23 042** | Damage % 20 817 | Quantity 425 | Cooldown 1 800 |
| Golden Tower | **27 186** | Multiplier 8 434 | Duration 14 052 | Cooldown 4 700 |
| Death Wave | **29 391** | Damage 17 591 | Quantity 2 950 | Cooldown 8 850 |
| Poison Swamp | **34 226** | Damage 28 716 | Duration 3 500 | Cooldown 2 010 |
| Smart Missiles | **39 177** | Damage 29 661 | Quantity 6 966 | Cooldown 2 550 |
| Spotlight | **53 236** | Bonus 20 071 | Angle 29 690 | Quantity 3 725 |
| | | | | **244 302** |

Two structure facts that only the tables show: **the `Stones` column is per level, not cumulative** (the sum of the column equals the page's `Total`), and **cooldown lines have an identical cheap shape** — increments 10/28/46/64/82 … (step +18) for GT and BH, 8/24/40/56/72 … (step +16) for DW, SM, ILM, PS.

## 3. The knee table (stones per unit of stat, by block of levels)

**Cooldown — the three coin UWs** (each block = 10 / 5 / 5 levels):

| UW | 1st block | 2nd block | 3rd block | 4th block |
|---|---|---|---|---|
| Golden Tower | 300→200 s = **910** (9.1 st/s) | →150 s = 1 130 (22.6) | →100 s = 2 660 (53.2) | — (4 700 all) |
| Black Hole | 200→100 s = **910** (9.1) | →50 s = 1 130 (22.6) | — (2 040 all) | |
| Death Wave | 300→200 s = **800** (8.0) | →150 s = 1 000 (20.0) | →100 s = 1 650 (33.0) | →50 s = 5 400 (108) |

**Golden Tower's other two lines** (blocks of 5 levels; the same shape repeats on every UW):

| Line | cheap block | next | then |
|---|---|---|---|
| Multiplier | 5.0→9.0× = **534** (133 st per ×1) | →17.0× = 1 400 (175) | →21.0× = 6 500 (1 625) |
| Duration | 15→30 s = **1 076** (72 st/s) | →35 s = 1 020 (204) / →40 s = 1 544 (309) | →45 s = 2 140 (428) / →50 s = 3 790 (758) / →53 s = 4 482 (1 494) |

Read as a rule: **every stat line is ≈4× cheaper in its first block than in its last** (multiplier 133 → 1 625 st per ×1; GT duration 72 → 1 494 st per s; DW cooldown 8 → 108). So a stat bought to its **first block** is the whole value; the last levels of any line are the worst stones in the game.

## 4. The sync ladder (what to actually buy, in order)

All UW timers start at 0 when the run starts and reset on each activation, so two UWs share a window every **LCM(cooldowns)**. Multipliers multiply, so the coincidence period is the coin rate.

| Stage | Buy (cumulative stones) | GT / BH / DW | all three fire every |
|---|---|---|---|
| 0 (base) | — | 300 / 200 / 300 | **600 s** |
| 1 | GT cooldown ×10 → 200 s (**910**) | 200 / 200 / 300 | 600 s, GT+BH every **200 s** |
| 2 | BH cooldown ×10 → 100 s (**1 820**) | 200 / 100 / 300 | 600 s, GT+BH every 200 s, BH twice as often |
| 3 | DW cooldown ×10 → 200 s (**2 620**) | 200 / 100 / 200 | **200 s** ← the target package |
| 4 | GT → 100 s (+3 790), DW → 100 s (+2 650) (**9 060**) | 100 / 100 / 100 | **100 s** |

Then, per line, take the **first block** of the GT money stats: multiplier to 9.0× (534) and duration to 30 s (1 076). **Stage 3 + both = 4 230 stones ≈ 5 months of free stone income**, and it is the whole reason the coin engine works.

Do **not** insert partial values: 250 vs 200 s aligns only every 1 000 s, 270/180 every 520 s — i.e. a half-finished block costs the same 9.1 st/s and can *worsen* the LCM. Finish a block of 5 or 10 levels in one sitting.

## 5. Two free (stone-less) UW sources

1. **`Unlock a Random Ultimate Weapon` perk** (Standard perk pool, quantity 1, needs the Perks lab at T2 W150). It grants a *semi-upgraded* UW for the rest of the run — worth, by the table below, **700–2 426 stones each**, and it costs no stones. It does **not** enable that UW's labs and does not grant its UW+ ability.
2. **The 3-offer purchase screen does not reroll**: the three options stay fixed until one is bought (`Ultimate Weapons` page), and clicking outside the panel closes it. So with 3 offers on screen, **buy the cheapest first** — the other two are still there afterwards.

| UW | stone value | the perk version's stats |
|---|---|---|
| Chain Lightning | 700 | ×46 dmg, 3#, 15.5 % |
| Poison Swamp | 715 | ×43 dmg, 50 s, 90 s |
| Inner Land Mines | 728 | ×43 dmg, 5#, 130 s |
| Smart Missiles | 974 | ×43 dmg, 11#, 110 s |
| Black Hole | 984 | 50 m, 20 s, 130 s |
| Death Wave | 1 009 | ×46 dmg, 2#, 210 s |
| Golden Tower | 1 639 | ×9.0 bonus, 30 s, 230 s |
| Chrono Field | 1 824 | 22 s, 40 % slow, 120 s |
| Spotlight | 2 426 | ×27.6 bonus, 45°, 1# |

## 6. Why the price reading is trustworthy (numeric check, 9/9 exact)

Model: **cost(stat, level n) = Σ of the first n entries of that stat's `Stones` column.** Under it, the stone values of the perk-granted UWs come out exactly as printed:

| UW | printed | Σ of its levels |
|---|---|---|
| Chain Lightning | 700 | 161 + 105 + 434 = **700** |
| Poison Swamp | 715 | 161 + 120 + 434 = **715** |
| Inner Land Mines | 728 | 161 + 175 + 392 = **728** |
| Smart Missiles | 974 | 161 + 421 + 392 = **974** |
| Black Hole | 984 | 421 + 115 + 448 = **984** |
| Death Wave | 1 009 | 161 + 200 + 648 = **1 009** |
| Golden Tower | 1 639 | 115 + 1 076 + 448 = **1 639** |
| Chrono Field | 1 824 | 1 309 + 140 + 375 = **1 824** |
| Spotlight | 2 426 | 1 196 + 1 230 + 0 = **2 426** |

Also: each `Basic_Upgrades` page's `Total` equals the sum of its own column (BH 2 040 = 910 + 1 130; DW 8 850 = 800 + 1 000 + 1 650 + 5 400; GT 27 186 = 8 434 + 14 052 + 4 700), and the pre-existing **910** for GT 300→200 s (game-vault `Guide:Ultimate_Weapons_Sync`) is exactly Σ of the first 10 cooldown levels (10+28+46+64+82+100+118+136+154+172) — three independent sources, one number.

## 7. Steps (UI only)

1. **Ultimate Weapons** panel → tap the **first** UW offer (**5** stones). Repeat whenever the next price is the cheapest thing you can buy (5 → 50 → 150 → 300 …). Unlock **Golden Tower**, **Black Hole** and **Death Wave** first — they are the coin trio.
2. Inside the UW panel, read the three stat lines. For **GT** tap the **Cooldown** line's `+` **ten times** in one sitting (300 → 200 s, 910 stones). Then **Black Hole** cooldown ×10 (→100 s), then **Death Wave** cooldown ×10 (→200 s). This is §4's Stage 3 = 2 620.
3. Read the run's **stats panel** coins-per-hour before and after (§8). The triple-coincidence period should visibly shorten from 600 s to 200 s.
4. Next, GT **Multiplier** ×10 (→9.0×, 534) and GT **Duration** ×15 (→30 s, 1 076). Stop there until the 9 UWs are done.
5. **Finish the 9 UW unlocks before touching UW+**: the UW+ tab only opens after all nine are owned, and its nine abilities can then be bought **in any order** — buy the **300/400-cost** first unlocks (the first level of each tree), not the 3 800 one.
6. Take the **`Unlock a Random Ultimate Weapon`** perk whenever it is offered (it is the only quantity-1 standard perk that hands out a whole UW); rank it high in the **Auto Pick Ranking** (T011).
7. Do **not** buy UW+ levels before the UW+ that multiplies your money UW (GT's **Golden Combo**: bonus = `(1 + 0.0003 × (L+1))^Kills − 1`, so its value scales with **GT duration** — a long-GT build wants Golden Combo levels, a short-GT build does not).

## 8. Reproduction checklist

- [ ] The first UW offer reads **5** stones and the prices follow 5 / 50 / 150 / 300 / 800 / 1 250 / 1 750 / 2 400 / 3 000.
- [ ] GT cooldown line reads **200 s** after 10 taps, and the panel's total for that line at max reads **4 700**.
- [ ] The three coin UWs trigger on the same wave every **200 s** (stop the run and count wave gaps).
- [ ] Coins/hour after Stage 3 is roughly **1.5–3×** the pre-purchase value (the multiplier product is only realised when the windows overlap).
- [ ] The perk table's stone values appear as the in-run UW panel's levels: e.g. the perk GT shows **×9.0 / 30 s / 230 s** and the panel prices it as if 15 + 15 + 7 levels were bought.
- [ ] The UW+ tab is still locked with 8/9 UWs owned, and appears the moment the 9th is bought.

## 9. Falsification

- If a cooldown `+` costs something other than the printed per-level column (10, 28, 46, …), the client uses a different price tree → record the whole column and rescale §3–§4 (the *ratios* between blocks are what the plan needs).
- If the UW totals row disagrees (e.g. GT ≠ 27 186), the version changed a ladder — trust the panel, keep the block ratios.
- If the triple-coincidence period does not shorten after §7 step 2, a third timer offsets the phase (Golden Bot, MVN, or a toggle): the UW timers **reset when a UW is toggled off and on again** (40 toggles/run max), so compare with all toggles left in their default state.
- If the perk-granted UW is still listed as owned after the run ends, §5.1's “in-run only” note is wrong → see H032.

## Sources

- fandom raw wikitext: `Ultimate Weapons` (the 5 … 3 000 unlock ladder, the 3-random-offer rule, the 40-toggle limit), `Ultimate Weapons/Ultimate Weapon Plus` (500 … 3 800 unlock ladder, 10 levels per ability, `Template:TableUWPCOST` → the three trees 23 800 / 18 570 / 19 050), `Golden Tower/Basic Upgrades`, `Black Hole/Basic_Upgrades`, `Death Wave/Basic_Upgrades`, `Chain Lightning/Basic_Upgrades`, `Smart Missiles/Basic_Upgrades`, `Spotlight/Basic_Upgrades`, `Chrono Field/Basic_Upgrades`, `Inner Land Mines/Basic_Upgrades`, `Poison Swamp/Basic_Upgrades` (per-level columns + `Total` rows), `Perks` (the nine perk-UW `stone value` entries and their exact stats).
- game-vault `Guide:Ultimate_Weapons_Sync` — the independent 910-stone figure for GT 300→200 s and the partial-sync table (250/200 → 1 000 s, 270/180 → 520 s).
- Cross-references: [T022](T022-free-currency-census-paid-ladder.md) §1–§2 (stone income and the masteries/Bot+/Synchronicity bills), [T011](T011-perk-engine-tuning.md) (ranking the random-UW perk), [T014](T014-tournament-tickets.md) (the other stone source).
