# T019 — Milestone claim engine: the 23-step ladder, the W100 gate, and the pass-timing rule

Rev: 3 (2026-11-01) — the **two-track model** replaces the “+Prem” column reading (the Premium track is *additive*, so a
pass pays its whole column **on top of** the free one — Tower Hub's own totals prove it: 19 230 + 23 955 = **43 185**);
the pass values are recomputed, the per-tier sums are re-added and **12/12 checked column totals reproduce** for T1 and T4,
and the free relic pipeline is named tier by tier.
Rev: 2 (2026-11-01) — §3's W80 rows corrected (`Interest` + `Max Interest` are **T2 W80**, T1 W80 is a coin cell) ·
Currency: **Gems**, **Power Stones**, **Coins** + one-time **labs**, cards, skins, relics
**Value:** ★★★★ — through Tier 12 the **free** track is **4 675 gems + 540 stones ≈ 10 075 gem-equivalents**, and the
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
wiki version — see §6.

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

## Sources

- fandom `Milestones` (raw wikitext) — reward types, “rewards are not claimed automatically”, **23 milestones/tier**
  and the exact wave list, **tier unlock at W100 (T1–14) / W300 (T15–23)**, skin at 2 500 + relic at 4 500,
  8 Premium Passes covering 3 tiers each with retroactive premium, and the grand totals
  (free 18 790 gems / 4 430 stones; premium 29 515 / 7 870; coins 287.3 T / 1 056.1 T).
- Tower Hub `wiki/guide/milestones` (last verified 2026-07-29, “10 data tables”) — the account-wide **Free / Paid /
  Total** columns (gems **19 230 / 23 955 / 43 185**, stones **4 430 / 7 870 / 12 300**, coins **1.3q**), the additive
  check 19 230 + 23 955 = 43 185, “the badge shows how many rewards are waiting / nothing expires”, and the note that
  **T23 lights the Fleet Ultimate-Battle-Condition labs** (order unconfirmed).
- fandom `Milestones/1 2 3`, `/4 5 6`, `/7 8 9`, `/10 11 12` (raw wikitext) — every per-wave cell for Tiers 1–12,
  including the lab unlocks of §3, the per-tier totals used in §2 (all six columns of T1 and of T4 re-add exactly), and
  the named free-track relics of §1.
- `tools/gm_strings.txt` — `Assets\Scripts\Milestone.cs`, `MilestoneManager.cs`, the `Milestones` panel string, and
  the lab classes the map refers to (`Lab`, `LabTimeManager`, `ModuleManager`).
