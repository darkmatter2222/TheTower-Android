# T012 — Buy card levels by gems-per-percentage-point, not by card

Rev: 10 (2026-11-03) — **the two stone-bucket readings reconciled by row count**: the mastery stone column is
`500 ×2 + 750 ×13 + 1 000 ×13 + 1 250 ×3 = 27 500` on the **31-row** list and
`500 ×2 + 750 ×13 + 1 000 ×14 + 1 250 ×3 = 28 500` on the current **32-row** `Card Masteries` page — the extra card
(`Area of Effect`, 1 000 stones) is the whole difference, so both prints are correct for their own list (annotated in
§2.1 and §2.3). Cross-checked by `tools/card-research-family.ps1` in T006.
Rev: 9 (2026-11-03) — **the mastery layer gets its second source and closes (§2.3 item 10)**: fandom `Card Masteries`
prints **32** mastery rows × 10 values plus the shared lab ladder; the stones column re-adds to the printed
**28 500** exactly (`500 ×2 + 750 ×13 + 1 000 ×14 + 1 250 ×3`), the lab clock has the closed form
`t(n) = 250 × (n + 1)` h (**Σ 13 500 h = 562.5 d**) against a hand-set price column (**Σ 50.00 q**), linearity is
**31/32** rows with `Ultimate Crit+` the only rounded print, the **`Enhanced Ray`** ladder is finally printed
(**750 st**, **5 % → 50 %**, 150 st/pp), the gate is **T16 W100 + 30 cards at L7** (never during a run, effect only
while the card is equipped), and all 32 labs full = **1 600 q / 49.3 y** base = **13.2 y** under the ×3.725 stack.
Script: `tools/mastery-census.ps1`.
Rev: 8 (2026-11-03) - **the `death-ray` page finished (§2.3 items 3 and 9)**: all **30** `Double Death Ray` cells
transcribed, both totals re-added cell for cell (**Σ 1 097.15 B** coins, **Σ 21 415.5 h = 892.31 d**), the block split
(**0.11 % / 8.22 % / 91.66 %** of the coins; **2.3 % / 18.0 % / 79.7 %** of the clock) and the per-point law
(**0.125 125 B/pp** at L1–10 vs **36.572 B/pp** line average vs **100.57 B/pp** at L21–30 ⇒ **292× / 804×**), plus a
**fifth clock shape** (monotonically decaying ratios, cost tail **1.208**, time tail **1.13**) and the beam's immunity
list with the new **`Enhanced Ray Mastery`** lab name. Script: `tools/death-ray-lab.ps1`.
Rev: 7 (2026-11-03) - **the `nuke` page mined (§2.3 item 8)**: the first **special-card star ladder**
(**25 / 35 / 45 / 55 / 65 / 80 / 100 %**, non-arithmetic: **+10 ×4, +15, +20**), the **save order**
`Death Defy` → `Energy Shield` → `Second Wind` → `Demon Mode` → `Nuke`, the corrected Recharge Σ
(**14.43 T / 10 374 360 s = 120 d 1 h 46 m**, `tools/recharge-family.ps1`), and the printed **`Nuke(k) = Second Wind(k + 1)`**
column law on 6/6 steps. One conflict logged as [H062](../hypotheses/H062-nuke-mastery-ladder-which-print.md).
Same pass: the **four card gates are double-sourced** from `wiki/guide/milestones` (**T7 W250** `Land Mine Stun`,
**T11 W10** `Nuke`, **T14 W50** `UW Crit`, **T20 W80** `Area of Effect`), which settles **H047**.
Rev: 6 (2026-11-03) — **the card layer re-added by one script** (`wiki/card/cards`, 2026-10-13, “9 data tables”, via the new
`tools/card-mastery.ps1`): the slot ladder is **triple-printed** at **22 rows / Σ 58 400 gems** with new cumulative marks
**15 900** (slot 16) and **32 400** (slot 19); the **31 × 10** mastery block is linear on **30 rows** (worst residual
0.0000) with `Ultimate Crit` the only break (**0.0667** = rounded ⅓ pp), the stone column re-adds to **27 500**
(**500 ×2 · 750 ×13 · 1 000 ×13 · 1 250 ×3**), the shared mastery lab’s times have a **single distinct difference of
250 h** (⇒ `250n + 250`) and its coins sum to **exactly 50.00 q**; `Shatter Shards` closes at **Σ 2 063.56 T** and
**Σ 1 473 d**.
Rev: 5 (2026-11-02) — **the card-page census is closed (§2.2) and the special-card pages add a lab layer (§2.3)**:
22 of 23 standard card pages now print both tables; the mastery law is universal as **`v(k) = base + (k+1) × s`** over
all 22 (base = 1 for `×`, 0 for plain %, the printed offset otherwise), 22 stone costs match their four buckets, and the
five non-arithmetic card ladders are exactly §1's “seven exceptions”. §2.3: the `Level | Time | Cost | Value` pages
**double-source T006's Second Wind labs (proving `Time` per-level a third time)**, print the **1 500 → 300** Demon
Mode/Nuke recharge values, the full 30-level **Double Death Ray** lab (T3 W300, +1 pp/level, **Σ 1.10 T coins /
892.3 d**), the 890 B Energy-Shield bill and the 5-level named Presets ladder (Σ 35.35 T), and the printed **×1.50 × ×2.00
= ×3.00** mastery product.
Rev: 4 (2026-11-02) — **§2.2, the per-card pages**: `wiki/card/cards-<name>` prints **two** tables (`Card Level | Effect`
**7** rows, `Mastery Level | Value` **10** rows), and 8 pulled pages give a second independent print of **8/8 card
ladders** (both non-arithmetic shapes included), of **seven stone costs** (all inside §2.1's four buckets), and the
mastery ladder's own law **`bonus(k) = (k + 1) × s`** (so level 0 = exactly 1/10 of level 9; `Wave Skip` `10 + 5k` is the
only break). Three mechanic prints are new: **Coin Decay** (an enemy alive **3 waves** drops **half** coins), the cosmetic
per-item table (**+0.4 / +0.8 / +0.6 %**), and the Cash/Coins definition set; the `Coins` page's “increases the card's stat
multiplier” wording is prose support for **H058 reading (A)**.
Rev: 3 (2026-11-02) — **§“printed ladders” + §2.1**: the printed Lv.1–Lv.7 table for **31 cards** now backs the gems/pt
ranking with **every card's own arithmetic step**, and the **mastery layer collapses to one law** (31 rows, `v(k) = base +
(k+1)·s`; the unlock carries **exactly 10 % of the levelled effect** — 30 of 31 rows, `Wave Skip` the exception at 2/11),
with **Σ 27 500 stones** for the 31 printed rows (+ `Cells` **1 000** predicted = fandom's **28 500** ✓), the shared 9-level
lab as `time = 250n + 250 h` / `coins = 1.10 … 10.00 q` (**Σ 50.00 q = 71.4 days of income at 700 T/day**, **Σ 13 500 h =
562.5 d**, the **per-level** reading confirmed by the page's own prose), and the community **×270** claim reproduced as
**5 × 6 × 9** ✓ · new [H058](../hypotheses/H058-mastery-multiplies-card-value-or-bonus.md).
Rev: 2 (2026-11-02) — the **full per-level price table** (printed values for every currency card + gems-per-point), the
**three-phase pull schedule** (its total reproduces the printed **2 560 pulls** exactly), the **named-card closed form**,
the **slot ladder sum check (20/20)**, and the **30-card → 32-card reconciliation**.
Status: **Verified (arithmetic)** for the copy/gem tables, the slot ladder, the printed Lv.1–7 ladders and the mastery 10 %
law; the drop-rate model is the in-game ℹ panel's own numbers.
Rev: 2 (2026-11-02) — **star = level** established (`wiki/card/cards`, 2026-10-13: “levelled up to a maximum of
**7 stars** by collecting duplicate copies”) ⇒ per-star columns on other systems are per-level columns, which makes
Second Wind's invincibility `5 × star + 5` (**10 → 40 s**) computable from the copy ladder.
Rev: 1 (2026-11-01) · Currency: **Coins** ( Coins/Cash/Crit Coin/Enemy Balance/Wave Skip cards), **Elite Cells** (Cells card), **Reroll Shards** (Cash-card mastery later)
**Value:** ★★★★ — the six currency cards together are worth ≈ ×2–3 coins/cash, and their levels are the cheapest percentage points in the game *early* and the most expensive *late*.
**Confidence:** **Medium-High** — all costs/values are the fandom wikitext tables (which are transcribed from the live UI) and the arithmetic below is exact; the drop-rate model is stated in-game by the Cards info panel. No on-device before/after yet.
**Ease:** 1 tap per pull (**Buy x10** = 10 pulls), ~4 taps to equip. 3–5 min/day.
**Prerequisite:** the **Cards** tab opens after your first two Tier 1 runs (the first visit grants 40 gems).

---

## 1. The pool arithmetic (why level order matters)

- **32 cards: 12 Common, 9 Rare, 11 Epic.** Each pull costs **20 gems**, `Buy x10` = 200 gems.
- Each pull rolls a rarity first: **Common 80 % / Rare 17 % / Epic 3 %**, then a random card of that rarity.
- A card at **level 7 leaves the pool**; if a whole rarity is maxed, its share moves to the other rarities (80 % of an emptied Common pool splits 17 : 3 ⇒ **68 % Rare / 12 % Epic**). So the *marginal* cost of the last levels of an Epic falls as you finish the Commons — the deck gets cheaper as it fills.
- Copies needed per card (fandom table, confirmed by the in-game Card Detail): **1 / 3 / 8 / 16 / 28 / 48 / 80** total copies for levels 1–7 ⇒ **80 pulls = 1 600 gems per maxed card**, **2 560 pulls = 51 200 gems** for all 32 (≈ 4 years at ~40 gems/day). The game-vault table (2 400 pulls / 48 000 gems, 19 slots) is the older 30-card pool.
- Your **first** card is always **Damage** or **Attack Speed** (guaranteed).
- **“Stars” = card levels.** The Cards page prints “individual cards can be levelled up to a maximum of **7 stars** by
  collecting duplicate copies” (`wiki/card/cards`, 2026-10-13) ⇒ **star n = level n** on the ladder above, so any
  per-star column elsewhere in the game is a per-level column (e.g. Second Wind's invincibility **10 → 40 s** at
  stars 1–7 = `5 × star + 5`, T006 §Second Wind). One law, two names — read the panel's ★ counter as the level.

### Marginal copies per level-up, and what each level is worth

Level-up price is **fixed per card** (same copies at every level), but the *percentage points* differ per card. Gems per **+1 percentage point** of that card's own multiplier:

| Level-up | extra copies | gems | **Coins** card (+5 pts) | **Cash** card (+20 pts) | **Enemy Balance** (+10 pts) |
|---|---|---|---|---|---|
| 1 → 2 | 2 | 40 | **8** | **2** | **4** |
| 2 → 3 | 5 | 100 | 20 | 5 | 10 |
| 3 → 4 | 8 | 160 | 32 | 8 | 16 |
| 4 → 5 | 12 | 240 | 48 | 12 | 24 |
| 5 → 6 | 20 | 400 | 80 | 20 | 40 |
| 6 → 7 | 32 | 640 | **128** | **32** | **64** |

Two consequences a sub-Tier-11 player can exploit immediately:

1. **Levels 1→4 of a card are the cheapest gems-per-point in the game** (2–8 for Cash/Enemy Balance). The last two levels cost 2–8× more per point.
2. **A new card slot competes on price with a card's 6th/7th level.** Slot 6 costs 400 gems (1 050 cumulative) and equips a whole extra card — for the same 400 gems the Coins card's 6th level buys only +5 %. **Buy slots up to ~8–10 before chasing level 6–7 on any card.**
   Slot ladder (cumulative gems): 2 = 50 · 3 = 150 · 4 = 350 · 5 = 650 · 6 = 1 050 · 7 = 1 550 · 8 = 2 150 · 9 = 2 900 · 10 = 3 900 · 11 = 5 100 · 12 = 6 500 · … 22 = 58 400. (Vault keys add 6 more, max 28 slots.)
   Compare with lab slots (0/100/400/1 400/3 000 = 4 900) — the two ladders interleave, which is the alternation rule in [T009](T009-gem-spend-order.md).
   **Third print of the same ladder (Rev 6):** `wiki/card/cards` (2026-10-13) carries a `Slot | Gem Cost` table with exactly
   **22 rows**, starting `1 = Free` and ending `22 = 10 000`; parsed by `tools/card-mastery.ps1` it re-adds to **58 400**
   with the cumulative marks **3 900** (slot 10), **15 900** (slot 16) and **32 400** (slot 19). Three independent prints
   (Tower Hub, fandom, game-vault) now agree cell-for-cell, so the *priced* ladder is settled at 22 rows ⇒ the remaining
   open part of [H061](../hypotheses/H061-active-card-slot-cap-19.md) is only how many of those 22 the panel shows as
   unlocked-purchasable today.

### The printed copy/gem table (all 7 totals reproduce)

| Card level | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|
| copies **this** level (marginal) | 1 | 2 | 5 | 8 | 12 | 20 | 32 |
| gems this level | 20 | 40 | 100 | 160 | 240 | 400 | 640 |
| **total copies** | 1 | 3 | 8 | **16** | 28 | 48 | **80** |
| **total gems** | 20 | 60 | 160 | **320** | 560 | 960 | **1 600** |

Every row reproduces: marginal × 20 = the printed gem column (2·20 = 40 … 32·20 = 640 ✓) and 80 copies × 20 = **1 600**
gems per maxed card ✓. **The one caveat:** 1 600 gems is the cost *within a phase* (the naive count is “the copies you
need”); the **pull cost of a named card is higher** because 20 % of pulls go to other rarities — see the schedule below.

### Full value-per-level of the currency cards, priced (game-vault's printed values)

`gems/pt` = the marginal gems above ÷ the percentage points that level-up buys. Lower is better.

| Card | Rarity | L1 → L7 (printed) | pts per level-up | **gems/pt** L1→2 … L6→7 |
|---|---|---|---|---|
| **Cash** | C | 1.20 → 2.40 | +20 | **2.0** / 5 / 8 / 12 / 20 / 32 |
| Health Regen | C | 1.40 → 2.60 | +20 | 2.0 / 5 / 8 / 12 / 20 / 32 |
| Attack Speed · Fortress | C | 1.25 → 2.15 · 1.30 → 2.20 | +15 | 2.7 / 6.7 / 10.7 / 16 / 26.7 / 42.7 |
| **Enemy Balance** | C | 1.30 → 1.90 | +10 | **4** / 10 / 16 / 24 / 40 / 64 |
| **Coins** · Range | C | 1.15 → 1.45 · 1.15 → 1.45 | +5 | 8 / 20 / 32 / 48 / 80 / 128 |
| **Cells** | R | +2 → +14 (flat cells) | +2 cells | **20** / 50 / 80 / 120 / 200 / 320 per cell |
| **Critical Coin** | R | 15 % → 33 % | +3 | 13.3 / 33.3 / 53.3 / 80 / 133 / 213 |
| **Wave Skip** | R | 9 % → 19 % | +1,+1,+2,+2,+2,+2 | 40 / 100 / **80** / 120 / 200 / 320 |
| Free Upgrades | R | +4 % → +10 % | +1 | 40 / 100 / 160 / 240 / 400 / 640 |
| Extra Defense · Critical Chance | C | +5 % → +11 % | +1 | 40 / 100 / 160 / 240 / 400 / 640 |

**Reading:** inside the currency family the price ranking at L1→2 is **Cash (2.0) → Enemy Balance (4) → Coins (8) →
Critical Coin (13.3) → Cells (20/cell) → Wave Skip (40) → Free Upgrades (40)** — i.e. the three *Common* currency cards
are 3–20× cheaper per point than the Rare ones, *and* the Common mass is 80 % vs 17 %, so the Common cards are the
cheapest in the entire game twice over. `Wave Skip`'s own ladder is irregular (+1 then +2 per level), and its best-value
step is **L3→4** (80 gems/pt).

### Named-card pull cost: the three-phase schedule (this is the real budget)

Inside a phase the pull cost of one **named** card is closed-form:
`pulls = copies needed × (cards in that rarity) ÷ (that rarity's current mass)`.

| Target | Pulls | Gems | Check |
|---|---|---|---|
| a named **Common** at L4 (16 copies) | 16 × 12 ÷ 0.80 = **240** | **4 800** | simulation 241 ✓ |
| the **whole Common class at L4** (12 cards) | 192 ÷ 0.80 = **240** | **4 800** | same number — widening is free at L4 |
| a named **Rare** at L4 | 16 × 9 ÷ 0.17 = **847** | **16 940** | simulation 848 ✓ |
| **the six currency cards at L4** (3 C + 3 R) | **≈ 848** | **≈ 16 960** | the Rare mass is the binding constraint |
| all **Commons maxed** (960 copies) | 960 ÷ 0.80 = **1 200** | 24 000 | simulation 1 200 ✓ |
| all **Rares maxed** | **1 807** | 36 140 | 1 200 + (720 − 204)/0.85 |
| **whole deck maxed** | **2 560** | **51 200** | = the printed total ✓ |

Three things this makes obvious: ① the naive “96 copies × 20 = 1 920 gems” for the six-card set is **8.8× low**;
② **the whole Common class reaching L4 costs the same 4 800 gems as one Common at L4** — so buy L4 *across* the class
before any single card's L5; ③ the deck is a **multi-quarter** project (at ≈ 435 gems/day: 39 days to the six-card L4
set, 55 days to maxed Commons, 118 days to the full deck) on top of slots and lab slots, which is exactly why the
wide-first order in §1 and [T009](T009-gem-spend-order.md) matters.
**Invariant:** the deck total is always **2 560 pulls** (2 560 copies needed = 1 copy/pull), so the two published
*redistribution* rules only move the intermediate boundaries — 1 807 pulls (proportional 85/15) vs **1 732** (97/3) to
max the Rares ([H046](../hypotheses/H046-card-rarity-mass-redistribution-rule.md)).

