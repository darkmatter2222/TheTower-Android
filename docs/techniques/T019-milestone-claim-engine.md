# T019 — Milestone claim engine: the 23-step ladder, the W100 gate, and the pass-timing rule

Rev: 5 (2026-11-03) — **§2.② (new): the eight blocks on the calendar scale.** Each block is priced in **days of gem
income** (`block ge / 435`): **7.7 / 13.4 / 21.2 / 30.7 / 70.8 / 81.5 / 83.1 / 86.3 d**, Σ **171 725 ge = 394.8 d**; the free
ladder grows ×2.0054 ×1.4797 ×1.6996 **×2.5485** ×1.1345 ×1.0257 ×1.0461, so in log space the **T13** gate is **34.0 %** of
the whole **×15.647** growth and **T16–T24 together only 7.2 %**; the T1–T12 window is **10 135 ge = 23.3 d** free and **31 785 ge =**
73.1 d** with the four passes (**2.14×**), i.e. **3.4 % / 10.7 %** of one idle year; and in the `max()` model the lumps move
**only the gem and stone legs** — the state-C plan runs **349.6 → 328.3 → 273.9 → 219.0 → 161.5 d** as the free track, the
passes, the full free ladder and the paid column are added, with the binding walking **stones → gems → shards**
(**188.1 d** total), while the 12 300-stone ladder is **1.39×** the **8 865**-stone knee package but only **2.7 %** of the
452 282 census. `tools/lump-sum-ledger.ps1`.
Rev: 4 (2026-11-03) — **§2.①: the page’s own eight block **Totals** rows are transcribed and closed four ways**
(`tools/milestone-totals.ps1`): free gems **19 230** ✓, free stones **4 430** ✓, paid stones **7 870** ✓, coins
**1.3436 q** vs the printed `1.3q~`; the **one** open skew is the paid-gem grand row (**23 955** vs **29 495**, the
difference **5 540** = exactly the T19–21 block) ⇒ the premium layer is **29 495 / 29 515**, the 23 955 print is stale.
Plus the convexity law (**98.6 %** of the coin ledger is T22–24, T1–T12 = **0.08 %**), the through-T12 figures on both
bases (**4 735** vs **4 675** free gems, traced to `T4`’s 320/380 cell), and the printed **gate cells** that settle
**H047** (`Card: Land Mine Stun` = **T7 W250**, `Card: Nuke` = **T11 W10**).
Rev: 3 (2026-11-01) — the **two-track model** replaces the “+Prem” column reading (the Premium track is *additive*, so a
pass pays its whole column **on top of** the free one — Tower Hub's own totals prove it: 19 230 + 23 955 = **43 185**);
the pass values are recomputed, the per-tier sums are re-added and **12/12 checked column totals reproduce** for T1 and T4,
and the free relic pipeline is named tier by tier.
Rev: 2 (2026-11-01) — §3's W80 rows corrected (`Interest` + `Max Interest` are **T2 W80**, T1 W80 is a coin cell) ·
Currency: **Gems**, **Power Stones**, **Coins** + one-time **labs**, cards, skins, relics
**Value:** ★★★★ — through Tier 12 the **free** track is **4 675 gems + 540 stones ≈ 10 075 gem-equivalents** (per-tier
rows; **4 735** on the block-totals basis, §2.①, the gap being `T4`'s 320-vs-380 cell), and the
Premium track on top adds **7 850 gems + 1 380 stones ≈ 21 650 gem-equivalents** (both tracks = **31 725 ge**), so the
milestone ladder is the single densest tap-source in the game and the *only* source of most early labs. All of it is
claim-once, never expires, and is delivered by one button.
**Confidence:** **High** for the structure (23 milestones/tier, the wave list, W100 gate, skins at 2 500, relics at
4 500, 8 Premium Passes of 3 tiers, retroactive premium) and **High** for the numbers: **Verified (arithmetic)** — the
row data re-adds to every printed column total for T1 (235 / 360 gems, 5 / 35 stones, 1 675 / 141 450 coins) and T4
(320 / 515 gems, 10 / 70 stones, 50 k / 11.5 m coins). Device confirmation of the additive model is
[H038](../hypotheses/H038-milestone-two-track-badge.md); the per-tier gems are wiki-version-sensitive.
**Ease:** 1 tap per claim (~23 taps per tier) · **Prerequisite:** Tier 1 (the **Milestones** button is on the home screen).

---

## 1. The ladder (why “wave 100” is the only number that matters early)

Each tier has **23** milestones, at waves **10, 20, 30, 40, 50, 60, 70, 80, 90, 100**, then
**150, 200, 250, 300, 400, 500, 750, 1 000, 1 250, 1 500, 2 000, 2 500, 4 500**.

* **Tiers 1–14 unlock the next tier at wave 100; tiers 15–23 at wave 300.** ⇒ the tier-rush target in
  [T005](T005-tier-rush-then-farm.md) is *exactly* W100 up to Tier 14 — nothing else advances the tier.
* Waves 10–100 are the **unlock** milestones (systems/labs); waves ≥150 are mostly raw **gems/stones**.
* Every tier also pays a **tower skin at 2 500** and a **relic at 4 500** ([T018](T018-relic-economy.md)).
  The free-track relic per tier is printed: T1 `Coins +2 %`, T2 `Lab Speed +1.5 %`, T3 `Critical Factor +2 %`,
  T4 `Damage +2 %`, T5 `Health +1.5 %`, T6 `Defense Absolute +2 %`, T7 `Coins +5 %`, T8 `Damage/Meter +5 %`,
  T9 `Health +5 %`, T10 `Damage/Meter +5 %`, T11 `Defense Absolute +10 %`, T12 `Lab Speed +10 %` — while the *premium*
  cell of the same wave is **stones** (15 → 40), so the two tracks are both worth claiming.
  24 milestone skins × **+0.4 % coins** each = **+9.6 % coins for taps alone** ([T016](T016-guild-tokens-bits.md) §4).
* Rewards are **not claimed automatically** — the **Milestones** button shows a badge count. Claiming is 1 tap and
  nothing expires, so claims are a pure-tap queue, best batched after each push.

## 2. Per-tier yield: two tracks that **add**, and the pass value

Each wave has a **free (Standard) track** and a **Premium track**, and the Premium track is **additive** — the proof is
Tower Hub's own totals row, `19 230 free + 23 955 paid = 43 185` exactly, which only works if a paid cell is an *extra*
claim on top of the free one (it also has to be, or the pass would delete the free lab unlocks: T1 W30 is `Labs` free /
`10 Gems` premium). Gem-equivalent uses 1 stone = 10 gems ([T014](T014-tournament-tickets.md) §2); “Σ” is the running
total across tiers.

| Tier | Coins free | Coins prem | Gems free | Σ | Gems prem | Σ | Stones free | Σ | Stones prem | Σ |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | 1 675 | 141 450 | 235 | 235 | 360 | 360 | 5 | 5 | 35 | 35 |
| 2 | 250 | 3.33 m | 180 | 415 | 380 | 740 | 15 | 20 | 35 | 70 |
| 3 | 35 k | 9.40 m | 205 | 620 | 385 | 1 125 | 10 | 30 | 60 | 130 |
| 4 | 50 k | 11.5 m | 320 | 940 | 515 | 1 640 | 10 | 40 | 70 | 200 |
| 5 | 650 k | 27.05 m | 275 | 1 215 | 565 | 2 205 | 40 | 80 | 60 | 260 |
| 6 | 0 | 36.3 m | 390 | 1 605 | 560 | 2 765 | 30 | 110 | 105 | 365 |
| 7 | 5 m | 40 m | 340 | 1 945 | 600 | 3 365 | 35 | 145 | 140 | 505 |
| 8 | 10 m | 38 m | 490 | 2 435 | 770 | 4 135 | 70 | 215 | 130 | 635 |
| 9 | 0 | 18.5 m | 450 | 2 885 | 890 | 5 025 | 40 | 255 | 155 | 790 |
| 10 | 20 m | 105 m | 535 | 3 420 | 920 | 5 945 | 60 | 315 | 170 | 960 |
| 11 | 0 | 250 m | 610 | 4 030 | 935 | 6 880 | 90 | 405 | 165 | 1 125 |
| 12 | 0 | 450 m | 645 | **4 675** | 970 | **7 850** | 135 | **540** | 255 | **1 380** |

**Reading the two tracks (T1–T12):** free only = 4 675 gems + 540 st = **10 075 ge**; free **plus** the four Premium
passes = 12 525 gems + 1 920 st = **31 725 ge**, i.e. the passes are worth **21 650 ge** ≈ **2.15×** the free track.
(Rev 2's 8 570 / 1 480 were summation slips; 7 850 / 1 380 re-add exactly.) Whole ladder (24 tiers), as published:
**free 18 790 gems / 4 430 stones** (fandom) vs **19 230 / 4 430** (Tower Hub); **premium 29 515** (fandom) vs
**23 955** (Tower Hub, whose coins total is **1.3q**). The stones columns agree exactly; the gem columns differ by the
wiki version — see §6. **Rev 4 settles the premium line:** the Hub's own eight block rows add to **29 495**, which is
within **20** of fandom's **29 515**, so the premium layer is ≈ 29.5 k and the Hub's **23 955** grand cell is the stale
one (it omits its own T19–21 block, Δ **5 540** — §2.①).

**The pass table, recomputed on the additive model** (one purchase per 3-tier group, retroactive):

| Pass | Tiers | Gems | Stones | **Value (ge)** |
|---|---|---|---|---|
| 1 | 1–3 | 1 125 | 130 | **2 425** |
| 2 | 4–6 | 1 640 | 235 | **3 990** |
| 3 | 7–9 | 2 260 | 425 | **6 510** |
| 4 | 10–12 | 2 825 | 590 | **8 725** |
| — | 10–12 coins too | — | — | +450 m coins |

1. **Gem value per milestone grows with tier** — T1 pays 235 gems over 23 milestones (**≈ 10/milestone**),
   T12 pays 645 (**≈ 28**). Extrapolating the published 24-tier total, T13–T24 average (19 230 − 4 675) ÷ 12 ≈ **1 213
   gems/tier ≈ 53/milestone**, ≈ **1.9×** the T12 rate. The *same* 10-wave push is worth twice as much one tier up,
   which is why tier progression is the cheapest gem multiplier in the game and why the coin columns (250 coins at T2!)
   can be ignored entirely.
2. **The Premium Pass is a per-3-tier, one-time purchase** (8 passes: 1–3, 4–6, …, 22–24) and **buying it retroactively
   unlocks the premium rewards of milestones you already reached** ⇒ *buy each pass right after finishing that group*
   (one purchase, nothing lost, and you can wait for a store discount). On the additive model the value per pass is the
   whole premium column (table above): **later passes are strictly better** — pass 4 is **3.6×** pass 1 for the same
   price ([H021](../hypotheses/H021-premium-pass-price-uniform.md)), and the badge test in
   [H038](../hypotheses/H038-milestone-two-track-badge.md) is what confirms it.

### 2.① The page’s own eight **Totals** rows — the milestone ledger, closed four ways (new, Rev 4)

`wiki/guide/milestones` (2026-07-29, “10 data tables”) prints, besides the per-tier rows, one **Totals** row per currency
for each of its **eight 3-tier blocks**, six columns each in print order
(`tierA free | tierA paid | tierB free | tierB paid | tierC free | tierC paid`), plus a grand table
(`Coins − − 1.3q~`, `Gems 19230 23955 43185`, `Stones 4430 7870 12300`). `tools/milestone-totals.ps1` re-adds all of it:

| Block | Coins free | Coins paid | Gems free / paid | Stones free / paid |
|---|---|---|---|---|
| T1–3 | 36 910 | 13.3615 M | **620 / 1 125** | **30 / 130** |
| T4–6 | 1.7 M | 74.85 M | 1 045 / 1 640 | 80 / 235 |
| T7–9 | 15 M | 96.5 M | 1 280 / 2 260 | 145 / 425 |
| T10–12 | 70 M | 805 M | 1 790 / 2 825 | 285 / 590 |
| T13–15 | 46.8 B | 99.9 B | 3 275 / 5 035 | 855 / 1 395 |
| T16–18 | 490 B | 1.43 T | 3 415 / 5 195 | **1 000 / 1 685** |
| T19–21 | 1.9 T | 14.6 T | 3 760 / **5 540** | **1 000 / 1 685** |
| T22–24 | 285 T | 1.04 q | 4 045 / 5 875 | 1 035 / 1 725 |
| **Σ** | **1.3436 q** (coins, both tracks) | | **19 230 / 29 495** | **4 430 / 7 870** |

1. **Three of the four columns close exactly against the page’s grand table:** free gems **19 230** ✓, free stones
   **4 430** ✓, paid stones **7 870** ✓; the grand rows are themselves consistent (`19 230 + 23 955 = 43 185`,
   `4 430 + 7 870 = 12 300`). The coins close too: Σ **1.34357 × 10¹⁵ = 1.3436 q** against the printed `1.3q~`.
2. **One skew, and it is localised:** the paid-gem column adds to **29 495** while the grand table prints **23 955**;
   the difference **5 540** is *exactly* the T19–21 paid gem cell (`1 390 + 1 820 + 2 330`), so the grand row omits one
   block rather than the block rows being wrong. The block-basis total **29 495** also lands within **20** of fandom’s
   premium total **29 515**, which the per-tier rows already re-added — so **29 495 / 29 515 is the premium layer and
   23 955 is the stale print** (§6’s inter-source note updated accordingly).
3. **Coins are a rounding error before T13.** The 24-tier coin ledger is **98.6 %** the T22–24 block, **1.4 %** the
   T13–T21 blocks, and T1–T12 contribute **1.076 B = 0.08 %** — so a sub-T13 account should treat every coin cell as
   free-but-irrelevant and claim for **gems, stones and the lab unlocks** only (the table above is why §2’s
   “the coin columns can be ignored” is now a measured statement).
4. **Through T12, in income units** (block basis): free **4 735 gems + 540 stones**, paid **7 850 gems + 1 380 stones**
   ⇒ the free track is **10.9 days** of gem income (435/day) and **9.8 days** of stone income (55/day); both tracks
   together = **12 585 gems + 1 920 stones = 31 785 ge**. The per-tier rows give **4 675** free gems for the same window
   — a **60-gem** skew traced to one cell: `T4` free gems print **320** in the per-tier table and **380** inside the
   block’s Totals row (`380 + 275 + 390 = 1 045`). The premium column has no such skew (`1 125 + 1 640 + 2 260 + 2 825`
   `= 7 850` ✓ both ways), and the **stones** columns agree exactly on both bases.
5. **Two blocks share one stone column:** T16–18 and T19–21 both print `1 000 / 1 685` stones, i.e. the stone yield is
   flat at 1 000 free / 1 685 paid per 3-tier block from T16 on — the stone ladder has saturated (§T008’s knee rule).

**Gate cells the same table prints** (column position fixes the tier: odd = free, even = premium). T2 W750
`Recovery Package Chance` · T2 W1000 `Garlic Thorns` · T3 W150 `Second Wind Blast` · T3 W250 `Death Wave Labs` ·
T3 W300 `Double Death Ray` · T3 W400 `Spotlight Missiles` · T2 W400 `Improve Trade-Off Perks` · **T7 W250
`Card: Land Mine Stun`** · T8 W300 `Super Tower Bonus` · **T11 W10 `Card: Nuke`** · T11 W200 `Enemy Attack Level Skip` ·
T12 W60 `Workshop Enhancement` · **T14 W50 `Card: UW Crit`** · T14 W60 `Recharge Barrage` + `Recharge Second Wind` +
`Recharge Demon Mode` · **T20 W80 `Area of Effect Card`**. Every one of these matches the gate already used in
[T006](T006-lab-queue-packing.md) / [T011](T011-perk-engine-tuning.md) / [T012](T012-card-deck-order.md) /
[T020](T020-workshop-coin-order.md); this settles **H047** at **T7 W250** (`Land Mine Stun`) with `Nuke` at T11 W10, so
the older “T11 W10 for both” print is one row’s offset. One cell boundary stays open: the T13–T15 W60 row carries **four**
recharge labs and `Recharge Nuke` is printed in the cell *after* the other three (⇒ T15 by column order, while
`wiki/card/nuke` says T14 W60) — a one-tier ambiguity with no currency effect.

### 2.② The eight blocks on the **calendar** scale, and what a lump-sum can actually move (new, Rev 5)

The same table, priced in **days of gem income** (435/day, [T025](T025-years-to-max-ledger.md) §1.⑤) with `1 stone = 10 ge`
and `1 shard = 0.6 ge`, which is the only way to compare a claim-once cell with a flow. `tools/lump-sum-ledger.ps1`.

| block | free ge | paid ge | **block ge** | **days of gem income** | free ratio to the previous block | free ge/tier |
|---|---|---|---|---|---|---|
| T1–3 | 920 | 2 425 | **3 345** | **7.7** | — | 306.7 |
| T4–6 | 1 845 | 3 990 | **5 835** | **13.4** | ×2.0054 | 615.0 |
| T7–9 | 2 730 | 6 510 | **9 240** | **21.2** | ×1.4797 | 910.0 |
| T10–12 | 4 640 | 8 725 | **13 365** | **30.7** | ×1.6996 | 1 546.7 |
| T13–15 | 11 825 | 18 985 | **30 810** | **70.8** | **×2.5485** | 3 941.7 |
| T16–18 | 13 415 | 22 045 | **35 460** | **81.5** | ×1.1345 | 4 471.7 |
| T19–21 | 13 760 | 22 390 | **36 150** | **83.1** | ×1.0257 | 4 586.7 |
| T22–24 | 14 395 | 23 125 | **37 520** | **86.3** | ×1.0461 | 4 798.3 |
| **Σ** | **63 530** | **108 195** | **171 725** | **394.8** | — | — |

**1. The ladder has one real step and then saturates.** The free column grows **×2.0 / ×1.48 / ×1.70** through T12, jumps
**×2.55** at the T13 block, and afterwards crawls (**×1.13 / ×1.03 / ×1.05**) — the last three blocks differ by under **6 %**
from one another. Per tier the free yield runs **306.7 → 4 798.3 ge = ×15.647** across the whole ladder, and that growth is
front-loaded: taking the seven steps in log space (**Σ ln = 2.750 263**, which equals `ln(14 395/920)` exactly), the
**T13** gate alone carries `0.935 502/2.750 263 =` **34.0 %**, everything through **T15** carries **92.8 %**, and the three
blocks from **T16 to T24** together are only **7.2 %** — so the milestone ladder is a *Tier-13* ladder with a long flat tail.

**2. The window a sub-T11 account can hold:** free **10 135 ge** = **23.3 days** of gem income (the per-tier basis prints
10 075 ge = 23.2 d, the 60-gem `T4` cell of §2.① finding 4), and with all four Premium passes **31 785 ge = 73.1 days** —
the passes alone are **21 650 ge**, i.e. **2.14×** the whole free track for four taps. In flow units the free window is
**3.4 %** of one year of income (**297 318 ge** of gems + stones + shards), with the passes **10.7 %**, so the entire 24-tier
ladder on both tracks (**171 725 ge**) is **57.8 %** of a single idle year.

**3. What a lump-sum can move in the `max()` model — only two of the five legs.** The clock leg (**499.5 / 134.1 d**) and
the medal leg (**2 450.4 d**) have *no* lump source, so in states A and B of [T025](T025-years-to-max-ledger.md) §1.⑤ the
plan's length does not change at all when you claim milestones. They start paying exactly when the binding leg becomes a
**priced** one (state C, `Daily Mission Shards` at L50 plus the ×3.725 stack):

| claimed | gem leg | knee-package leg | shards | clock | **plan** | bound by |
|---|---|---|---|---|---|---|
| nothing (bills only) | 263.2 | 349.6 | 161.5 | 134.1 | **349.6 d** | stones |
| free track T1–12 (4 735 ge + 540 st) | 252.3 | 328.3 | 161.5 | 134.1 | **328.3 d** | stones |
| + the four passes (7 850 ge + 1 380 st) | 234.3 | 273.9 | 161.5 | 134.1 | **273.9 d** | stones |
| whole free 24-tier ladder (19 230 ge + 4 430 st) | 219.0 | 174.9 | 161.5 | 134.1 | **219.0 d** | **gems** |
| whole ladder, both tracks (48 725 ge + 12 300 st) | 151.2 | **0** | 161.5 | 134.1 | **161.5 d** | **shards** |

Reading: **claiming everything that exists takes the state-C plan from 349.6 d to 161.5 d — a saving of 188.1 days — and the
binding leg walks stones → gems → shards as the lumps arrive.** Inside the sub-T12 window alone the saving is **21.3 d**
(free) or **75.7 d** (with the passes). The stone ladder is the interesting one: **12 300** stones over 24 tiers is
**1.39×** the **8 865**-stone knee package, so that package is fully paid for by milestone cells before any weekly flow is
counted — but only **2.7 %** of the **452 282**-stone whole census (**485.1** of 17 836.5 d), which is why the long-run stone
timeline is a *flow* problem, not a claim problem.

**4. The three rules that follow, in order:** (i) claim every badge — one button, **2.14×** nothing; (ii) buy each Pass the
week its block is finished (retroactive, §2 finding 2), which is worth **2.14×** the free track for four taps;
(iii) spend the *idle* progress on the **T13** gate before polishing T1–T12, because that single step is worth **+155 %** of
a whole 3-tier block while every later step is worth under **+15 %**.

## 3. The unlock map — which wave lights up which system (free column, T1–T12)

Use this as the lab-queue forecast for [T006](T006-lab-queue-packing.md): the bunches (3–4 labs at one wave) are
where a slot suddenly has nothing to research, so push those waves first.

| Tier | Wave → unlocks |
|---|---|
| 1 | 30 **Labs** · 60 **Tournaments** · 70 **Events** · 150 Lab Speed · 250 More Round Stats · 400 Card Presets (W80 is 1.5 k coins) |
| 2 | 20 Buy Multiplier · 30 Range · 40/50/60 Workshop Attack/Defense/Utility Discount · **80 `Interest` + `Max Interest`** · 90 **Modules** · 150 **Unlock Perks** · 250 First Perk Choice · 400 Improve Trade-Off Perks · 750 Recovery Package Chance · 1 000 Garlic Thorns |
| 3 | 10 **Guilds** · 30 Damage/Meter · 50 Shockwave Size · 80 Orb Speed · 150 Second Wind Blast · 200 Package After Boss · 250 Death Wave Labs · 300 Double Death Ray · 400 Spotlight Missiles |
| 4 | 30 Workshop Respec + **Reroll Daily Missions** · 40 **Card: Cells** · 50 Auto Pick Perks · **70 Common Drop Chance + Reroll Shards + Daily Mission Shards (3 labs)** · 80 Perk Option Quantity · 90 **Unlock Dissonance** · 150 Target Priority · 200 Golden Tower Bonus + Duration · 300 Energy Shield Extra Hits |
| 5 | 30 Defense % · 40 Ban Perks · 60/70/80/90 **Flame/Thunder/Golden/Amplify Bot Cooldown** · 150 Black Hole Damage + BH Coins Bonus · 200 Super Crit Chance + Multiplier · 500 Extra Black Hole |
| 6 | 10 **Auto Pick Ranking** · 30 Land Mine Damage + Decay · 50 Extra Orb Adjuster · 60 Bot Bot Cooldown · 80 Extra Extra Orbs · 150 Recovery Package Amount + Max + Chance · 750 Orb Boss Hit |
| 7 | 10 Wall Health + Wall Rebuild · 30 **4 Smart-Missile labs** · 40 3 Inner-Land-Mine labs · 50 **4 Poison-Swamp labs** · 60 3 Chain-Lightning labs · 80 Spotlight Coin Bonus · 90 **4 Chrono-Field labs** · 250 Card: Land Mine Stun |
| 8 | 20 **Unmerge Module** · 50 Missile Barrage + Barrage Quantity · 300 **Super Tower Bonus** |
| 9 | 10/20/30/40/50/60 **enemy-stat pairs** (Common, Fast, Tank, Ranged, Boss, Protector: Health + Attack) · 400 Protector Damage Red |
| 10 | **40 Module Shard Cost + Module Coin Cost + Rare Drop Chance + Substat Effect Bans** · **50 Flame Burn Stack + Thunder Linger Time + Golden Duration + Amplify Duration** · 70 Wall Thorns + Wall Regen |
| 11 | 10 **Card: Nuke** · 60 **Global Presets** lab · 200 Enemy Attack Level Skip + Enemy Health Level Skip |
| 12 | 10 Wall Invincibility · 60 **Workshop Enhancement** lab |

Currency-relevant highlights: the **four bot-cooldown labs land in Tier 5 (W60–W90)** — the same cooldown lines T015
rates the cheapest bot multipliers, and they are *free labs* that do not consume medals; the **module-cost labs**
(shard + coin cost, W40 of T10) directly discount the module engine of T010; `Global Presets` (T11 W60) duplicates
what T017 sells for 20 keys. **T2 W80 lights two labs at once** — `Interest` and `Max Interest`, the whole
[T001](T001-interest-idle-engine.md) engine — so the interest engine is a **Tier 2** system: nothing in §2 of T001 is
buyable in Tier 1, and W80 of Tier 2 is the first milestone worth rushing after W100.

## 4. Steps (UI only)

1. Home screen → **Milestones** button (the badge = unclaimed count) → tap each lit row to claim. Batch this after
   each push session; unclaimed rewards are not lost.
2. When starting a tier, push to **wave 100** before farming (T005): that one milestone is the tier gate, and the
   premium column of W100 is also the single biggest gem cell in the tier (50 → 160 gems from T1 to T12).
3. Keep the claim order **big-cell first** inside a session: W100 (tier), W2 500 (skin = +0.4 % coins),
   W4 500 (relic), then the gem/stone rows — this is the same 3 numbers every tier.
4. After finishing waves 10→4 500 of the **third** tier in a pass group (3, 6, 9, 12, …), buy that group's
   **Premium Pass** in the store — the retroactive unlock means every earlier wave lights a **second** cell: 23 extra
   claims per completed tier (69 per group), and §2's pass table is what those taps are worth.
5. Read the map in §3 as a lab forecast: on reaching **T4 W70**, **T7 W30/50/90**, **T10 W40/50** you suddenly get
   3–4 new labs — pre-plan which two matter (T006's queue) instead of letting a slot idle.
6. Note the **coin** columns are irrelevant below Tier 10 (1 675 coins at T1) — never optimise a run around them;
   the same runs pay the gem/stone cells automatically.

## 5. Reproduction checklist

- [ ] The **Milestones** badge decreases by exactly **1** per claimed row and rows do not auto-claim.
- [ ] A tier shows **23** rows, the last two at **2 500** (skin) and **4 500** (relic).
- [ ] Reaching wave 100 lights the “Tier N+1” row and that row is what unlocks the next tier (before T15).
- [ ] Tier 1's free gem rows sum to **235** (10+15+20+20+25+25+30+30+30+30) and the stone row to **5**.
- [ ] All six of Tier 1's printed column totals re-add from its 23 rows: gems **235** free / **360** premium, stones
      **5** / **35**, coins **1 675** / **141 450** — and Tier 4's six too: **320** / **515**, **10** / **70**,
      **50 k** / **11.5 m** (12/12 ✓).
- [ ] With one Premium Pass owned, one fully-reached tier offers **46** claim cells (**23** waves × 2 tracks), not 23
      ([H038](../hypotheses/H038-milestone-two-track-badge.md)).
- [ ] Buying a Premium Pass after finishing its 3 tiers pays the premium column for **already-claimed** milestones.
- [ ] Tier 4 Wave 70 lights **three** module labs at once; Tier 10 Wave 40 lights **four**.
- [ ] Tier 6 Wave 10 is the `Auto Pick Ranking` lab (not T5 — corrected from Rev 1 of T011).
- [ ] **§2.① the block ledger:** the eight free-gem cells re-add to **19 230** and the eight paid-stone cells to
      **7 870**; the free-stone cells to **4 430**; the paid-gem cells to **29 495** (the grand row’s **23 955** is
      **5 540** short = the T19–21 block); the coin columns re-add to **1.3436 q** against the printed `1.3q~`.
- [ ] **§2.① the two gate reads:** the **Milestones** screen lists `Card: Land Mine Stun` on **Tier 7 wave 250** and
      `Card: Nuke` on **Tier 11 wave 10** (one card each, both on the free track).
- [ ] **§2.② the block table by hand:** each block's ge is `free gems + 10 × free stones` (+ the same for the paid column),
      e.g. `T10-12 = 1 790 + 10 × 285 =` **4 640** ge free and `2 825 + 10 × 590 =` **8 725** ge paid, and the eight block
      totals re-add to **63 530** and **108 195** ge; the day column is the block ge `÷ 435` (**13 365/435 = 30.74** ✓).
- [ ] **§2.② the two ladder laws:** the seven free ratios multiply to `14 395/920 =` **15.647** and the T13 step is
      `0.935 502/2.750 263 =` **34.0 %** of the log growth, with **T16–T24 = 7.2 %**; the identity `Σ ln =`
      `ln(14 395/920) = 2.750 263` closes, and `92.849 + 7.151 =` **100.0** for the T15/T16 cut ✓.
- [ ] **§2.② the plan table:** the five rows are `max(legs)` with the lumps subtracted from the two priced bills, e.g. the
      paid-column row `(114 500 − 48 725)/435 =` **151.2** and `(8 865 − 12 300) → 0`, so the binding leg is the shard
      fleet at `82 380/510 =` **161.5 d**; the whole saving is `349.6 − 161.5 =` **188.1 d**.

## 6. Falsification

- If a tier's next tier lights at a wave other than **100** (T1–T14) the rush target in T005 changes → re-read the
  “Tier N+1” row.
- If the premium column is *not* granted retroactively for already-claimed milestones, buy the pass immediately
  after **wave 100** of the first tier in a group instead (the biggest cells come early).
- If a per-tier sum above disagrees with the in-game list, transcribe the 23 cells for that tier and use those —
  the whole §2 table is only as good as the versioned wiki tables. Known inter-source gaps: T1 W10 coins are
  **25** (fandom) vs **10** (Tower Hub), T3's premium coins **9.40 m** vs **9.89 m**, and the 24-tier gem totals
  **18 790** vs **19 230** free / **29 515** vs **23 955** premium — the fandom columns are the ones whose per-tier
  totals re-add, so they are the base here.
- If the badge shows **23** cells for a fully-reached tier while a Premium Pass is owned, the premium column *replaces*
  the free one: revert §2 to the Δ model (passes **1 505 / 2 205 / 3 780 / 4 085 ge**) and the T1–12 total to
  7 850 gems / 1 380 stones with the pass ([H038](../hypotheses/H038-milestone-two-track-badge.md)).
- If claiming a **coin** cell pays a different amount than the printed cell value, the coin cells are scaled by the
  run's coin multiplier (or by the tier) rather than flat → re-read one cell with a known multiplier
  ([H039](../hypotheses/H039-milestone-coin-cell-scaling.md)) and rescale §2's coin columns.
- If `Auto Pick Ranking` appears at T5, the milestone tables were re-versioned → re-read the lab list in the Lab panel.
- **§2.①:** if the paid-gem block rows no longer exceed the grand row by the T19–21 column, the grand table was
  regenerated ⇒ re-run `tools/milestone-totals.ps1` and use whichever of **29 495** / **23 955** the per-tier rows support;
  the *per-block* figures are unaffected either way, so §2’s pass table and the T1–T12 window do not move.
- **§2.①:** if the in-game Milestones screen pays `Land Mine Stun` at T11 (not T7 W250), the gate print is the stale one
  ⇒ keep the in-game reading and re-check the column-position rule (odd column = free track of that tier).
- **§2.②:** if the Premium Passes are **not** additive (H038’s alternative), the paid column of **108 195 ge** disappears and
  the last row of the plan table reverts to the free-ladder row (**219.0 d**, gems binding) — the 12 300-stone ladder halves
  to **4 430** stones, which is **0.50×** the knee package instead of **1.39×**, so the knee leg stops being free at level
  `8 865 − 4 430 =` **4 435** stones.
- **§2.②:** if your own gem income is not **435/day**, every day column in §2.② scales by `435 ÷ yours` and the *ratios*
  (×15.647, 34.0 %, 7.1 %) are unchanged; if your stone income is not **25.357/day** (177.5 per week) only the stone legs of
  the plan table move (`8 865 − lumps ÷ yours`).
- **§2.②:** a new lump source (achievements, a guild first-time bonus) can only move the **gem** and **stone** legs — the
  clock legs (**499.5 / 134.1 d**) and the **medal** leg (**2 450.4 d**) have no lump source, so if you see the plan’s length
  change while stones and gems are *not* the binding leg, something else in the model is wrong.
- **§2.① convexity:** if a T1–T12 coin cell pays materially more than printed, the coin cells are run-multiplier
  scaled rather than flat — that is [H039](../hypotheses/H039-milestone-coin-cell-scaling.md), and only the coin column
  of this table moves (gems and stones are fixed cells).

## Sources

- `tools/lump-sum-ledger.ps1` (new, Rev 5) — the eight blocks in ge and in **days of gem income**, the ladder's log-space
  shares (**34.0 %** at T13, **92.9 %** through T15, **7.1 %** for T16–24), the T1–T12 window (**10 135 / 31 785 ge**), and
  the five-row lump-adjusted `max()` plan table (**349.6 → 328.3 → 273.9 → 219.0 → 161.5 d**).

- fandom `Milestones` (raw wikitext) — reward types, “rewards are not claimed automatically”, **23 milestones/tier**
  and the exact wave list, **tier unlock at W100 (T1–14) / W300 (T15–23)**, skin at 2 500 + relic at 4 500,
  8 Premium Passes covering 3 tiers each with retroactive premium, and the grand totals
  (free 18 790 gems / 4 430 stones; premium 29 515 / 7 870; coins 287.3 T / 1 056.1 T).
- Tower Hub `wiki/guide/milestones` (last verified 2026-07-29, “10 data tables”) — the account-wide **Free / Paid /
  Total** columns (gems **19 230 / 23 955 / 43 185**, stones **4 430 / 7 870 / 12 300**, coins **1.3q**), the additive
  check 19 230 + 23 955 = 43 185, “the badge shows how many rewards are waiting / nothing expires”, and the note that
  **T23 lights the Fleet Ultimate-Battle-Condition labs** (order unconfirmed). Rev 4 adds the **eight per-block Totals
  rows** (three rows per block, six columns each, quoted in §2.① and re-added by `tools/milestone-totals.ps1`) and the
  **named gate cells** — `Card: Land Mine Stun` (T7 W250), `Card: Nuke` (T11 W10), `Card: UW Crit` (T14 W50),
  `Area of Effect Card` (T20 W80), `Second Wind Blast` (T3 W150), `Double Death Ray` (T3 W300), `Super Tower Bonus`
  (T8 W300), `Recovery Package Chance` (T2 W750), `Garlic Thorns` (T2 W1000), `Death Wave Labs` (T3 W250),
  `Enemy Attack Level Skip` (T11 W200), `Workshop Enhancement` (T12 W60), the four `Recharge` labs at T14–T15 W60 — read
  with the column rule “odd column = that tier’s free track” (244 rows in the combined table).
- fandom `Milestones/1 2 3`, `/4 5 6`, `/7 8 9`, `/10 11 12` (raw wikitext) — every per-wave cell for Tiers 1–12,
  including the lab unlocks of §3, the per-tier totals used in §2 (all six columns of T1 and of T4 re-add exactly), and
  the named free-track relics of §1.
- `tools/gm_strings.txt` — `Assets\Scripts\Milestone.cs`, `MilestoneManager.cs`, the `Milestones` panel string, and
  the lab classes the map refers to (`Lab`, `LabTimeManager`, `ModuleManager`).
