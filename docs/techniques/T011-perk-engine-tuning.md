# T011 — Tune the Perk engine: more picks per run, deterministic picks

Rev: 3 (2026-11-02) — the **coin budget level by level** added (what the first 10 levels of each perk lab cost and how many
days of a slot they eat), the **`Auto Pick Ranking` > `First Perk Choice` precedence** confirmed with the source's worked
example (**H006 resolved**), and the `Improve Trade-Off Perks` exclusion (the ranged-enemy trade-off perk is not boosted).
Currency: **Coins** (primary), Cash, Experience — every pick is a run-multiplier, so pick *count* is the compounding lever.
Status: **Unverified (Rev 3)** — the gates now agree across **three** sources (fandom `Perks`, game-vault, Tower Hub's
milestone-linked lab pages); the ladder costs are printed values, the Σ sums below are arithmetic.

| | |
|---|---|
| **Value** | ★★★★ — a tuned engine gives **3.2× more perk picks** in a 1,000-wave run (5 → 16) and each pick is itself a multiplier. One pick (`Increase Max Game Speed`) alone is +20 % waves/min. |
| **Confidence** | **Medium** — two independent wikis (game-vault, fandom) publish the same formula, the same lab tables and the same 200/250/300/350 step points; the arithmetic below is deterministic from them. Not yet checked against a live save. |
| **Ease** | One-time setup: **~10 taps** across the Lab and the Perks panel, plus **1 tap** per run. 5–10 min. |
| **Prerequisite tier** | Tier 2 Wave 150 milestone (`Unlock Perks` lab). Full engine needs Tier 6 Wave 10 (`Auto Pick Ranking`; the last one in the list). |

---

## 1. The mechanics that make this worth doing

Perks are earned every *N* waves, where **N is not fixed** — it is a formula you control:

```
N = floor( (BaseWaves − WavesRequiredLab) × (1 − PWRqty × 0.20 × (1 + SPB/100)) )
```

* `BaseWaves` = 200 for picks 1–20, **250** after 20 picks, **300** after 30, **350** after 40.
* `WavesRequiredLab` = level of the **Waves Required** lab (−1 per level, 100 levels).
* `PWRqty` = how many times you took the **Perk Wave Requirement −20.00 %** standard perk (max 3).
* `SPB` = level of the **Standard Perk Bonus** lab, in % (25 levels ⇒ 25 %).
* The formula gives the gap for the *first* pick at each base; the gap is then just repeated.

Anchors, from the fandom page: with no lab/perk help the 1st pick lands at wave **200**, the 20th at **4 000**, the 30th at **6 500**, the 40th at **9 500**, and all **79** perks by wave **23 150**.

Two properties matter for efficiency:

1. **`Perk Wave Requirement` is retrospective.** Take it late in a run and the game recomputes the schedule — the waves you already cleared pay out extra picks immediately. It is the only perk whose value is paid backwards, which is why it is always the first pick.
2. **Unpicked perks queue.** If a pick becomes ready while the phone is idle, it waits; reaching the next one while one is pending queues both, and you drain them together when you return. Nothing is lost to idle time, so long AFK runs are safe.

### Pick count you can expect (formula-derived)

`L` = Waves Required lab, `q` = PWR perk count, `SPB` = lab %.

| Setup | interval | picks @ 1 000 w | picks @ 3 000 w |
|---|---|---|---|
| Untuned (`L=0, q=0, SPB=0`) | 200 w | **5** | 15 |
| Casual (`L=10, q=1, SPB=5`) | 150 w | 6 | 20 |
| Active (`L=20, q=3, SPB=10`) | 61 w | **16** | 40 |
| Solid (`L=30, q=3, SPB=20`) | 47 w | 20 | 47 |
| Late (`L=50, q=3, SPB=25`) | 37 w | 25 | 55 |
| Near-max (`L=100, q=3, SPB=25`) | 24 w | 33 | 66 |

