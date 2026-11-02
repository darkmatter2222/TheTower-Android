# T012 — Buy card levels by gems-per-percentage-point, not by card

Rev: 2 (2026-11-02) — the **full per-level price table** (printed values for every currency card + gems-per-point), the
**three-phase pull schedule** (its total reproduces the printed **2 560 pulls** exactly), the **named-card closed form**,
the **slot ladder sum check (20/20)**, and the **30-card → 32-card reconciliation**. · Status: **Verified (arithmetic)**
for the copy/gem tables and the slot ladder; the drop-rate model is the in-game ℹ panel's own numbers.
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
7. Ignore **Card Masteries** below Tier 16: they need the **Tier 16 Wave 100** milestone *and* **30 cards at level 7**, then 500–1 250 stones each (28 500 stones for all 32) plus a 9-level lab costing 1.10 q→10.00 q **coins** per level (50 q total). Until then, Stones belong in the Ultimate-Weapon sync ([T008](T008-uw-sync-with-stones.md)).

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
- [ ] No pity counter is shown for the card banner (unlike the Module banner's 150-pull pity) — the chances are per-pull.
- [ ] A skipped wave pays wave coins **and** cash **and** interest (visible as a jump in the in-run Cash bar at the skipped wave).
- [ ] Card Presets: switching presets **during** a round only works when the locked-card sets match.

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

## 6. Notes

- Binary/UI confirmation (`tools/gm_strings.txt`): `Assets\Scripts\Cards.cs`, `CardBulkViewer.cs`, `UI\CardDropRatesMenu.cs`, `CardDropRateEntry.cs`, `CardRarityHeaderEntry.cs` (the ℹ panel), UI strings `Card Panel`, `Card Detail`, `Cards`, and `0Reset All Card Masteries` (the mastery respec exists → mastery stones are recoverable, unlike module rerolls).
- `AutoRerollUI.cs` / the `Auto Reroll` string belong to the **module substat** reroll, not to card pulls — card pulls are one 20-gem flat cost with no reroll state.

## Sources

- fandom `Cards` (raw wikitext) — 32 cards / 12-9-11 split, 20-gem pull, 80/17/3, level copy table (1/3/8/16/28/48/80), 2 560 pulls = 51 200 gems, slot ladder to 58 400 gems + 6 Vault slots, locked-card list, preset rules, per-card level values, Vault/Keys card upgrades, card-specific labs.
- Tower Hub `wiki/card/cards` (last verified **2026-10-13**, 9 data tables) — “Each card costs **20 Gems** to buy, and the
  number you can have active at once is limited by your card slots. Individual cards can be levelled up to a maximum of
  **7 stars** by collecting duplicate copies” (⇒ star rank = level), the per-rarity card lists (Common / Rare / Epic, with
  the mastery-lab time-and-coins table), and the locked-card icon rule.
- fandom `Card Masteries` (raw) — T16 W100 + 30×L7 gate, 28 500 stones for all, mastery values incl. **Elite Balance** 6 %→60 %, **Cells+** ×1.05→×1.32, **Double Coins** 10 %→100 %, **Elite Farming** reroll-shard chance.
- game-vault `Cards` (last edited 6 Jul 2025) — the **printed per-level values for all 30 cards** (the source of the
  gems/pt table), the **L1→L7 copy/gem table** (1·20 … 32·640, totals 1/3/8/16/28/48/80 and 20/60/160/320/560/960/**1 600**),
  the **21-slot cost table** (per-slot 50…8 500, Σ **48 400**), the 80/17/3 rarity-first model, “maxed cards leave the pool”,
  “**when all common cards are purchased the chance to get a rare goes up to 97 %**” (H046), the milestone-card table
  (Death Ray **any tier W250**, Recovery Package T2 W750, Land Mine Stun **T11 W10**, Nuke T11 W10, Ultimate Crit T14 W50),
  and the 30-card list used for the 30 → 32 reconciliation.
- game-vault `Guide:Cards_Tier_List_and_Guide` — S/A/B/C tier list, older 19-slot table (cross-check).
- game-vault `Guide:Gem_Guide` — daily gem income used for the payback horizons.