### Two cross-checks on the numbers above

- **Slot ladder, 20/20 cumulative sums reproduce:** 50 / 100 / 200 / 300 / 400 / 500 / 600 / 750 / 1 000 / 1 200 / 1 400 /
  1 600 / 1 800 / 2 500 / 3 500 / 4 500 / 5 500 / 6 500 / 7 500 / 8 500 ⇒ Σ = **48 400** to **21 slots** (game-vault, July
  2025); the newer fandom table adds slot 22 (+10 000 = **58 400**) and the Vault adds 6 more keys ⇒ **28 slots**.
- **30 → 32 cards reconciles exactly:** game-vault prints **12 Common + 8 Rare + 10 Epic = 30** cards and **2 400 copies /
  48 000 gems**; the current pool adds **Cells** (Rare) and **Area of Effect** (Epic) ⇒ 12 + 9 + 11 = 32 ✓ and
  **2 400 + 2 × 80 = 2 560** ✓ / **48 000 + 3 200 = 51 200** ✓. So the two wiki tables are the same system one version
  apart — use 80 copies/level and 2 560 pulls.

### The printed ladders: every card is arithmetic in level (new, Rev 3)

`wiki/card/cards` (last verified **2026-10-13**) prints Lv. 1 → Lv. 7 for **31 cards** (12 Common + 8 Rare + 11 Epic). Every
row is an arithmetic progression, so each card is described by two numbers:

```
value(n) = value(1) + step × (n − 1)                n = 1 … 7
gems/pt at a level-up = marginal gems of that level ÷ step (in pp)
```

The 15 rows that touch the currency layer, with their printed step:

| Card | Rarity | Lv 1 → Lv 7 | printed step | pp over the whole card | **gems/pt, whole card** |
|---|---|---|---|---|---|
| **Cash** | C | ×1.20 → ×2.40 | **+0.20** | 120 | **13.3** |
| **Enemy Balance** | C | ×1.30 → ×1.90 | +0.10 | 60 | **26.7** |
| **Coins** | C | ×1.15 → ×1.45 | +0.05 | 30 | **53.3** |
| **Critical Coin** | R | 15 % → 33 % | +3 pp | 18 | 88.9 |
| **Wave Skip** | R | 9 % → 19 % | +1, +1, then +2 ×4 | 10 | 160 |
| **Free Upgrades** | R | 4 % → 10 % | +1 pp | 6 | 266.7 |
| Attack Speed · Fortress | C | ×1.25 → ×2.15 · ×1.30 → ×2.20 | +0.15 | 90 | 17.8 |
| Health Regen | C | ×1.40 → ×2.60 | +0.20 | 120 | 13.3 |
| Damage · Health | C | ×1.50 → ×4.00 | +0.50, then +0.40 ×5 | 250 | 6.4 |
| Slow Aura | C | 13 % → 31 % | +3 pp | 18 | 88.9 |
| Extra Orb | R | .30 → 0.90 | +0.10 | 60 | 26.7 |
| Recovery Package Chance | R | 15 % → 33 % | +3 pp | 18 | 88.9 |
| Plasma Cannon | R | 30 % → 54 % | +4 pp | 24 | 66.7 |
| Area of Effect | E | 5 % → 25 % | +3 pp, then +5 | 23 | 69.6 |
| Land Mine Stun | R | 1.4 s → 3.8 s | +0.4 s | — | — |