Read it as: **`Waves Required` lab + 3× PWR + `Standard Perk Bonus` ≈ 3.2× the picks** of an untuned run, and the SPB lab multiplies every one of those picks again (multiplicative perks: `(1 + base × qty) × (1 + SPB)`; additive perks: `base × qty × (1 + SPB)`). SPB does **not** apply to Bounce Shot or Orbs.

### Why the option-count lab is high value (probability table)

Each offer slot is rolled independently: **68 % standard / 20 % Ultimate-Weapon / 12 % trade-off** (if no UW perk can appear: 85 % / 15 %). So the chance an offer contains *at least one* standard (i.e. non-trade-off) perk:

| Choices in the offer | ≥1 standard | ≥1 UW perk |
|---|---|---|
| 2 (base) | 89.8 % | 36 % |
| 3 (`Perk Option Quantity` L1) | 96.7 % | 49 % |
| 4 (`Perk Option Quantity` L2) | **99.0 %** | 59 % |

The offer set for each pick is **fixed for the run — there is no perk reroll**, so the only way to improve the menu is more slots and bans. That is why `Perk Option Quantity` is the cheapest quality-per-gem in the whole perk tree.

### The coin budget, level by level (printed ladders + Σ)

Times are the **cumulative** base time of that line's own levels (before `Labs Speed`/relics, T006 §meta-labs).

| Lab | L1 | L2 | L3 | L5 | L10 | **Σ L1–L10** | Σ time |
|---|---|---|---|---|---|---|---|
| `Waves Required` (100 lv, −1 w/lv) | 100 K | 220 K | 940 K | 20.98 M | **1.18 B** | **≈ 2.42 B** | 10 d 4 h |
| `Standard Perk Bonus` (25 lv, +1 %/lv) | 100 K | 280 K | 1.36 M | 31.42 M | **1.77 B** | **≈ 3.63 B** | 3 d 7 h |
| `Auto Pick Ranking` (32 lv, +1 rank/lv) | 100 K | 180 K | 878 822 | 15.66 M | **591.04 M** | **≈ 1.29 B** | 10 d 4 h |
| `Improve Trade-Off Perks` (10 lv, +1 %/lv) | 600 M | 700.03 M | 801.18 M | 1.05 B | **4.92 B** | **≈ 17.3 B** | 8 d 11 h (L10) |
| `Ban Perks` (8 lv, +1 ban/lv) | 10 M | 100 M | 1.00 B | 100.00 B | — | **1.101116 q** (all 8) | 333 d 8 h (L8) |

Single-level lines: `Unlock Perks` **1.50 M** / 3 d 11 h 20 m · `First Perk Choice` **1.00 B** / 4 d 15 h 7 m ·
`Auto Perk Pick` **100 M** / 4 d 23 h 27 m · `Perk Option Quantity` **200 M** (+1) then **2.00 B** (+2, 10 d 4 h 27 m).

**Reading the ratios:** `Waves Required`, `Standard Perk Bonus` and `Auto Pick Ranking` all start at **100 K coins for the
first level** — the cheapest first levels in the entire lab tree — and each level after that is ~×2–5 dearer, so **the first
10 levels of those three lines ≈ 7.3 B coins buys essentially the whole engine effect** (interval 61 w ⇒ 16 picks per
1 000 waves). `Ban Perks` is the outlier: it steps in **decimal** blocks (10 M → 100 M → 1 B → 15 B → 100 B → 1 T →
100 T → 1 q), so bans 6–8 cost more than everything else combined — take **5 bans** (≈ 116 B coins) and stop.
The two ×1.00-B single levels (`First Perk Choice`, `Perk Option Quantity` L1 at 200 M) are the cheap quality wins; `Perk
Option Quantity` L2 at **2.00 B** is the single priciest quality-per-coin step before the Ban tail.

---

## 2. Step-by-step (UI only)

### A. One-time: unlock the perk tree

