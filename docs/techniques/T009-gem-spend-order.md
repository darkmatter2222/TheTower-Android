# T009 — Gem spend order: the two paths, priced

Rev: 5 (2026-11-02) — the **community ladder** (`system/icet-s-gem-and-card-priority-list`, the only source that prints both
slot counters) is re-priced at §1's rates: checkpoints **100 / 310 / 710 / 1 250 / 2 650 / 3 590 / (4 230) / 7 230 / 9 020**
gems, ending at 10 card slots. It **agrees with Path A to within three pulls** (**2 650** vs **2 590** at the 4-lab/5-slot
checkpoint) and differs in one place: it buys **lab slot 2 first**. Adds the conditional 8th slot, the Extra Orb → Orb
Adjuster rule, the stricter Death Ray gate (wave 250 on **each** of the first 10 tiers) and the **lab-speed ≥ 50** target
with its printed bill (**2 258 611** coins, **16 d 19 h 49 m**, value **2.00**). §2.①.
Rev: 4 (2026-11-02) — the **printed order corroborates Path A** (same interleaving of lab slots and card slots) and the
guide **names** the first seven cards: Attack Speed / Enemy Balance / Coins → Health / Cash → two of Crit Coin, Wave Skip,
Extra Orbs; the card phase ends where **30 maxed cards** unlock Card Masteries.
Rev: 3 (2026-11-01) — every step is now a **price**, the two paths get **cumulative gem totals** (so you can locate
yourself with the gem counter alone), and the event/relic/rush budget rules are added.
Currency: **Gems** → Coins/min · Status: **Three-sourced (Rev 5)** — prices agree across two wikis, the printed orders are
Path A’s shape in two independent lists, and the community ladder’s checkpoints re-add from the same price table; a device
before/after is still pending

| | |
|---|---|
| **Value** | ★★★★ — gems are the scarcest currency (≈ 435/day, T022 §1), and the framework to “5 labs + 5 card |
| | slots” is only **≈ 5 030–5 590 gems ≈ 12–13 days**, so the order decides whether those two weeks compound or not. |
| **Confidence** | **High** on prices — Tower Hub `card-slots` (last verified 2026-07-30) and fandom `Currency/Gems` |
| | agree on the slot ladder and on **58 400** for slots 2–22; lab slots 100/400/1 400/3 000 also match, and the |
| | community ladder's checkpoints re-add from those same prices (three sources). **Medium** on the path choice (it depends |
| | on how often you are in the app). |
| **Ease** | 3 taps per purchase (open panel → `+`/`Buy` → confirm) · **Prerequisite:** the **Cards** tab (after 2 T1 runs) |
| | and the **Lab** panel (T1). |

---

## 1. The price list (what each step actually costs)

| Purchase | Price | Cumulative |
|---|---|---|
| Card **pull** (`Buy` / `Buy x10` = 200) | **20** each | — |
| **Lab slots** 2 / 3 / 4 / 5 | **100 / 400 / 1 400 / 3 000** | **4 900** for all four |
| **Card slot** 2 | 50 | 50 |
| Card slot 3 / 4 / 5 | 100 / 200 / 300 | **650** (slots 2–5) |
| Card slot 6 / 7 / 8 | 400 / 500 / 600 | **2 150** (slots 2–8) |
| Card slot 9 / 10 | 750 / 1 000 | **3 900** (slots 2–10) |
| Card slots 2–22 (all gem slots) | … 10 000 for slot 22 | **58 400** |
| Card slots 23–28 | **keys**, not gems (Vault, T017) | cap = 28 equipped cards |
| **All 32 cards** maxed | 1 600 each | **51 200** (T012) |
| Event-shop **relics** | 600 Rare / 1 200 Epic | — |
| **Respecs** | Workshop 150, Bots 300, Guardian 150 | → **0** with the Vault lines (T017) |
| Other small sinks | mission reroll 5, module unmerge 20, extra tickets 10/20/30 | — |

**The “framework” bill** = 4 900 (labs) + 58 400 (slots) + 51 200 (cards) = **114 500 gems ≈ 1 year of perfect claiming**
(T022 §2). Everything below is about the *first* 5 500 of them.

**Budget rule that comes before any ladder:** reserve **1 600 gems per event** for the “buy 80 cards” quest
(80 × 20 = 1 600, T012) — it is the event's medal floor, and the break-even test is in H036.

## 2. The two paths, with running totals

Both start identically: buy cards until **Enemy Balance** is in the deck (more enemies ⇒ more kills ⇒ more Coins/min for
every later run). Then:

