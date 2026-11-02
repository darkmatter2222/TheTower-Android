# T012 — Buy card levels by gems-per-percentage-point, not by card

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

## 6. Notes

- Binary/UI confirmation (`tools/gm_strings.txt`): `Assets\Scripts\Cards.cs`, `CardBulkViewer.cs`, `UI\CardDropRatesMenu.cs`, `CardDropRateEntry.cs`, `CardRarityHeaderEntry.cs` (the ℹ panel), UI strings `Card Panel`, `Card Detail`, `Cards`, and `0Reset All Card Masteries` (the mastery respec exists → mastery stones are recoverable, unlike module rerolls).
- `AutoRerollUI.cs` / the `Auto Reroll` string belong to the **module substat** reroll, not to card pulls — card pulls are one 20-gem flat cost with no reroll state.

## Sources

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