1. Home screen → tap the **Lab** button (flask icon).
2. Tap an empty lab slot → the **Lab Search** bar appears at the top of the slot picker → type `Perk`.
3. Queue **`Unlock Perks`** (unlocks at Tier 2 Wave 150; 1 level, 1.50 M coins, 3 d 11 h). Nothing else in the Perk category is visible until this finishes.
4. After it completes, the same search now lists the rest. Queue in this order (each is gated by the tier milestone shown):

| Priority | Lab | Milestone gate | Levels | What it buys you |
|---|---|---|---|---|
| 1 | `Waves Required` | after Unlock Perks | 100 | −1 wave per level → **more picks**, cheapest per level early |
| 2 | `Standard Perk Bonus` | after Unlock Perks | 25 | +1 % per level → multiplies *every* pick, incl. PWR itself |
| 3 | `Perk Option Quantity` | **T4 W80** | 2 | +1 / +2 offer slots → 99 % standard-perk coverage |
| 4 | `Auto Pick Perks` | **T4 W50** | 1 | hands-free picking (100 M coins, 4 d 23 h — cheap) |
| 5 | `Auto Pick Ranking` | **T6 W10** | 32 | makes Auto Pick deterministic instead of top-choice |
| 6 | `Ban Perks` | **T5 W40** | 8 | removes 8 perks from the pool permanently |
| 7 | `First Perk Choice` | **T2 W250** | 1 | guarantees one perk in the first offer (1 B coins) |
| 8 | `Improve Trade-Off Perks` | **T2 W400** | 10 | +10 % to trade-off benefits at L10 |

   Use the small **clock icon** left of the lab progress bar (**Auto Research**) so the next level of the same lab starts automatically — that keeps slot 1 from idling between levels (see T006).
   Note: before any perk lab, the *Main Research* **`Game Speed`** lab (Tier 1 Wave 30, 7 levels, `x5.0` at L7) should be maxed — it multiplies every wave of every run, and the `Increase Max Game Speed` perk only extends that cap.
   While a level is running, tapping the lab lets you switch research: coins are refunded and the elapsed time is kept as a green bar, but you pay the coins again — so *do not* switch a `Waves Required` level mid-flight unless the new one is also in your priority list.

### B. One-time: program the picks (only outside a run)

Bans, the First Perk Choice and the ranking **cannot be changed while a run is in progress**. Do all of this on the home screen with no active run.

5. Home screen → tap the **Perk button** (top-right corner) to open the **Perks panel**.
6. If `First Perk Choice` is researched: set it to **`Perk Wave Requirement −20.00 %`**.
7. If `Auto Pick Ranking` is researched: drag your priority list to the top (ranked perks show a highlight; grey = unranked, red = banned):
   1. `Perk Wave Requirement −20.00 %`
   2. `Golden Tower Bonus x1.5` *(skip if GT is not upgraded — see T008)*
   3. `Black Hole Duration +12.0s` *(higher if GT+DW+BH are synced, T008)*
   4. `x1.15 All Coin Bonuses`
   5. `Increase Max Game Speed by +1.00`
   6. `x1.15 Cash Bonus`
   7. `x1.80 coins, but Tower Max Health −70 %`
   8. `Free Upgrade Chance for All +5.0 %`
   9. `Defense Percent +4.00` then `x1.20 Max Health` (survival tail for longer runs)
8. If `Ban Perks` is researched, ban these eight (worst-per-slot first):
   `Interest x1.50` · `x1.15 Defense Absolute` · `x1.75 Health Regen` · `Tower Health Regen x8.00, but Tower Max Health −60 %` · `x12.00 Cash Per Wave, but Enemy Kill Don't Give Cash` · `Enemies Speed −40 %, But Enemies Damage x2.5` · `Ranged Enemies Attack Distance Reduced, But Tower Ranged Enemies Damage x3` · `Lifesteal x2.50, But Knockback force −70 %`.
   Ultimate-Weapon perks can only be banned for weapons you actually own.