| # | **Path A — active player** | gems | Σ | **Path B — casual / autoplay-heavy** | gems | Σ |
|---|---|---|---|---|---|---|
| 1 | Enemy Balance (≈ 3 pulls) | 60 | 60 | same | 60 | 60 |
| 2 | Card slot 2 + Cash/Coins card | 70 | 130 | Card slot 2 + Cash/Coins card | 70 | 130 |
| 3 | **Lab slot 2** | 100 | 230 | **Lab slot 2** | 100 | 230 |
| 4 | 3rd card | 20 | 250 | **Lab slot 3** | 400 | 630 |
| 5 | **Lab slot 3** | 400 | 650 | **Lab slot 4** | 1 400 | 2 030 |
| 6 | Card slot 4 + Health/Attack Speed | 220 | 870 | **Lab slot 5** | 3 000 | **5 030** |
| 7 | Card slot 5 + Health/Attack Speed | 320 | 1 190 | then slots/cards | — | — |
| 8 | **Lab slot 4** | 1 400 | 2 590 | | | |
| 9 | **Lab slot 5** | 3 000 | **5 590** | | | |

At **≈ 435 gems/day** (T022 §1): Path A ≈ **13 days**, Path B ≈ **12 days**. Path B is **560 gems cheaper** and reaches
5 labs ≈ 1–2 days earlier; Path A has **5 equipped cards instead of 2** at the same moment.

**Which one:** equipped cards multiply *every run you take*, so if you tap the app often (thousands of waves/day) the
per-run multiplier compounds and **A** wins; if the tower mostly runs itself, the lab multipliers are the uptime-bound
term and **B** wins. Switch back to A after the 5th lab slot either way.

**The printed order is Path A’s shape (second source).** The guide’s own sequence interleaves the two families exactly the
way Path A does — lab slot **2** → three cards + their slots → lab slot **3** → two more cards + slots → lab slot **4** →
two more cards + slots → lab slot **5** → one Epic module of each type — and it **names** the cards, which the price table
cannot: **first three = Attack Speed, Enemy Balance, Coins**; **then Health and Cash**; **then two of {Crit Coin, Wave
Skip, Extra Orbs}**. Two of its stage rules are already in §3 (the slot-waiting rule, the Epic-module-first rule with the
Havoc Bringer / Rend Armor example, and “keep every module below its level cap”), and it repeats the two rush rules
(gold-box completed labs improve the rate; longer labs are cheaper per unit of time). It also fixes the ceiling of the
card phase: **maxing 30 cards unlocks Card Masteries** (T012), which is the point where the card line stops being the best
gem buy.

### 2.① The community ladder (third source), re-priced with §1's rates

`wiki/system/icet-s-gem-and-card-priority-list` (community list, page *last verified* 2026-07-29, written for v0.16/0.17) is
the only one of the three sources that prints **both** the lab-slot and the card-slot counts at every stage, so it can be
re-priced straight from §1 and compared with Path A cell for cell:

| Stage | What is bought (price from §1) | Cards named | Σ gems |
|---|---|---|---|
| 1 | **lab slot 2** (100) | — | **100** |
| 2 | card slots 2 + 3 (50 + 100) + 3 pulls | Attack Speed, Enemy Balance, Coins | **310** |
| 3 | **lab slot 3** (400) | — | **710** |
| 4 | card slots 4 + 5 (200 + 300) + 2 pulls | Health, Cash | **1 250** |
| 5 | **lab slot 4** (1 400) | — | **2 650** |
| 6 | card slots 6 + 7 (400 + 500) + 2 pulls | Extra Orb **or** Death Ray | **3 590** |
| 6b | *only if you already own both*: card slot 8 (600) + 2 pulls | Wave Skip + Critical Coin together | **4 230** |
| 7 | **lab slot 5** (3 000) | — | **7 230** |
| 8 | card slots 9 + 10 (750 + 1 000) + 2 pulls | Plasma Cannon, Wave Accelerator (+ the two above if still missing) | **9 020** |

Three things the comparison gives:

- **Same shape as Path A, one swap:** the community ladder buys **lab slot 2 first**, before any card slot (Path A opens with
  the three pulls). Everything after that is the same 2 → 3 → 4 → 5 lab interleaving around the card phase.
- **The two ladders agree to within three pulls.** At the *4 lab slots + 5 card slots* checkpoint the community ladder sits at
  **2 650** gems and Path A at **2 590** — the **60**-gem gap is exactly the three 20-gem Enemy-Balance pulls Path A counts up
  front. That is this technique's cross-source numeric check, and it is arithmetic, not interpretation: every Σ above is a
  sum of §1's printed prices.
- **Its framework is 3 430 gems longer** than §2's because it ends at **10 card slots** (**9 020**) where §2 stops at 5
  (**5 590**). At ≈ 435 gems/day (T022 §1): ≈ 13 d to §2's framework, ≈ 21 d to the end of this ladder.