**Reading (the deck's whole price law):** the *whole-card* price per point is `1 600 ÷ 6 ÷ step`, so the ranking by step **is**
the ranking by price: `Cash` / `Health Regen` (13.3) → `Enemy Balance` / `Extra Orb` (26.7) → `Coins` (53.3) →
`Critical Coin` / `Slow Aura` / `Package Chance` (88.9) → `Wave Skip` (160) → `Free Upgrades` / `Critical Chance` /
`Extra Defense` (266.7). The per-level-up table above still decides *where* to stop: the same card is 8× cheaper at L1→2 than
at L6→7. Points are only comparable inside a family (1 pp of `Critical Chance` ≠ 1 pp of `Coins`), but inside the currency
family the order is now printed rather than inferred.

**The seven exceptions to a constant step:** `Damage`/`Health` (+0.5 then +0.4 ×5 — L1 sits 0.10 **below** the backward
extrapolation 1.60), `Wave Skip` (1, 1, 2, 2, 2, 2), `Intro Sprint` (+10 ×4 then +20 ×2: 20 … 60, 80, 100), `Nuke`
(+10 ×4, then +15, +20), `Super Tower` (+0.4 ×5 then +0.5), `Area of Effect` (+3 ×5 then +5), and `Energy Shield`, the only
**descending** ladder (20 min → 8 min 5 s; the last step is −1 m 55 s, i.e. 5 s off the −2 min law). Two ladders are rounded
prints of a finer step: `Ultimate Crit` is `+⅓ pp × k` (printed 1 % → 1.33 → 1.66 → 2 % → … → 3 %) and `Death Ray` is
`+0.3833 s × k` (2.3 → 4.6 = 6 steps ✓, printed as a 0.4/0.3 alternation). `Extra Orb` prints `.30` first and `0.90` last —
same number, two formats.

**Three prose facts from the same page.** ① The unlock copy **counts toward** the 2-star requirement (“that unlock copy counts
as the first of the 3 copies needed for 2 stars, which costs 40 Gems”) — that is what makes the marginal column
1 / 2 / 5 / 8 / 12 / 20 / 32 and the total column 1 / 3 / 8 / 16 / 28 / 48 / 80 both correct. ② The page prices its own deck at
**49 600 gems for 31 cards** = 31 × 1 600 ✓ (32 cards ⇒ 51 200, the figure used above), and it prints the redistribution as
“**after every Common card is maxed, the Rare chance rises to 97 %**” — the second independent 97/3 print for
[H046](../hypotheses/H046-card-rarity-mass-redistribution-rule.md), so the **1 732-pull** branch is now the majority reading.
③ Once every card is maxed the **Buy** button stops working and “any event mission asking you to buy a number of cards will
complete instantly” ⇒ a finished deck finishes the *Buy N cards* event missions of
[T013](T013-event-medal-economy.md) for **zero** extra gem spend.

## 2. Which cards matter for currency (level these first)

| Card | Rarity | Level 1 → Level 7 | Why it is first |
|---|---|---|---|
| **Enemy Balance** 🔒 | Common | cash-per-kill ×1.30 → ×1.90, 80 % chance a second basic enemy spawns | more enemies **and** more cash per kill: double-counted, and it also speeds event missions |
| **Cash** | Common | ×1.20 → ×2.40 all cash | cheapest percentage points in the game (2–8 gems/pt) |
| **Coins** | Common | ×1.15 → ×1.45 all coins | direct coin multiplier |
| **Critical Coin** | Rare | 15 % → 33 % of basic enemies carry +1 coin | flat coin-per-kill, scales with enemy count ⇒ pairs with Enemy Balance |
| **Wave Skip** | Rare | 9 % → 19 % per wave; a skip pays wave coins + wave cash + **interest**, plus **1.1×** the current wave's coins/cash/**Elite Cells** | the only card that pays interest twice; re-rolls, so chains. Cells are 1.1× too (T006) |
| **Cells** (milestone: **T4 W40**) | Rare | +2 → +14 flat cells per elite kill, applied **after** all multipliers | flat bonus, best when the base drop is small ⇒ level it early, it is worth most at low tiers |
| Free Upgrades | Rare | +4 % → +10 % free-upgrade chance | cash you don't spend is cash for the real upgrades |

Do **not** spend on: Range (D-tier, breaks orb/mine builds), Health Regen, Energy Net, Fortress outside the Turtle build, Intro Sprint (its waves pay **no** wave coins, and cells are ×0.2 — the opposite of a farming run).

### 2.1 The mastery layer in closed form — 31 rows, one law (new, Rev 3)

`wiki/card/card-masteries` (last verified **2026-11-01**) prints the whole layer: **31 mastery rows** (stone cost + ten
values), one shared lab ladder, and the gate. Both pages index the same ten values under different headers — `cards` calls
them `Unlock`, `Lab 1 … Lab 9`; `card-masteries` calls them `0, 1 … 9` — and the first value is identical, so
**the stone purchase is level 0 and the nine lab levels take it to k = 10**. Every row is arithmetic in the lab level:

```
v(k) = base + (k + 1) × s              k = 0 … 9   (base = 1 for the ×-rows, 0 for the %-rows)
```

**The 10 % law.** Because the ladder starts at one step, `v(0)` is exactly **1/10 of the levelled effect** — **30 of the 31
rows** reproduce it (Damage ×1.4 → ×5 = 0.4/4.0 ✓, Coins +3 % → +30 % ✓, Enemy Balance 6 % → 60 % ✓, Second Wind ×1.9 → ×10 ✓,
`Wave Accelerator` 110 % → 200 % on base 100 ✓, `Berserker` 30 s → 300 s ✓, `Super Tower` −3 s → −30 s ✓, `Extra Defense`
+0.7 % → +7.0 % ✓). The only break is **`Wave Skip` (5 % steps starting at 10 % ⇒ 10/55 = 2/11 ≈ 18.2 %)**;
`Ultimate Crit` looks like 9.09 % but is the rounded `+⅓ pp × k` ladder, so it is 10 % underneath. The page's own example
states the same law: “A mastery whose lab never runs keeps its level-0 value, for example **x1.4 instead of x5** for Damage
Mastery.” Practical consequence: **per stone the unlock is a 10 % purchase; the other 90 % costs 50 q coins and 562 days of
one lab slot.**

**Independent re-derivation (Rev 6).** `tools/card-mastery.ps1` parses the `card/cards` print of the same 31 × 10 block and
fits each row’s own endpoints: **30 of 31 rows are exactly linear** (worst residual **0.0000** — e.g. `Damage` first 1.4 /
last 5 / step **0.4**, `Attack Speed` 1.03 → 1.30 step **0.03**, `Health` and `Range` step **0.2**, `Cash` step **0.4 pp**),
and the single non-linear row is **`Ultimate Crit`** with worst residual **0.0667** = the rounded **⅓ pp** ladder
(+0.3 / +0.7 / +1.0 / +1.3 / +1.7 …, i.e. ⅓·k printed to one decimal) — the same 30-of-31 + one-break pattern §2.1
reports, from a second page. The stone column re-adds to **27 500** with the buckets **500 ×2 / 750 ×13 / 1 000 ×13 /
1 250 ×3** ✓ on the **31-row** list (the current page adds `Area of Effect` at 1 000 stones, giving **32 rows** and
**28 500** with **1 000 ×14** — see §2.1 and Rev 10), and the shared lab’s nine levels give times **30 000 → 150 000 min** with a single distinct difference
(**15 000 min = 250 h**) and a coin column summing to exactly **50.00 q** ✓.

**The stone census.** The 31 printed costs fall in **four buckets** — 500 ×2 (`Cash`, `Free Upgrades`), 750 ×13, 1 000 ×13,
1 250 ×3 (`Coins`, `Plasma Cannon`, `Intro Sprint`) ⇒ **Σ = 27 500 stones**. The 32nd card, `Cells`, has no printed row (its
lab is the one the page excludes: “every card mastery lab **except Cells** shares the same lab costs and research times”), and
fandom's total for 32 masteries is **28 500** ⇒ the reconciliation predicts `Cells` = 28 500 − 27 500 = **1 000 stones**, one of
the four buckets ✓ — a one-tap device check.

**The shared lab, priced.** Level 1 → 9 prints `coins = 1.10, 1.30, 2.00, 3.40, 5.60, 7.70, 9.10, 9.80, 10.00 q` and
`time = 20 d 20 h … 104 d 4 h` = **500 → 2 500 h** in exact **+250 h** steps (`250n + 250`):

| | Σ coins | Σ base time | at 700 T coins/day |
|---|---|---|---|
| one mastery lab, all 9 levels | **50.00 q** | 13 500 h = **562.5 d** | **71.4 d** of income |

The two readings of a lab `Time` column (per-level vs cumulative) are settled **inside the page**: its prose says “all nine
levels about **50q coins and 562 days** before Lab Speed”, and only the **per-level** reading adds to 562.5 d (cumulative would
be 104 d) — the same twin as [H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md), here resolved by the page's
own arithmetic. Note the shape: coin cost saturates (9.80 → 10.00 q) while time keeps rising ⇒ **levels 8–9 are the
time-bound ones**.

**One script, three prints (new, Rev 6).** `tools/card-mastery.ps1` parses the `card/cards` page end to end and re-adds all
of it: the **31 × 10** mastery block is **exactly linear on 30 rows** (worst residual **0.0000**) with the single break at
`Ultimate Crit` (**0.0667** = the rounded ⅓ pp ladder), the stone column sums to **27 500** on the buckets
**500 ×2 · 750 ×13 · 1 000 ×13 · 1 250 ×3** (**31 rows**; the current 32-row page gives **28 500** with
**1 000 ×14**), the shared lab’s nine times have **exactly one distinct difference
(15 000 min = 250 h)** ⇒ the `250n + 250` law, its nine coin cells sum to **exactly 50.00 q**, and the slot column
(22 rows, `1 = Free` … `22 = 10 000`) sums to **58 400** with the cumulative marks **3 900** at slot 10,
**15 900** at slot 16, **32 400** at slot 19 and **48 400** at slot 21 (the two 16/19 marks are new). The same script’s
`Shatter Shards` block adds to **2 063.56 T** coins with the printed value law `+20 % × n` and **Σ 1 473 d** of per-level
slot time.

**Masteries multiply each other, and multiply their card.** The page's comparison-video figures reproduce exactly:
`Damage` ×5 **×** `Demon Mode` ×6 **×** `Super Tower` ×9 = **270** ✓ (its “roughly x270 damage together”). The same product
inside one card is ambiguous in two readings — `Coins` card L7 (×1.45) with `Coins` mastery ×1.30 is **×1.885** if the mastery
multiplies the whole printed value, or **×1.585** if it multiplies only the bonus → [H058](../hypotheses/H058-mastery-multiplies-card-value-or-bonus.md).

**The currency-relevant masteries** (the eight to buy first once the gate opens; value = level-0 → level-9):

| Mastery | Stones | Level 0 → 9 | What it does to the currency |
|---|---|---|---|
| `Coins` | **1 250** | ×1.03 → ×1.30 | multiplies the `Coins` card's whole ×1.45 (see H058) |
| `Cash` | **500** | 0.4 % → 4 % | **chance for elites to drop reroll dice** — the only mastery that feeds a shard currency ([T010 §3](T010-module-merge-chain.md)) |
| `Critical Coin` | 1 000 | 10 % → 100 % | at level 9 the card's 33 % “drop 1 coin” becomes a **guaranteed 2 coins** |
| `Enemy Balance` | 1 000 | 6 % → 60 % | chance for a **double elite spawn** (cash + Elite Cells per wave) |
| `Extra Orb` | 750 | ×1.04 → ×1.40 | orb **coin** bonus |
| `Package Chance` | 1 000 | 0.4 % → 4 % | recovery packages drop **Common modules** |
| `Wave Skip` | 1 000 | 10 % → 55 % | chance the skip **pays twice** |
| `Free Upgrades` | 500 | 1 → 10 | number of stats lockable out of the free-upgrade pool |

**Ordering, from the 10 % law.** ① Finish **30 cards** (that is the gate, and it is the same gem spend as the deck plan in §1).
② Unlock the eight currency masteries above (**7 000 stones** for all eight — `Cash` 500 and `Free Upgrades` 500 are the
cheapest points in the layer) *before* researching any of them: each unlock already pays its 10 % with zero lab time.
③ Run labs only on the masteries whose card stays equipped in your farming preset (§3.5), and read **level 9 of `Cash`** as the
reroll-shard target. Above Tier 16 the same 50 q also buys UW+ levels ([T008](T008-uw-sync-with-stones.md)); the page's own
rule of thumb is to start “once you earn about **700 T** coins a day” and to “buy only as many masteries as you can keep
researching”.

**Two milestone-gated labs printed on the same page** (both cross-checked): `Light Speed Shots` — **T7 W10**, 1 level,
**3 000 000 coins / 19 h 59 m**, projectiles travel instantly (a shot can still be intercepted by an untargeted enemy in the
way); this is the 1-level Attack-Research line of [T006](T006-lab-queue-packing.md) §lab census, which had no price until now.
`Shatter Shards` — **T16 W40**, 5 levels, `+20 % × n` (+100 % at max), 10.00 T / 87.00 T / 229.20 T / 547.36 T / 1.19 q
⇒ **Σ 2 063.56 T coins** (Σ base time 35 348 h = 1 473 d); this agrees cell-for-cell with
[T010](T010-module-merge-chain.md) §2.1's `wiki/lab/lab-shatter-shards` print ✓ (two pages, one table).

### 2.2 The per-card pages — both ladders double-sourced, and the mastery ladder's own law (new, Rev 4)

`wiki/card/cards-<name>` prints **two** tables per card: `Card Level | Effect` (**7** rows) and `Mastery Level | Value`
(**10** rows, *k* = 0…9). Eight pages were pulled (`tools/fetch-hub.ps1`) and parsed with the new
`tools/card-page-parse.ps1`; **7 of the 8 print both tables** — `cards-recovery-package-chance` carries only the card
ladder, so its mastery ladder still lives solely on `card-masteries`.

| Card | `Card Level \| Effect` (Lv 1 → 7) | step | `Mastery Level \| Value` (k = 0 → 9) | step | printed stones |
|---|---|---|---|---|---|
| `Cash` | ×1.20 → ×2.40 | +0.20 | 0.4 % → 4 % | +0.4 | **500** |
| `Coins` | ×1.15 → ×1.45 | +0.05 | ×1.03 → ×1.30 | +0.03 | **1 250** |
| `Critical Coin` | 15 % → 33 % | +3 | 10 % → 100 % | +10 | **1 000** |
| `Enemy Balance` | ×1.30 → ×1.90 | +0.10 | 6 % → 60 % | +6 | **1 000** |
| `Free Upgrades` | 4 % → 10 % | +1 | 1 % → 10 % | +1 | **500** |
| `Super Tower` | 2.5 → 5 (2.5 · 2.9 · 3.3 · 3.7 · 4.1 · 4.5 · **5**) | +0.4 ×5 then +0.5 | −3 s → −30 s | −3 | **1 000** |
| `Wave Skip` | 9 % → 19 % (9 · 10 · 11 · 13 · 15 · 17 · 19) | +1, +1, +2 ×4 | 10 % → 55 % | +5 | **1 000** |

1. **The card ladders match §1 cell for cell** (8/8), including the two non-arithmetic shapes §“seven exceptions” lists
   (`Wave Skip` 9/10/11/13/15/17/19 and `Super Tower` +0.4 ×5 then +0.5) ⇒ the deck table now has two independent prints.
2. **The mastery ladder has a one-line law of its own.** On every arithmetic mastery table the printed values are
   **`bonus(k) = (k + 1) × s`** — `Cash` 0.4 / 0.8 / … / 4 ✓, `Critical Coin` 10 … 100 ✓, `Enemy Balance` 6 … 60 ✓,
   `Free Upgrades` 1 … 10 ✓, `Super Tower` −3 … −30 ✓, and `Coins` in ×-form as **`v(k) = 1 + 0.03 × (k + 1)`** ✓ — so
   **the level-0 (stone-purchase) value is exactly 1/10 of the level-9 value**, which is §2.1's 10 % law re-derived from a
   second page type. `Wave Skip` (`10 + 5k`, so 10 / 55 = 2/11) is again the only break.
3. **The stone costs are printed on the card pages as well**, and all seven land inside §2.1's four buckets
   (500 ×2 = `Cash` + `Free Upgrades`; 1 000 for `Critical Coin` / `Enemy Balance` / `Wave Skip` / `Super Tower`;
   1 250 for `Coins`) ⇒ the **27 500**-stone census has a second print, and `Cells` = 1 000 is the only value still
   unprinted.
4. **The mastery's unit changes by family** — % for the “chance” masteries, × for the stat multipliers, seconds for
   `Super Tower` — so one shared lab (50 q coins / 562.5 d) buys different *units* per card; only same-family rows are
   comparable per stone.

**The full census (new, Rev 5).** Fifteen further card pages were pulled, so **22 of the 23 standard card pages** now print
both tables (only `cards-recovery-package-chance` still prints the card ladder alone). Every card ladder again matches §1
cell for cell, and the five non-arithmetic shapes are exactly §1's “seven exceptions” — no new break appears:

| Card (15 new pages) | `Card Level \\| Effect` (Lv 1 → 7) | step shape | `Mastery Level \\| Value` (k = 0 → 9) | printed stones |
|---|---|---|---|---|
| `Area of Effect` | 5 → 25 % | +3 ×5 then +5 (§1 ✓) | +2.5 % → +25 % | 1 000 |
| `Attack Speed` | ×1.25 → ×2.15 | +0.15 | ×1.03 → ×1.30 | 750 |
| `Berserker` | ×0.8 → ×1.4 | +0.10 | 30 s → 300 s | 750 |
| `Critical Chance` | 5 % → 11 % | +1 pp | 1 % → 10 % | 750 |
| `Damage` | ×1.5 → ×4 | +0.5 then +0.4 ×5 (§1 ✓) | ×1.4 → ×5 | 750 |
| `Extra Defense` | 5 % → 11 % | +1 pp | +0.7 % → +7 % | 1 000 |
| `Extra Orb` | ×0.3 → ×0.9 | +0.10 | ×1.04 → ×1.40 | 750 |
| `Fortress` | ×1.3 → ×2.2 | +0.15 | −10 → −100 | 750 |
| `Health` | ×1.5 → ×4 | +0.5 then +0.4 ×5 (§1 ✓) | ×1.2 → ×3 | 750 |
| `Health Regen` | ×1.4 → ×2.6 | +0.20 | ×1.4 → ×5 | 750 |
| `Intro Sprint` | 20 → 100 waves | +10 ×4 then +20 ×2 (§1 ✓) | ×1.8 → ×18 | **1 250** |
| `Land Mine Stun` | ×1.4 → ×3.8 | +0.40 | 2.5 s → 25 s | 1 000 |
| `Range` | ×1.15 → ×1.45 | +0.05 | ×1.2 → ×3 | 750 |
| `Ultimate Crit` | 1 % → 3 % | rounded +⅓ pp (§1 ✓) | **+0.3 → +3.3 %** = the rounded +⅓ pp ladder itself | 750 |
| `Wave Accelerator` | 30 % → 54 % | +4 pp | 110 % → 200 % | 1 000 |

Three census conclusions:

1. **The mastery law is now universal over the 22 two-table pages, in one form**: `v(k) = base + (k + 1) × s`, where the
   “base” is the family's neutral element — **1** for the `×` rows (`Coins` 1 + 0.03·(k+1) ✓, `Attack Speed` identical
   ladder ✓, `Extra Orb` 1 + 0.04·(k+1) ✓, `Damage`/`Health Regen` 1 + 0.4·(k+1) ✓, `Health`/`Range` 1 + 0.2·(k+1) ✓),
   **0** for the plain %-rows, and the printed offset where the card names a base (`Wave Accelerator` 100 + 10(k+1) ✓,
   `Wave Skip` 5 + 5(k+1) ✓). The §2.1 “10 % law” is that law read on the **bonus above base**. `Ultimate Crit` now prints
   the rounded ⅓ ladder on *both* tables (card 1 → 3 %, mastery 0.3 → 3.3 % = `(k+1)/3` to 1 dp), so the §2.1 rounding
   call is double-sourced.