> Note on `x1.80 coins but −70 % Max Health`: it is the best coins-per-pick in the pool, but it shortens the run. Rank it *below* the survival perks while you are still learning a tier's wall, above them once the run length is stable.

### C. Every run

9. Start the run. Once the top **perk bar** appears, tap it once to toggle **Auto Pick Perks** on. With Auto Pick on, the game takes the **highest-ranked** perk currently on offer; if none of the offered perks is
   ranked, it falls back to the **top** slot. **Precedence (settles H006):** `Auto Pick Ranking` **overrides**
   `First Perk Choice` — with `First Perk Choice` = `Perk Wave Requirement` but `Golden Tower Bonus` ranked higher, and both
   in the opening offer, the game takes **`Golden Tower Bonus`**. So the ranking list is the only list that matters once it
   exists; keep `First Perk Choice` as a backstop for the unranked case.
   Also: `Improve Trade-Off Perks` **does not boost the ranged-enemy trade-off perk** (the source names that exclusion), so
   the trade-off line's +1 %/level skips one of the pool's entries.
10. Leave the run to its natural end — do not stop at a round number. From the table above, the tuned engine pays ~4 extra picks per additional 300 waves; those picks are where the coin rate increase comes from.
11. If you came back to a stack of pending picks, take them in one sitting — the retrospective PWR recalculation makes the PWR pick worth more the later you take it only in the sense that it then accelerates everything after it; still pick it first whenever the menu contains it.

---

## 3. Reproduction checklist

- [ ] `Unlock Perks` shows as completed in the Lab panel (flask icon, Perk category).
- [ ] In a fresh run, the first perk offer appears **before** wave 200 once `Waves Required` is level ≥ 1 (e.g. level 20 + 3× PWR + SPB 10 ⇒ first offer at wave **61**).
- [ ] Count the perk offers in one 1 000-wave run and compare with the table row matching your lab levels.
- [ ] Take `Perk Wave Requirement` at the first opportunity and watch the counter on the perk bar drop (retrospective recalculation).
- [ ] With Auto Pick enabled, the perk that is taken is the top-ranked one of the offer, not always slot 1.
- [ ] The Perks panel is not editable during a run; the same panel is editable 1 second after the run ends.
- [ ] `Waves Required` L1 reads **100 000** coins / **1 d 1 h 40 m** and its L10 reads **1.18 B** / **10 d 4 h 5 m**;
      `Standard Perk Bonus` L10 = **1.77 B** / **3 d 7 h 12 m** (the two lines price differently from L3 onward).
- [ ] `Ban Perks` L3 reads **1.00 B** and L5 **100.00 B** (the decimal ladder), so 5 bans ≈ **116 B** coins.
- [ ] With both `First Perk Choice` and a higher-ranked perk in the opening offer, the **ranked** one is taken.
- [ ] No perk button appears in a tournament run (bracket start → the button is hidden).

## 4. Falsification

- First offer lands at exactly **wave 200** even though the `Waves Required` lab is level ≥ 1 → the lab is not being applied (wrong category / not completed); the technique's table is wrong for your save.
- Taking `Perk Wave Requirement` mid-run does **not** immediately produce extra pending picks → the retrospective claim is wrong; treat the schedule as fixed and pick PWR at the first offer only.
- With Auto Pick on and `Auto Pick Ranking` researched, an obviously-ranked perk is skipped in favour of the left-most slot → `Auto Pick Ranking` is not active (needs T6 W10 milestone), so `First Perk Choice` is doing the work instead.
- A banned perk appears in an offer → bans only apply from the next run (they cannot change mid-run), or the ban count exceeds your lab level.
- Perks appear during a **Tournament** → this document's "no perks in tournaments" note is wrong.

## 5. Notes / open items