**One conditional and three numbers the same page prints:**

- **Stage 6b is conditional** — the 8th card slot is only a buy when *both* Wave Skip and Critical Coin are in the deck
  (**640** gems otherwise idle).
- **Death Ray** (the card) does not enter the pool until **wave 250 cleared on each of the first 10 tiers** — the *stricter*
  of the two prints in this repo, which also carries “any tier, wave 250” (see **H047** for the one read that settles it).
- **Extra Orb** wants its **Orb Adjuster** lab first; until that lab is bought the page fills the slot with **Extra Defense**
  or leaves it locked — i.e. an un-labbed Epic is a worse buy than an empty slot.
- **Rush lab speed to at least level 50.** The printed ladder (`wiki/lab/labs-speed`) puts **L50 at exactly ×2.00**
  (`1 + 0.02 × 50` ✓) for **2 258 611 coins** and **16 d 19 h 49 m** of one slot at 1× (≈ 4.5 d under the ×3.725 relic-stacked
  rate), with **L25 = ×1.50 / 247 704** and **L99 = ×2.98 / 19 355 790** as the neighbours to check against the panel.
- **A big gem pile re-orders the ladder:** with a Tapjoy offer-wall or stone-pack windfall the page skips ahead to lab slots
  **3 and 4**, then 5 card slots + lab slot **5**, then resumes at stage 6 — the same order as §2's Path B.

## 3. Stage rules after the framework (5 labs + 5 slots)

1. **Card slot decision rule:** buy a new slot only if you already own a card that would meaningfully improve the build
   *right now*; otherwise keep buying card **levels** (T012's gems-per-percentage-point ladder: take every currency card
   to **L4** first).
2. **Modules:** get **one Epic of each of the 4 types** before chasing specific unique effects — several uniques need other
   unlocks first (e.g. Havoc Bringer needs Rend Armor). Then keep every equipped module **below its level cap**, because a
   capped module cannot take sub-stat upgrades even with shards in hand (T010 §1).
3. **Relics:** the Event Shop rotates weekly; buying every relic is worse value than card levels and module levels, so
   hold a small reserve (600 / 1 200) and pick only the relics you want (T018).
4. **Lab rushing** is the weakest conversion early. When it is worth it: the rush gem rate is better for each lab that is
   **fully completed** (the gold box on the lab screen) and **longer labs are cheaper per unit of time**, so rush the long
   labs of a completed category, not the short ones of a half-finished one (H035).
5. Never spend gems on: research speed-ups outside the rule above, cosmetic bundles, or medals-priority trades that beat
   the 3.75 gems/medal break-even (T013 §3).

## 4. Steps (UI only)