2. **Stone-cost coverage: 22 of the 31 printed mastery rows have a second, per-page print** — 500 ×2 (done), 750 ×10 of
   13, 1 000 ×8 of 13, 1 250 ×2 of 3 — and every one matches its §2.1 bucket. Only 9 rows stay single-print: three more
   750, five more 1 000, and `Plasma Cannon` (1 250); plus `Cells` = 1 000 by prediction.
3. **The unit-by-family rule survives** (22 rows): %-steps for chance masteries, ×-steps for stat multipliers, seconds for
   timers (`Berserker` 30 → 300 s, `Land Mine Stun` 2.5 → 25 s), minus-seconds for `Super Tower`/`Fortress` — so the
   50 q / 562.5 d shared lab buys different units per family (unchanged from Rev 4).

**Three mechanic prints from the pages' own `Good to know` blocks.** ① **Coin Decay**, recorded here for the first time in
this repo: “enemies that live **3 waves** or more drop **half** coins” — a slow build is therefore penalised twice (the
wave timer *and* a half payout), which is the arithmetic reason `Wave Skip` / `Wave Accelerator` earn their gem cost.
② The cosmetic stack in per-item form: “skins **+0.4 %**, backgrounds **+0.8 %**, menu skins, profile banners, the three
shop songs and Guardian skins **+0.6 %** each … they add up … and the total multiplies the whole coin bonus” ✓ the same
**+95.2 pp ⇒ ×1.952** law as T013's cosmetic line and T016 §1. ③ The two-currency definition set on the `Cash` page:
“Cash is earned during a run and spent on in-run upgrades; it resets each round. Coins are the permanent currency spent in
the Workshop and Labs. **Cash Bonus multiplies all cash incl. the wave bonus**” ✓ T020 §5's multiplication order.