- **Max game speed chain (three sources agree).** `Game Speed` is a *Main Research* lab, unlocked at the
  Tier 1 Wave 30 milestone, **7 levels**, value `x4.0` at L5 and `x5.0` at L7 — so maxing it is the single
  cheapest early speed win (1.0 M coins for the last level). Then the `Increase Max Game Speed by +1.00`
  perk (1 quantity) takes the cap to **6.00**, and a maxed `Standard Perk Bonus` lab inflates the perk to
  +1.25 ⇒ **6.25**, which the stats screen shows as **6.3** (it rounds to tenths; game-vault's "6.2" is the
  same value truncated). Caveat from the fandom `Game Speed` page: *the nominal multiplier overstates real
  throughput — x5.0 behaves closer to x4.0 and x6.25 closer to x5.* So budget **~20–25 %** extra waves/hour
  for the whole chain, not 25 % of the nominal 5→6.25 ratio. See [H008](../hypotheses/H008-duplicate-game-speed-perk.md)
  for whether extra copies of the perk are worth taking.
- Ranking dependency: `Auto Pick Ranking` (T6 W10) only appears **after** `Auto Pick Perks` is completed —
  do not look for it before that.
- The random-UW perk grants a *semi-upgraded* weapon but does **not** unlock that weapon's own lab research, and it disappears from the pool once all UWs are owned.
- See [H006](../hypotheses/H006-auto-pick-ranking-vs-first-perk-choice.md) and [H007](../hypotheses/H007-stepped-base-waves-lab-subtraction.md).

## Sources

- https://the-tower-idle-tower-defense.game-vault.net/wiki/Perks (rev. 2025-03-12) — lab tables with exact times/costs, recommended/bad perk lists, waves-required formula.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Perks (raw wikitext) — offer-slot probabilities (68/20/12), 79-perk schedule and step waves, Auto Pick fallback rule, no-mid-run-editing, trade-off lab max values.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Perk_Labs/Standard_Perk_Bonus — 25-level cap, Bounce Shot/Orbs exclusion.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Lab_Upgrades — Lab Search / Auto Research / switch-refund UI behaviour.
- https://www.tower-hub.com/wiki/lab/perk-labs (last verified 2026-11-01) — every perk lab's level count with its printed
  cost/time ladder (`Waves Required` 100 lv: 100 K → 1.18 B; `Standard Perk Bonus` 25 lv: 100 K → 1.77 B;
  `Auto Pick Ranking` 32 lv: 100 K → 591.04 M; `Improve Trade-Off Perks` 10 lv: 600 M → 4.92 B; `Ban Perks` 8 lv:
  10 M → 1.00 q), the milestone gates (T2 W150 / T2 W250 / T2 W400 / T4 W50 / T4 W80 / T5 W40 / T6 W10), the
  **ranking-over-first-choice precedence** example, the ranged-enemy trade-off exclusion, the SPB formulas
  (multiplicative `(1 + base × qty) × (1 + SPB)`, additive `base × qty × (1 + SPB)`), and “perks are disabled in
  tournaments for now”.
- `tools/gm_strings.txt` — `Assets\Scripts\Perks.cs`, panel strings `Perks Panel`, `Perks Choices Panel`, `Perk Button`, `Assets\Scripts\LabSpeedUp.cs` + `2_showSpeedUpIdleIndicator`.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Game_Speed — 7-level Game Speed lab (x5.0 at L7), 6.25 cap, "x5.0 behaves closer to x4.0".
- https://the-tower-idle-tower-defense.game-vault.net/wiki/Lab/Game_Speed and `/wiki/Guide:Labs_Guide` — lab gate (T1 W30), 5-slot role allocation, Elite-Cell speed-up cost-per-2x table.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Golden_Tower — GT stone totals (27,186) and the T4 W200 lab gate.
- https://tvtropes.org/pmwiki/pmwiki.php/VideoGame/TheTowerIdleTowerDefense — third-party confirmation that the PWR perk is retroactive and that `Auto Pick Ranking` requires `Auto Pick Perks` first.
- https://www.reddit.com/r/TheTowerGame/comments/13jj6nq/ and `/13332lg/` — community numbers for the speed cap (5 / 6.0 / 6.25→"6.3").
