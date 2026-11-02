# T012 — Buy card levels by gems-per-percentage-point, not by card

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
6. Claim **tier Milestones** as soon as they are available: the milestone cards enter the pull pool only **after** the milestone reward is claimed (the reward does not hand you a copy). Gates: Recovery Package Chance **T2 W750**, **Cells T4 W40**, Land Mine Stun **T7 W250**, Nuke **T11 W10**, Ultimate Crit **T14 W50**, Area of Effect **T20 W80**.
7. Ignore **Card Masteries** below Tier 16: they need the **Tier 16 Wave 100** milestone *and* **30 cards at level 7**, then 500–1 250 stones each (28 500 stones for all 32) plus a 9-level lab costing 1.10 q→10.00 q **coins** per level (50 q total). Until then, Stones belong in the Ultimate-Weapon sync ([T008](T008-uw-sync-with-stones.md)).

## 4. Reproduction checklist

- [ ] The Cards info panel shows **80 % / 17 % / 3 %** for Common/Rare/Epic before any card is maxed.
- [ ] A level-6 card's badge reads **48** copies and its detail screen's next step is 640 gems-worth (32 copies).
- [ ] After maxing a whole rarity, the info panel's Epic chance has risen (≈ 12 % once all Commons are maxed).
- [ ] Pulling with **Buy x10** deducts exactly **200** gems.
- [ ] A skipped wave pays wave coins **and** cash **and** interest (visible as a jump in the in-run Cash bar at the skipped wave).
- [ ] Card Presets: switching presets **during** a round only works when the locked-card sets match.

## 5. Falsification

- If the info panel's per-card chance is **not** `rarity% ÷ number-of-cards-in-that-rarity`, the “random within rarity” model is wrong → recompute the marginal cost table from the panel's own numbers (that is the point of reading it).
- If a maxed card **still appears** in pulls, the pool does not shrink → the deck costs more than 2 560 pulls and level 6→7 becomes even worse per point.
- If the gem refund on the first visit is not 40, note the value; it changes only the starting balance.
- If a preset switch during a boss works with different locked cards, the locked-card rule is stale — then keep the presets specialised instead of aligned.

## 6. Notes

- Binary/UI confirmation (`tools/gm_strings.txt`): `Assets\Scripts\Cards.cs`, `CardBulkViewer.cs`, `UI\CardDropRatesMenu.cs`, `CardDropRateEntry.cs`, `CardRarityHeaderEntry.cs` (the ℹ panel), UI strings `Card Panel`, `Card Detail`, `Cards`, and `0Reset All Card Masteries` (the mastery respec exists → mastery stones are recoverable, unlike module rerolls).
- `AutoRerollUI.cs` / the `Auto Reroll` string belong to the **module substat** reroll, not to card pulls — card pulls are one 20-gem flat cost with no reroll state.

## Sources

- fandom `Cards` (raw wikitext) — 32 cards / 12-9-11 split, 20-gem pull, 80/17/3, level copy table (1/3/8/16/28/48/80), 2 560 pulls = 51 200 gems, slot ladder to 58 400 gems + 6 Vault slots, locked-card list, preset rules, per-card level values, Vault/Keys card upgrades, card-specific labs.
- fandom `Card Masteries` (raw) — T16 W100 + 30×L7 gate, 28 500 stones for all, mastery values incl. **Elite Balance** 6 %→60 %, **Cells+** ×1.05→×1.32, **Double Coins** 10 %→100 %, **Elite Farming** reroll-shard chance.
- game-vault `Guide:Cards_Tier_List_and_Guide` — S/A/B/C tier list, older 19-slot table (cross-check).
- game-vault `Guide:Gem_Guide` — daily gem income used for the payback horizons.