**Prose evidence for H058.** The `Coins` page describes its mastery as “**increases the card's stat multiplier**, making
the coin bonus stronger than the base card alone” — wording that fits reading **(A)** (whole value) in
[H058](../hypotheses/H058-mastery-multiplies-card-value-or-bonus.md); the two-read numeric test there still decides it.

### 2.3 The special-card pages print the Card-Research labs (`Level | Time | Cost | Value`) — new, Rev 5

The nine non-`cards-` pages under `wiki/card/` (`death-ray`, `demon-mode`, `energy-net`, `energy-shield`, `nuke`,
`nuke-vs-slow-aura-mastery`, `plasma-cannon`, `second-wind`, `slow-aura`, plus `card-presets`) use the **lab table shape**
`Level | Time | Cost | Value`, i.e. the special cards are levelled like labs: a per-level coin cost *and* a per-level
research time. `energy-net`, `plasma-cannon`, `slow-aura` print prose only (no table).

1. **The `second-wind` page reproduces T006's two Second Wind labs cell for cell.** `Second Wind Blast`: 4 levels,
   value 25/50/75/100 %, costs **1.8 M / 3.0 M / 4.5 M / 75 M**, times 27 h 47 m · 41 h 40 m · 55 h 33 m · 83 h 20 m
   (= the printed **100 000 / 150 000 / 200 000 / 300 000 s**); `Recharge Second Wind`: 7 levels, **2 000 → 400**,
   **550 B → 3.60 T**. Because the four printed `Blast` times *sum* to T006's printed Σ **750 000 s**, this page family's
   `Time` column is **per-level** — the [H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md) reading,
   confirmed a third time on a third page type.
2. **`demon-mode` and `nuke` print their own recharge ladder: 1 500 → 1 250 → 1 000 → 750 → 550 → 400 → 300**, with the
   *identical* cost/time columns as `Recharge Second Wind` (550 B → 3.60 T, Σ **14.43 T** / **120 d 1 h 46 m**, re-added
   from the seven printed cells — T006 Rev 26) ⇒ the three
   recharge labs share cost and time but differ in value: Second Wind starts at 2 000, Demon Mode and Nuke at 1 500.
   Read as columns: **`Nuke(k) = Second Wind(k + 1)` on 6/6 steps** with a new terminal **300**, while
   `Missile Barrage` shares L1–L4 and departs at L5 (**550 vs 500**) — the family rule covers price and clock only.
3. **`death-ray` prints the whole 30-level `Double Death Ray` lab** — the §census row that so far only showed “30”.
   Prose: the lab is milestone-gated at **tier 3 wave 300**, and each level adds **exactly +1 pp** second-beam chance
   (value column = the level number, so `v(n) = n` and the cap is **30 %**), the second beam always appearing **opposite**
   the first; max-level rotation covers **> 180°**. **All 30 cells are now transcribed** and both totals re-add from them
   cell for cell (`tools/death-ray-lab.ps1`): cost **2.5 M → 205.13 B** ⇒ **Σ = 1 097.15 B ≈ 1.10 T** coins; time
   **1 h → 116 d 12 h 29 m** per level ⇒ **Σ = 21 415.5 h = 892.31 d** (per-level reading, as established in ①).

   | Block | Cost cells as printed | Block Σ coins | % of Σ | Block Σ time | % of Σ |
   |---|---|---|---|---|---|
   | L1–10 | 2 500 000 → 596 590 000 | **1 251.25 M** | **0.11 %** | 492.7 h = 20.5 d | 2.3 % |
   | L11–20 | 1.01 B → 24.77 B | 90.22 B | 8.22 % | 3 864.8 h = 161.0 d | 18.0 % |
   | L21–30 | 32.01 B → 205.13 B | **1 005.68 B** | **91.66 %** | 17 058 h = 710.7 d | **79.7 %** |
   | **Σ 30** | 2.5 M → 205.13 B | **1 097.15 B** | 100 % | **21 415.5 h = 892.31 d** | 100 % |

   Three consequences. **(a) The knee is at level 10:** ten of the thirty levels — a third of the value, 10 pp of the
   30-pp cap — cost **0.11 %** of the line's coins and **2.3 %** of its clock, i.e. **0.125 125 B/pp** at L1–10 against
   **36.572 B/pp** for the whole line and **100.57 B/pp** at L21–30 ⇒ the first ten levels are **292×** cheaper per point
   than the line average and **804×** cheaper than the last ten. **Stop-the-lab rule applies** at L10 (or L20)
   ([T006 §“stop-the-lab”](T006-lab-queue-packing.md)). **(b) A fifth clock shape:** both columns' per-level ratios decay
   *monotonically* — cost **1.237** (L9→10) to **1.192** (L29→30), last-five average **1.208**; time **1.230** to
   **1.122**, last-five average **1.13** — so this is neither the **×1.5 / ×1.15** main family nor the **×2.25 / `n × t1`**
   echo family: hand-set with a decaying ratio and an irregular head (time jumps **×9.35** then **×1.913**), the signature
   of a two-term price/time formula ⇒ read the cells, do not extrapolate a ratio. **(c) Per-point budget:** the line
   averages **36.572 B** coins and **29.74 d** of clock per percentage point of second-beam chance.
4. **`energy-shield` prints the 2-level `Energy Shield Extra Hit`**: value **1 → 2** extra hits, costs **40 B + 850 B =
   Σ 890 B**, times 11 d 13 h 47 m + 32 d 9 h 47 m = **43.98 d**.
5. **`card-presets` double-sources the preset ladder with names and times**: level 1 `Card Presets` **350 000** / 13 h
   53 m, 2 `Workshop Presets` **35 M** / 4 d, 3 `Bot Presets` **3.50 B** / 7 d, 4 `Module Presets` **350 B** / 10 d,
   5 `Guardian Presets` **35.00 T** / 14 d ⇒ Σ **35.353 535 350 000** ≈ 35.35 T coins, 34 d 4 h of lab time (the cost
   ladder itself was already in T007; the names and times are new).
6. **The `nuke-vs-slow-aura-mastery` page is the printed example that masteries multiply.** Partial rows pin both
   ladders to the §2.1 form: `Slow Aura` = 1 + 0.05·(k+1) (lv 3 ×1.20, 4 ×1.25, 6 ×1.35, 9 ×1.50 ✓) and `Nuke` =
   1 + 0.10·(k+1) (lv 3 ×1.40, 4 ×1.50, 6 ×1.70, 9 ×2.00 ✓); “**Both at 9 … ×3.00 combined**” = 1.50 × 2.00 ✓ — the
   product law of §2.1 (`270 = 5 × 6 × 9`) verified on a second page. Its timer table is fully multiplicative too:
   attack pause 2.0 s → 3.0 s (SA 9) → 4.0 s (Nuke 9) → **6.0 s** (both), hits in 5 min 150 → 100 → 75 → **50**, ray-beam
   interval 30 s → 45 → 60 → **90 s**.
7. **Prose mechanics** from the three table-less pages: `Slow Aura` slows Basic/Fast/Tank by a % of their speed **inside
   tower range only** and stacks **multiplicatively** with the Chrono Field UW and the −40 % speed / ×2.5 damage perk;
   `Energy Net` (bosses only) and `Plasma Cannon` (% of boss max HP) projectiles both scale with **Attack Speed** and
   are **not** affected by the `Light Speed Shot(s)` lab — a stat many build guides optimise blind.
8. **The `nuke` page adds the card’s own star ladder, a second mastery number, and the save order** (new, Rev 7).
   ① `Card value per star 1-7: **25 %, 35 %, 45 %, 55 %, 65 %, 80 %, 100 %**` — the **first special-card star ladder** in
   this repo, and a non-arithmetic shape like §1’s exceptions (**+10 ×4, then +15, +20**), so `Nuke` behaves like the two
   special rows §1 already flags. ② Its mastery prints `0.05 at level 0 up to 0.5 at level 9, in steps of 0.05`
   (“slows enemy attack speed for **300 waves**”) — a **different step** from the `×1.05 … ×2.00` ladder of ⑥ on the same
   card, recorded as [H062](../hypotheses/H062-nuke-mastery-ladder-which-print.md) with a two-read test (Δ **0.05** vs
   Δ **0.10**, endpoint **1.50** vs **2.00**). ③ The same page fixes the **save order** the automation labs use —
   **`Death Defy` → an `Energy Shield` charge → `Second Wind` → `Demon Mode` → `Nuke`** (ledger in T006 Rev 26) — plus two
   details that change what a save is worth: the automatic Nuke does **not** clear projectiles already in flight, and since
   **v27.3 (18 December 2025)** `Smart Nuke Automation` also grants **15 s** of invulnerability, and re-fires only after
   Nuke was used once that run.
9. **The `death-ray` page adds the beam's immunity list and one new lab name** (new, Rev 8). ① The beam **cannot kill
   bosses** and has **no effect on enemies inside a protector's radius**; the three elite types — **`Ray`, `Scatter`,
   `Vampire`** — are **immune** outright. Practical effect for a sub-T11 reader: the card is a *clean-up* tool for the
   basic/fast/tank/scatter masses and does nothing on a boss wave, so it never replaces orb damage in the wave budget.
   ② Its mastery “lets Death Ray **partially pierce Protector shields** and unlocks the **`Enhanced Ray Mastery`**
   research” — a lab name that appears nowhere in the lab census pages, i.e. the mastery itself grants a follow-up lab,
   so a mastery purchase can change the Lab-panel line count (relevant to T006's 169-line census: it is a **+1 line**
   event, the first such case recorded here). ③ The binary prints `Assets\Scripts\DeathRay.cs` and
   `DeathRayController.cs` (plus the `|DeathRay` / `|DeathRayController` enum rows) and **no** `Mastery` string at all,
   which is why every mastery name in this doc comes from the wiki rather than the dump.