1. **Cards** panel → `Buy x10` until **Enemy Balance** appears → equip it (the panel's `+` on the slot row).
2. **Lab** panel → tap the locked slot's gem price (`100` → `400` → `1 400` → `3 000`) in your path's order; keep a
   research in every slot at all times (T006).
3. **Cards** panel → the slot row shows each next slot's price (50 / 100 / 200 / 300 / 400 / 500 / 600 / 750 / 1 000 …) —
   buy it only with a card waiting (§3.1).
4. Keep **1 600 gems** unspent from the moment an event opens, then claim the “buy 80 cards” quest reward after the 80th
   pull (T012's `Buy x10` × 8 = 1 600 gems, 80 taps → 8 taps).
5. After the 5th lab slot: alternate one Epic module pull per type (4 total) → then split by §3's rules.
6. Re-read this table at each milestone group (T019), because the Milestone rewards *are* lab slots and cards — the
   free 4 675 gems and the free labs shift which step you are on, not the order.

## 5. Reproduction checklist

- [ ] The Lab panel's next locked slot reads **100**, then **400**, then **1 400**, then **3 000** gems.
- [ ] The Cards panel's next slot reads **50 / 100 / 200 / 300 / 400 / 500 / 600 / 750 / 1 000** for slots 2–10.
- [ ] `Buy x10` deducts exactly **200** gems and returns 10 cards.
- [ ] After Path A's step 9 the total spent reads ≈ **5 590** gems (± pull count on Enemy Balance).
- [ ] The 80th pull of an event completes the card quest and the gem counter dropped by **1 600** across the event.
- [ ] No gem spend on research speed-ups in the log while the framework is incomplete.
- [ ] The deck’s first three maxing cards are **Attack Speed**, **Enemy Balance**, **Coins** (the printed set), and the
      **Card Masteries** section appears only after **30** cards are maxed.
- [ ] **Community checkpoints (§2.①):** with the gem counter open, after `lab slot 2 + card slots 2–3 + 3 pulls` the spend is
      **310** (100 + 50 + 100 + 60), and directly after **lab slot 4** it is **2 650**. If both read as printed, the two
      ladders are the same plan.
- [ ] **Lab-speed target check:** `Labs Speed` level **50** shows value **2.00** (`1 + 0.02 × 50`), the next level costs
      **2 258 611** coins, and level 99 reads **2.98**.
- [ ] The 8th card slot was bought only once **both** Wave Skip and Critical Coin were in the deck (**600** + 2 pulls).

## 6. Falsification

- If a card slot's price does not match §1, note the version and the ladder — the **ratios** (each slot ≈ +50 % to +33 %)
  are what the decision rule uses, so rebuild §2's Σ column from the panel.
- If completing the “buy 80 cards” quest is not 80 pulls / 1 600 gems, re-derive the event floor (H036).
- If the rush price for the same remaining time changes with the number of completed labs, that is the H035 model
  confirmed; if it changes with the *tier* instead, rewrite §3.4 with the tier as the parameter.
- If Coins/min does not rise measurably after the 2nd lab unlock versus the 3rd card slot, record both values and flip
  the order for the next tier band (this is the A-vs-B tie-breaker).
- If the §2.① checkpoints come out at **310** / **2 650** the two sources are the same plan; if one slot's price differs from
  §1, every later checkpoint moves by exactly that delta — rebuild the Σ column from the panel rather than patching one row.
- If **Death Ray** drops after wave 250 in a *single* tier, the gate is the “any tier, wave 250” print and the stricter
  “each of the first 10 tiers” wording is wrong → close H047 with that read.

## Sources

- Tower Hub `wiki/system/icet-s-gem-and-card-priority-list` (last verified **2026-07-29**, a community list written for
  v0.16/0.17 — so read its *stage names* as historical and its *order* as the current advice) — the interleaved lab-slot /
  card-slot ladder **2 → 3 slots → 3 → 5 slots → 4 → 7 slots → 8 (conditional) → 5 → 10 slots**, the named card sets per
  stage, the Extra Orb → Orb Adjuster prerequisite (fill with Extra Defense meanwhile), the Death Ray gate as “wave 250 on
  each of the first 10 tiers”, the **lab speed ≥ 50** rush target, the “Total lab research time” event mission as the rush
  window, the Slow Aura note, and the big-pile reorder (lab slots 3 + 4 → 5 slots + lab 5 → resume at stage 6).
- Tower Hub `wiki/lab/labs-speed` (last verified **2026-11-01**) — the `Labs Speed` 99-level table: value `1 + 0.02 × level`
  (**2.00** at L50, **2.98** at L99) with the per-level bills (**L25 247 704 / 2 d 19 h 40 m**, **L50 2 258 611 /
  16 d 19 h 49 m**, **L99 19 355 790 / 97 d 10 h 37 m**) used to price the rush target above.
- Tower Hub `wiki/guide/gem-guide` (last verified 2026-07-29) — the priority ladder, the two paths, the slot-decision
  rule, the “buy 80 cards = 1 600 gems” event floor, the Epic-module-first advice, the weekly relic rotation, and the
  rush rules (gold-box completed labs improve the rate, longer labs are cheaper per unit time).
- Tower Hub `wiki/card/card-slots` (last verified 2026-07-30) — the per-slot ladder (50 / 100 / 200 / 300 / 400 / 500 /
  600 / 750 / 1 000 … 10 000 for slot 22, **58 400** total) and the 28-slot key cap.
- fandom `Currency/Gems` (raw wikitext) — lab slots 100/400/1 400/3 000, pulls 20, respecs 150/300/150, relics
  600/1 200, unmerge 20, reroll 5, tickets 10/20/30; game-vault `Guide:Gem_Guide` — the same two paths and the
  one-time/repeatable split (milestones, store, offer wall).
- `tools/gm_strings.txt` — `Purchases|Catalog`, `CatalogProduct`, `SalesCatalog`, `Sale`, `Transaction` (the offer
  catalogue), `WebstoreFreeGiftDefinition`/`WebstoreFreeGiftItem`, `TapjoyScript` + `TapjoyUnityInit` (the offer wall)
  and the gate `offerWallCreatorCodeGateTier1Wave` (the offer wall appears at a fixed **Tier 1 wave**, not a fixed
  account level).
- Cross-references: [T012](T012-card-deck-order.md) (cards per percentage point), [T010](T010-module-merge-chain.md)
  (module caps), [T017](T017-vault-keys-priority.md) (free slots + respec-to-0), [T019](T019-milestone-claim-engine.md)
  (the free half of this ladder), [T022](T022-free-currency-census-paid-ladder.md) (the daily gem budget).