10. **The fandom `Card Masteries` page prints the whole mastery census in one table** — **32** rows × 10 values, plus the
    shared lab ladder and the per-card stone price, and it all re-adds (`tools/mastery-census.ps1`). ① **The gate is two
    numbers:** claim the **Tier 16 Wave 100** milestone **and** have **30 cards at level 7** (two of the 32 may sit below
    L7); masteries **cannot be bought during a round**, so the mastery button is only live between runs, and a mastery's
    effect applies only **while its card is equipped**. ② **The stones
    column closes exactly:** `500 ×2 + 750 ×13 + 1 000 ×14 + 1 250 ×3` over the 32 rows = **28 500** = the page's own
    total, Δ **0**, and it equals §2.2's per-page figure (**27 500** for the 31 rows **+** `Cells` **1 000**) ⇒ the price
    classes are complete and `Cells+` is the 32nd row; mean price **890.6 st** ⇒ all 32 = **518 d** of stone income.
    ③ **The mastery lab has a closed form:** its nine times are **500 / 750 / 1 000 / 1 250 / 1 500 / 1 750 / 2 000 /
    2 250 / 2 500 h** = `t(n) = 250 × (n + 1)` h, Σ **13 500 h = 562.5 d** = the printed `562d 12h`; the nine costs add to
    exactly **50.00 q** on hand-set decaying ratios (**1.182 → 1.020**, one interior bump **1.70**) ⇒ *inside one ladder*
    the clock is arithmetic and the price is hand-set, so only the time column is worth extrapolating. All **32** labs
    full = **1 600 q** coins and **18 000 d = 49.3 y** of base clock = **4 832 d = 13.2 y** under the ×3.725 stack.
    ④ **Linearity, final count:** **31 of 32** rows are exactly linear with a clean step; only `Ultimate Crit+`
    (**0.3 → 3.3**, step **⅓ pp**) needs the rounded-print reading, so `v(k) = base + (k + 1) s` now covers every
    printed mastery row. ⑤ **The `Enhanced Ray` ladder is printed at last:** **750 st**, **5 % → 50 %** in 5-pp steps —
    this *is* the `Enhanced Ray Mastery` lab of item 9, and its value is the share of **max health** a protector and the
    enemies it shields take when the beam touches them ⇒ **150 st/pp**, tied with `Radiation` for cheapest pp-class row.
    ⑥ **Ranking law:** the two value classes are **not** comparable by stones-per-point. The multiplier rows have steps
    of **0.03** (`Coins+` 1 250 st for ×1.03 → ×1.30 = **41 667 st** per 0.01 ×, `Cells+` 1 000 st for ×1.05 → ×1.32 =
    **33 333**, `Coin Orb` 750 st for ×1.04 → ×1.40 = **18 750**, `Attack Speed+` 750 st for ×1.03 → ×1.30 = **25 000**)
    yet they are the layer's only *compounding* sources; the pp-class leaders read **`Double Coins` 100 st/pp** (the one
    direct coin-currency row: chance to double an enemy's kill coins), **`Spawn Accelerator` 100**, **`Enhanced Ray` /**
    **`Radiation` 150**, **`Elite Balance` 167** (more elites ⇒ more cells), **`Double Wave Skip` / `Slow Attack` /**
    `Repel` 200, **`Elite Cannon` 250**, `Flashbang` / `Blast Zone` 400, `Ultimate Tower` 333 (per s), `Electrified Net`
    375, `Locked Upgrade` 500, `Warp Speed` 694, `Super Crit` 750, `Angel Wings` 1 111, **`Elite Farming` 1 250** (module
    reroll shards per pp) and `Care Package` 2 500, with `Viking Funeral` cheapest of all at **25 st** per second of cap.

## 3. Step-by-step (UI only)

1. Home screen → **Cards** tab (the card icon). The **info button** (ℹ) in this screen shows the **live drop chance of every rarity and every card** — that is the panel to read after each maxed card.
2. Tap **Buy x10** (200 gems) rather than 10 single taps — same 20 gems/pull, a tenth of the taps.
3. Read the level badges under your cards and level the currency cards **1 → 4 first** (cheapest per point). Tap a card to equip it in the first empty slot; tap again to unequip; **hold** a card to see all 7 level values.
4. Buy the **next card slot** whenever `next-slot price < 640 × (points from that card's next level ÷ 5)` — i.e. stop at level 4–5 and widen the deck; come back to levels 6–7 when slots are no longer the bottleneck.
5. **Presets.** The `Card Presets` lab (unlocks at **Tier 1 Wave 400**) gives **5 presets**. Tap a preset to switch, hold to rename. Ten cards are **locked during a round** (🔒 Enemy Balance, Plasma Cannon, Intro Sprint, Energy Net, Super Tower, Second Wind, Demon Mode, Energy Shield, Wave Accelerator, Nuke) and **while a boss/fleet enemy is alive nothing can be changed** — so put the *same* locked cards in every preset, otherwise mid-run switching is blocked. Practical layout: preset 1 = farming (Enemy Balance, Coins, Cash, Critical Coin, Wave Skip, Cells), preset 2 = pushing (Plasma Cannon, Energy Net, Second Wind, Demon Mode, Extra Defense, Health), preset 3 = tournament.
6. Claim **tier Milestones** as soon as they are available: the milestone cards enter the pull pool only **after** the milestone reward is claimed (the reward does not hand you a copy). Gates: Recovery Package Chance **T2 W750**, **Cells T4 W40**, Land Mine Stun **T7 W250**, Nuke **T11 W10**, Ultimate Crit **T14 W50**, Area of Effect **T20 W80**, **Death Ray “any tier, wave 250”** (game-vault) — the cheapest gate of the Epics, so it is the first Epic in the pool.
   **Gate disagreement to settle on device:** game-vault (July 2025) prints **Land Mine Stun at T11 W10** where the current
   per-tier milestone table has it at **T7 W250** ([T019](T019-milestone-claim-engine.md) §T7) →
   [H047](../hypotheses/H047-land-mine-stun-milestone-gate.md). Practical effect: if the gate is T11 W10 the card is
   irrelevant below Tier 11 and the Rare currency set is just Critical Coin + Wave Skip.
7. Ignore **Card Masteries** below Tier 16: they need the **Tier 16 Wave 100** milestone *and* **30 cards at level 7**, then 500–1 250 stones each (28 500 stones for all 32) plus a 9-level lab costing 1.10 q→10.00 q **coins** per level (50 q total — §2.1 has the printed table: **27 500** stones for
the 31 printed rows plus `Cells`, and `time = 250n + 250 h` per level). Until then, Stones belong in the Ultimate-Weapon sync ([T008](T008-uw-sync-with-stones.md)).

## 4. Reproduction checklist

- [ ] The Cards info panel shows **80 % / 17 % / 3 %** for Common/Rare/Epic before any card is maxed.
- [ ] A level-6 card's badge reads **48** copies and its detail screen's next step is 640 gems-worth (32 copies).
- [ ] After maxing a whole rarity, the info panel's Epic chance has risen (≈ 12 % once all Commons are maxed).
- [ ] Pulling with **Buy x10** deducts exactly **200** gems.
- [ ] The card-level badges follow the printed table: a card at **L4 shows 16** total copies, **L7 shows 80**, and the
      gems-per-level column is 20 / 40 / 100 / 160 / 240 / 400 / 640.
- [ ] The ℹ panel shows **80 / 17 / 3** before anything is maxed, and after the last Common maxes it shows either
      **85 / 15** or **97 / 3** — record which (that is H046's settling read).
- [ ] Card slot 22 costs **10 000** gems (cumulative **58 400** with it, **48 400** without).
- [ ] **Rev 6 marks:** the cumulative gem totals are **3 900** at slot **10**, **15 900** at slot **16**, **32 400** at slot
       **19** and **48 400** at slot **21** (`tools/card-mastery.ps1` re-adds all four from the 22 printed prices).
- [ ] **Rev 6 linearity:** in the mastery block, `Ultimate Crit` is the only row whose ten values are *not* an exact
       arithmetic progression of the endpoints — its steps alternate **0.3 / 0.4 / 0.3 …** because the true step is **⅓ pp**
       (0.3333 printed to one decimal), so a 0.0667 residual there is expected and every other row must read **0.0000**.
- [ ] **Rev 6 lab shape:** the shared mastery lab’s nine times differ by exactly **250 h** each (**500 → 2 500 h**, one
       distinct difference), and its nine coin cells add to exactly **50.00 q** — one more `Time`-is-per-level witness for
       [H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md).
- [ ] No pity counter is shown for the card banner (unlike the Module banner's 150-pull pity) — the chances are per-pull.
- [ ] A skipped wave pays wave coins **and** cash **and** interest (visible as a jump in the in-run Cash bar at the skipped wave).
- [ ] Card Presets: switching presets **during** a round only works when the locked-card sets match.
- [ ] **§“printed ladders”:** with `Coins` equipped, the panel's coin multiplier moves **1.15 → 1.20** for one level-up (one
      printed step = +0.05), and `Cash` moves **1.20 → 1.40** (+0.20); a third read, `Enemy Balance`, moves **1.30 → 1.40**.
- [ ] **§“printed ladders”:** `Damage` is the irregular one — **1.50 at L1, 2.00 at L2, then +0.40 per level** (2.40, 2.80 …).
- [ ] **§2.1 the 10 % law:** unlock a mastery and leave its lab untouched — the value is one step above the base: `Coins`
      **+3 %**, `Damage` **×1.4**, `Cash` **0.4 %**, `Enemy Balance` **6 %**; after 9 lab levels **×1.30 / ×5 / 4 % / 60 %**.
- [ ] **§2.1 stone census:** the mastery list's stone costs are only **500 / 750 / 1 000 / 1 250**, and the `Cells` mastery
      prints **1 000** (the prediction from 28 500 − 27 500).
- [ ] **§2.1 the shared lab:** any mastery lab prints level 1 = **1.10 q / 20 d 20 h** and level 9 = **10.00 q / 104 d 4 h**,
      while the `Cells` mastery lab prints a **different** ladder (the page's “except Cells” note).
- [ ] **§2.1 the gate:** the mastery list stays closed until **30** cards show 7 stars and the **T16 W100** milestone is claimed.
- [ ] **§2.2 the two tables:** the `Cash` card page prints `Card Level | Effect` = **1.20 · 1.40 · 1.60 · 1.80 · 2.00 ·
      2.20 · 2.40** and `Mastery Level | Value` = **0.4 % … 4 %** with its prose reading “Unlocking the Cash card mastery
      costs **500** stones”; the `Coins` page's mastery table runs **x1.03 … x1.30** for **1 250** stones.
- [ ] **§2.2 the mastery law:** on any %-mastery the level-0 value is one tenth of the level-9 value (`Cash` 0.4 / 4,
      `Critical Coin` 10 / 100, `Enemy Balance` 6 / 60, `Free Upgrades` 1 / 10, `Super Tower` −3 s / −30 s) — the single
      exception is `Wave Skip` (**10 %** at 0, **55 %** at 9).
- [ ] **§2.2 Coin Decay:** with the `Coins` card equipped, an enemy that survives **3** waves starts paying **half** coins
      (the wave's coin delta drops by ≈ ×0.5 for that enemy).
- [ ] **§2.2 census:** the `Ultimate Crit` card page's mastery table reads **+0.3 % · +0.7 % · +1.0 % · … · +3.3 %** for
      *k* = 0…9 and prints **750** stones; `Intro Sprint` prints **1 250**; `Area of Effect` 5→25 % with its mastery
      2.5→25 % for **1 000**.
- [ ] **§2.3 Second Wind:** the card page's two lab tables read **25/50/75/100 %** at **1.8 M/3.0 M/4.5 M/75 M** and
      **2 000→400** at **550 B→3.60 T**; the `Nuke` page instead values **1 500→300** for the same cost column.
- [ ] **§2.3 Double Death Ray:** the lab unlocks after the **T3 W300** milestone and level *n* reads exactly **n %**
      (level 1 = 1 %, level 30 = 30 %), with level 1 costing **2 500 000** coins and taking **1 h**.
- [ ] **§2.3 Recharge family:** every printed Recharge line reads **550.00B** at level 1 and **3.60T** at level 7 (Σ
      **14.43 T**) with the seven times `5d 5h 0m · 6d 14h 21m · 8d 0h 55m · 9d 23h 10m · 14d 1h 59m · 24d 19h 29m ·
      51d 8h 12m` ⇒ **10 374 360 s = 120 d 1 h 46 m** per line (`tools/recharge-family.ps1`); `Recharge Second Wind`
      values **2 000→400** waves and `Recharge Nuke` **1 500→300** ⇒ one ladder at an offset (**6/6** steps), while
      `Recharge Missile Barrage` departs from level 5 (**550 vs 500**).
- [ ] **§2.3 Nuke star ladder:** the `Nuke` page prints **25 % · 35 % · 45 % · 55 % · 65 % · 80 % · 100 %** for stars
      1→7 (gaps **+10 +10 +10 +10 +15 +20**) and its mastery **0.05 → 0.5 in steps of 0.05**
      (= `v(k) = 0.05 × (k + 1)`, the §2.2 law with base 0 — see [H062](../hypotheses/H062-nuke-mastery-ladder-which-print.md)).
- [ ] **§2.3 card gates (second source, `wiki/guide/milestones`):** the Milestones table prints `Card: Land Mine Stun` in
      the **T7 W250** free cell, `Card: Nuke` in **T11 W10**, `Card: UW Crit` in **T14 W50** and `Area of Effect Card` in
      **T20 W80** ⇒ the four special-card unlocks are pinned to two waves each and the “T11 W10 for both Nuke and Land
      Mine Stun” print is one row’s offset (**H047** resolved at **T7 W250**).
- [ ] **§2.3 `Double Death Ray`:** the lab's level 1 reads **2 500 000** coins / **0d 1h 0m** / **1 %** and level 30 reads
      **205.13B** / **116d 12h 29m** / **30 %**; L1–L10 together cost **1 251.25 M** (= **0.11 %** of the line's
      **1 097.15 B**) and take **492.7 h**, while L21–L30 cost **1 005.68 B** (**91.66 %**) and take **17 058 h**.
- [ ] **§2.3 beam limits:** with `Death Ray` equipped the beam leaves a **boss** and a **protector-shielded** enemy
      untouched, and the elite types `Ray`, `Scatter`, `Vampire` are not removed by it.
- [ ] **§2.3 mastery census:** `Enhanced Ray` costs **750** stones with the ladder **5 % → 50 %** (5 pp per level), and
      its lab reads **20 d 20 h / 1.10q** at level 1 and **104 d 4 h / 10.00q** at level 9, with **250 h** between every
      pair of levels (500 / 750 / 1 000 / 1 250 / 1 500 / 1 750 / 2 000 / 2 250 / 2 500 h).
- [ ] **§2.3 gate:** the mastery buttons stay dark until **Tier 16 Wave 100** is claimed **and** **30** cards read level
      **7**, and no mastery can be bought while a run is in progress.

## 5. Falsification

- If the info panel's per-card chance is **not** `rarity% ÷ number-of-cards-in-that-rarity`, the “random within rarity” model is wrong → recompute the marginal cost table from the panel's own numbers (that is the point of reading it).
- If a maxed card **still appears** in pulls, the pool does not shrink → the deck costs more than 2 560 pulls and level 6→7 becomes even worse per point.
- If the gem refund on the first visit is not 40, note the value; it changes only the starting balance.
- If a preset switch during a boss works with different locked cards, the locked-card rule is stale — then keep the presets specialised instead of aligned.
- If the ℹ panel after the last Common maxes shows **neither** 85/15 nor 97/3, both published redistribution rules are
  wrong → re-derive the phase boundaries from the panel's own percentages (the 2 560 total stays valid, only the
  intermediate pull counts move).
- If a **single** card's level-up needs a copy count other than 1 / 2 / 5 / 8 / 12 / 20 / 32, the copy table is
  per-card after all → re-read the Card Detail screen and rebuild the gems/pt column.
- If the pool is **30** cards (no `Cells`, no `Area of Effect`) then use game-vault's **2 400 pulls / 48 000 gems** totals
  instead of 2 560 / 51 200 — the difference is exactly 2 × 80 copies.
- **§“printed ladders”:** if a card's seven printed values are **not** one constant step (beyond the seven exceptions listed),
  the two-number model fails for that card → keep its printed row and price it from the panel's own numbers.
- **§2.1:** if an unlocked-but-unresearched mastery shows something other than **one step** (e.g. `Coins` +5 % instead of +3 %,
  or `Damage` ×2), the “stone purchase = level 0 = first term” indexing is wrong → re-index `v(k)` from the panel and rebuild
  the 10 % law (the stone census is independent of the indexing).
- **§2.1:** if a mastery lab's `Time` column behaves as **cumulative** in the UI (level 2 shows 31 d 6 h *of remaining* time
  while level 1's 20 d 20 h is still counting), the Σ is **104 d** not 562.5 d → use the cumulative column; the coin Σ
  (50.00 q) is unaffected either way.
- **§2.1:** if the `Cells` mastery's stone cost is not **1 000**, only the fandom-total reconciliation moves (27 500 + the
  printed cost); the four-bucket census itself is unaffected.
- **§2.1:** if the Card Detail value does not change when a mastery is unlocked, both readings of the mastery product are wrong
  → see [H058](../hypotheses/H058-mastery-multiplies-card-value-or-bonus.md)'s falsification branch.
- **§2.2:** if a card page's `Mastery Level | Value` starts at **0** rather than one step, the law is `v(k) = k × s` and every
  “the unlock already pays 10 %” statement in §2.1 must be re-read as “nothing yet” (the per-stone *ranking* survives — it uses
  the step). If a card page's printed stone cost disagrees with the mastery list's own row for that card, the card page is the
  newer print → re-bucket the census (**27 500** and the `Cells` = **1 000** prediction both move with it).
- **§2.2:** if an enemy that survives 3 waves still pays full coins, the printed **Coin Decay** line is stale → the cosmetic
  and decay notes on that page need re-reading, but the gem/copy arithmetic in §1 is independent of it.
- **§2.2 census:** if any *new* card page shows a mastery ladder that is not `base + (k+1) × s` (e.g. a first term other
  than one step above its family's base), the law is per-page after all → keep the printed rows and drop the closed form
  (the stone buckets are independent of the law).
- **§2.3 card gates:** if the in-game **Milestones** screen puts `Land Mine Stun` at **T11 W10** instead of T7 W250, the
  wiki's column order is not free/premium per tier ⇒ re-read the block header row (`Tier | Tier N | Tier N+1 | Tier N+2`
  over `Wave | Standard | Premium | …`) and rebuild the four gate readings from the header, not from the column index.
- **§2.3 `Double Death Ray`:** if the 30 printed cells no longer add to **1 097.15 B / 21 415.5 h**, the lab was
  re-priced ⇒ re-run `tools/death-ray-lab.ps1`; the *knee* conclusion survives as long as L1–L10 stay under ~1 % of the
  bill, and only the per-point numbers change. If the value column stops being the level number (e.g. level 5 = 5.5 %),
  the `v(n) = n` law is dead for this line and the 36.572 B/pp figure must be recomputed as `Σcost / v(30)`.
- **§2.3 beam limits:** if a `Death Ray` activation removes a **boss** or an enemy inside a protector radius on your
  client, the immunity list is stale ⇒ re-read the `Good to know` block; the coin/clock ladder is unaffected.
- **§2.3 mastery census:** if the 32 printed stone prices no longer add to **28 500**, a card was added or re-priced ⇒
  re-run `tools/mastery-census.ps1` (the classes are **2 / 13 / 14 / 3** rows at **500 / 750 / 1 000 / 1 250**); the
  per-row ladders do not move, only the totals. If the mastery lab's times stop being **250 h** apart, the arithmetic law
  `t(n) = 250 × (n + 1)` h is dead and the nine cells must be read one by one.
- **§2.3 gate:** if mastery buttons light up with **fewer than 30** cards at level 7, the gate is per-card rather than
  account-wide ⇒ re-read the **Cards** screen's level-7 count; the Lab-panel line count moves with it (each mastered card
  adds one lab line, so a full layer is 32 lines on top of T006's census).
- **§2.3:** if the in-game `Second Wind Blast` times read as **cumulative** (level 4 ≈ 3 d 11 h total, not ≈ 8 d total),
  this page family's `Time` column differs from the other lab pages → divide the 892.3 d Double Death Ray Σ accordingly
  (cumulative would make it 116.5 d); the coin Σ (1.10 T) is unaffected either way.
- **§2.3:** if `Double Death Ray` level 1 does not read **1 %** (or the gate is not the T3 W300 milestone), the value
  column is not the level number → re-read the panel; the Σ coin ladder is unaffected.
- **§2.3 Recharge family:** if a second Recharge lab’s level-1 price is **not 550.00B**, the shared cost/time ladder broke
  ⇒ price that line from its own first two rows; the family rule covers price and clock only, never the value column
  (`Missile Barrage` already departs at L5). If the seven printed times sum to **10 371 960 s** instead of
  **10 374 360 s**, one cell lost 40 min of truncation ⇒ trust the per-cell readings, not a quoted Σ.
- **§2.3 Nuke star ladder:** if the equipped `Nuke` card’s on-screen clear share is **not** the printed star row (25 % at 1
  … 100 % at 7), that ladder belongs to another quantity ⇒ keep the printed row and use the panel’s own value, as in §1’s
  exceptions. If a mastery purchase changes the clear share, the mastery multiplies the card value (**H062** reading B);
  if only the attack-speed pause moves, it is the slow (reading A).

## 6. Notes

- Binary/UI confirmation (`tools/gm_strings.txt`): `Assets\Scripts\Cards.cs`, `CardBulkViewer.cs`, `UI\CardDropRatesMenu.cs`, `CardDropRateEntry.cs`, `CardRarityHeaderEntry.cs` (the ℹ panel), UI strings `Card Panel`, `Card Detail`, `Cards`, and `0Reset All Card Masteries` (the mastery respec exists → mastery stones are recoverable, unlike module rerolls).
- `AutoRerollUI.cs` / the `Auto Reroll` string belong to the **module substat** reroll, not to card pulls — card pulls are one 20-gem flat cost with no reroll state.

## Sources

- Tower Hub per-card pages (all last verified **2026-11-01**, pulled 2026-11-02): `wiki/card/cards-cash` ·
  `cards-coins` · `cards-critical-coin` · `cards-wave-skip` · `cards-enemy-balance` · `cards-recovery-package-chance` ·
  `cards-free-upgrades` · `cards-super-tower` — §2.2: the `Card Level | Effect` (7 rows) and `Mastery Level | Value`
  (10 rows, *k* = 0…9) tables, the per-page stone costs (**500 / 1 000 / 1 250**), and the `Good to know` prints
  (**Coin Decay** half coins after **3** waves alive; cosmetics **+0.4 / +0.8 / +0.6 %**; the Cash/Coins reset rules).
  Parsed with `tools/card-page-parse.ps1` (row counts, steps, arithmetic test, the `bonus(k) = (k+1)s` check, stone cost).
- Tower Hub, same last-verified date, pulled 2026-11-02 for §2.2 census + §2.3 — 15 more card pages: `cards-area-of-effect` ·
  `cards-attack-speed` · `cards-berserker` · `cards-critical-chance` · `cards-damage` · `cards-extra-defense` ·
  `cards-extra-orb` · `cards-fortress` · `cards-health` · `cards-health-regen` · `cards-intro-sprint` ·
  `cards-land-mine-stun` · `cards-range` · `cards-ultimate-crit` · `cards-wave-accelerator`; and the special/preset pages
  `death-ray` · `demon-mode` · `energy-net` · `energy-shield` · `nuke` · `nuke-vs-slow-aura-mastery` · `plasma-cannon` ·
  `second-wind` · `slow-aura` · `card-presets`. Arithmetic checked by `tools/card-page-parse.ps1`; the `Time` columns
  summed by hand against T006's printed lab totals.
- Tower Hub `wiki/card/nuke` (last verified **2026-11-01**, 1 data table), re-pulled 2026-11-03 for §2.3 item 8 — the seven
  `Recharge Nuke` rows (**550.00B / 1.05T / 1.55T / 2.05T / 2.56T / 3.07T / 3.60T** at **5d 5h 0m … 51d 8h 12m**, value
  **1,500 → 300**, “unlocked in Milestones at tier 14, wave 60 … The lab has 7 levels”), the star ladder (“Card value per
  star 1-7: **25%, 35%, 45%, 55%, 65%, 80%, 100%**”), the mastery print (“max level 9 … **0.05** at level 0 up to **0.5** at
  level 9, in steps of **0.05**”, quoted text “slows enemy attack speed for **300 waves**” → **H062**), the save order
  (“First, Death Defy … an Energy Shield charge … Second Wind … Demon Mode … only then Nuke”), “this automatic Nuke does
  **not** destroy projectiles already in flight”, the **v27.3 (18 December 2025)** “**15 seconds of invulnerability**” note,
  and the “**only after** Nuke was used once in that run” rule. Sums reproduced by `tools/recharge-family.ps1`; the fandom
  `Nuke` page (last edited 2026-01-20) is the listed second source.
- Tower Hub `wiki/card/death-ray` (last verified **2026-11-01**, 1 data table), re-pulled 2026-11-03 — the **complete**
  30-row `Double Death Ray` table (`Level | Time | Cost | Value`, L1 **2 500 000** / **0d 1h 0m** / **1 %** … L30
  **205.13B** / **116d 12h 29m** / **30 %**, quoted in full in §2.3 item 3 and summed by `tools/death-ray-lab.ps1` to
  **1 097.15 B** coins and **21 415.5 h**), the gate prose (“unlocked through Milestones at **tier 3, wave 300** … The lab
  has **30 levels**”), the beam limits (“**cannot kill bosses** … no effect on any enemy sitting inside a **protector's
  radius**”; “Elites (**Ray, Scatter, Vampire**) are **immune**”; max-level rotation “covers **more than 180 degrees**”),
  and the mastery line (“partially pierce Protector shields and unlocks the **Enhanced Ray Mastery** research”). Fandom
  second source: `Death Ray` (last edited **2025-07-24**).
- fandom **`Card Masteries`** (raw wikitext via `api.php`), pulled 2026-11-03 — the **whole mastery census in one place**:
  the gate prose (“unlocks once you have claimed the **Tier 16, Wave 100** milestone and have **30 cards at level 7** …
  Masteries cannot be bought during a round”), “**Mastering all 32 cards costs 28,500 stones**”, the `Mastery lab costs`
  table (**9** rows, `20d 20h / 1.10q` … `104d 4h / 10.00q`, totals `562d 12h` / `50.00q`), and the 32-row
  `Card | Mastery | Effect | Stones | 0..9` block that names every mastery (**`Enhanced Ray` 750 st, 5 % → 50 %**,
  `Double Coins`, `Elite Balance`, `Elite Farming`, `Care Package`, `Warp Speed`, `Angel Wings`, `Demon Revenge`,
  `Viking Funeral`, `Radiation`, `Repel`, `Blast Zone`, `Spawn Accelerator`, `Locked Upgrade`, `Coin Orb`,
  `Elite Cannon`, `Flashbang`, `Electrified Net`, `Ultimate Tower`, `Slow Attack`, `Super Critical Chance`,
  `Fortress Walls`, …) and is re-added by `tools/mastery-census.ps1`. It also carries the `AdvancedAnalysis` pointer
  (that page is table-free here) and flags “Land Mine Stun is old scaling values”.
- Tower Hub `wiki/guide/milestones` (last verified **2026-07-29**, 10 data tables), re-pulled 2026-11-03 — the second source
  for the four card gates: the T7/T8/T9 block prints **`Card: Land Mine Stun`** in the **wave 250** free cell, the
  T10/T11/T12 block **`Card: Nuke`** at **wave 10**, the T13/T14/T15 block **`Card: UW Crit`** at **wave 50**, and the
  T19/T20/T21 block **`Area of Effect Card`** at **wave 80** (column order = free/premium per tier: odd column = free).
  Same table’s lab cells double-source `Second Wind Blast` (T3 W150), `Double Death Ray` (T3 W300), `Super Tower Bonus`
  (T8 W300), `Recovery Package Chance` (T2 W750) and `Garlic Thorns` (T2 W1000) — all as used in
  [T019](T019-milestone-claim-engine.md) §2.① / [T006](T006-lab-queue-packing.md) /
  [T012](T012-card-deck-order.md) §2.3. The `Death Ray` **card** is not among the named cells of any of the 244 rows.

- fandom `Cards` (raw wikitext) — 32 cards / 12-9-11 split, 20-gem pull, 80/17/3, level copy table (1/3/8/16/28/48/80), 2 560 pulls = 51 200 gems, slot ladder to 58 400 gems + 6 Vault slots, locked-card list, preset rules, per-card level values, Vault/Keys card upgrades, card-specific labs.
- Tower Hub `wiki/card/cards` (last verified **2026-10-13**, 9 data tables) — “Each card costs **20 Gems** to buy, and the
  number you can have active at once is limited by your card slots. Individual cards can be levelled up to a maximum of
  **7 stars** by collecting duplicate copies” (⇒ star rank = level), the per-rarity card lists (Common / Rare / Epic, with
  the mastery-lab time-and-coins table), and the locked-card icon rule.
- fandom `Card Masteries` (raw) — T16 W100 + 30×L7 gate, 28 500 stones for all, mastery values incl. **Elite Balance** 6 %→60 %,
  **Cells+** ×1.05→×1.32, **Double Coins** 10 %→100 %, **Elite Farming** reroll-shard chance.
- Tower Hub `wiki/card/card-masteries` (last verified **2026-11-01**, 2 data tables) — the **31 mastery rows** with stone costs
  (parsed cell-by-cell with `tools/card-tables-parse.ps1`), the shared 9-level lab ladder, the “every lab **except Cells**”
  note, the gate prose (“30 of your cards are maxed … **Tier 16, Wave 100**”), the level-0 example (“x1.4 instead of x5”), the
  per-level-time prose (“all nine levels about 50q coins and **562 days**”), and the April-2026 comparison-video figures
  (×270 for three masteries, ×4.6 for a 40 %-efficiency assist module, the **700 T/day** start rule).
  **Naming drift:** fandom's **Double Coins** 10 %→100 % *is* the Hub's `Critical Coin` mastery, **Elite Balance** 6 %→60 % is
  `Enemy Balance`, and **Elite Farming** is the `Cash` mastery's reroll-dice line — three labels, same three ladders.
- Tower Hub `wiki/card/cards` (last verified **2026-10-13**, 9 data tables) — besides the items already cited at Rev 2, the
  **Lv. 1 → Lv. 7 tables for all 31 cards** (the source of §“printed ladders”), the **49 600-gem / 31-card** total, the
  “unlock copy counts as the first of the 3 copies” rule, the 97 % redistribution print, the dead **Buy** button + instant
  event-mission completion, and the two milestone labs `Light Speed Shots` (T7 W10, 3 000 000 coins) / `Shatter Shards`
  (T16 W40, 5 levels, `+20 % × n`).
- game-vault `Cards` (last edited 6 Jul 2025) — the **printed per-level values for all 30 cards** (the source of the
  gems/pt table), the **L1→L7 copy/gem table** (1·20 … 32·640, totals 1/3/8/16/28/48/80 and 20/60/160/320/560/960/**1 600**),
  the **21-slot cost table** (per-slot 50…8 500, Σ **48 400**), the 80/17/3 rarity-first model, “maxed cards leave the pool”,
  “**when all common cards are purchased the chance to get a rare goes up to 97 %**” (H046), the milestone-card table
  (Death Ray **any tier W250**, Recovery Package T2 W750, Land Mine Stun **T11 W10**, Nuke T11 W10, Ultimate Crit T14 W50),
  and the 30-card list used for the 30 → 32 reconciliation.
- game-vault `Guide:Cards_Tier_List_and_Guide` — S/A/B/C tier list, older 19-slot table (cross-check).
- game-vault `Guide:Gem_Guide` — daily gem income used for the payback horizons.
