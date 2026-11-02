# T010 — Module economy: level the *slot*, merge by recipe, reroll with few locks

Rev: 2 (2026-11-01) · Status: **Unverified** (wiki tables + derived arithmetic; no on-device capture yet)
**Value:** ★★★★ — slot levels and sub-stat count are multiplied by every stat on the module, and shard income is the binding constraint.
**Ease:** 1 tap per level (**the arrow** next to the locked sub-stat), 2–4 taps per merge.
**Prerequisite:** **Tier 2 Wave 90** (Modules unlocked; you get **10 free module tickets**, first Epic guaranteed inside those 10).

## 0. What Rev 1 got wrong (corrected)

1. **Levels belong to the slot, not to the module.** Each of the 4 module slots (and each assist slot) levels to **300** with that type's shards + coins; the equipped module uses the slot level **up to its rarity cap** (then it reads “Level Capped by Rarity”). Swapping modules loses nothing, and an **empty slot can be levelled ahead of time**.
2. **Common modules cannot be merged at all.** The merge ladder starts at Rare. Rare merges to **Legendary+**, a natural **Epic** merges to **Ancestral 5★**.
3. **Merged Rares never gain a Unique Effect** (only epics *pulled* from a banner do), and a merged Rare keeps its original name, so it can never match a banner epic — it is wildcard material only.

## 1. The three ladders you are spending into

### Rarity ladder (max level / max sub-stats / total Epic copies needed)

| Rarity | Rare | Rare+ | Epic | Epic+ | Legendary | Legendary+ | Mythic | Mythic+ | Ancestral | 1★ | 2★ | 3★ | 4★ | 5★ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Max level | 30 | 40 | 60 | 80 | 100 | 120 | 140 | 160 | 200 | 220 | 240 | 260 | 280 | 300 |
| Max sub-stats | 2 | 2 | 3 | 3 | 3 | 4 | 4 | 5 | 6 | 7 | 7 | 8 | 8 | 8 |
| Epic copies (total) | 0 | 0 | 1 | 2 | 2 | 4 | 4 | 4 | 8 | 10 | 12 | 14 | 16 | 18 |

Ancestral stars: each star needs an **Epic+ copy of the same module**, gives **+20 max level** and multiplies the main effect **×1.04 / ×1.08 / ×1.12 / ×1.16 / ×1.20**.

### Merge recipes (primary + materials → result)

| Needs | Result |
|---|---|
| Rare + **2 Rare (same name)** | Rare+ |
| Rare+ + **2 Rare+ (any of that type)** | Epic |
| Epic + **1 Epic (same)** | Epic+ |
| Epic+ + **2 Epic+ (any)** | Legendary |
| Legendary + **1 Epic+ (same)** | Legendary+ |
| Legendary+ + **1 Legendary+ (any)** | Mythic |
| Mythic + **1 Legendary+ (any)** | Mythic+ |
| Mythic+ + **2 Epic+ (same)** | Ancestral |
| Ancestral + **1 Epic+ (same)** | next star |

“Same” = the identical module, “any” = any module of the same **type** (Cannon / Armor / Generator / Core). The **first module you tap** is the primary. Merging is done from the Modules list with the **type + rarity filters** set — only legal materials are then selectable.

### Slot-level cost (per level, and cumulative at each milestone)

| Slot lvl | Shards/level | Cumulative shards | Cumulative coins | Unlocks |
|---|---|---|---|---|
| 1–10 | 7 | 70 | 100 K | first sub-stat(s) |
| 11–20 | 20 | 220 | 550 K | |
| 21–30 | 40 | 420 | 1.75 M | |
| 31–40 | 75 | 1 165 | 6.45 M | |
| **41** | 120 | **1 715** | **7.45 M** | +1 sub-stat |
| 51–100 | 180→700 | 20 595 | 129.45 M | |
| **101** | 1 000 | **23 595** | **16.3 B** | +1 sub-stat |
| **141** | 3 000 | **91 595** | **1.31 T** | +1 sub-stat |
| **161** | 5 000 | **163 595** | **20.81 q** | +1 sub-stat |
| **201** | 10 000 | **466 095** | **41.91 q** | +1 sub-stat |
| **241** | 20 000 | **1 071 095** | **14.46 Q** | +1 sub-stat |
| 300 | 49 500 | 3 136 095 | 18.07 s | cap |

Read: **shard cost grows ~linearly, coin cost explodes** — so at low tiers the *coins* are the limit (7.45 M buys you the first extra sub-stat) and shards are plentiful; after level 101 the reverse. Coin-side discounts: the `Labs Coin Discount` / Workshop-discount lines do **not** apply here, so slot levels compete directly with Workshop upgrades for coins.

## 2. Shard income, and the two gotchas

| Source | Amount |
|---|---|
| Shatter **Common** | 5 |
| Shatter **Rare** | 10 |
| Shatter **Rare+** | 30 |
| Shatter **Epic (merged)** | 90 |
| Shatter **natural Epic** | **1 000** — but only while still at Epic *and* only once you own a **5★ Ancestral** of that module |
| `Shatter Shards` lab | +20 % per level (max +100 %) |
| Also | daily missions, **fleet enemies**, the Guardian's **Fetch** chip, the Event shop, the Guild store |

- **Unmerge is shard-neutral**, which makes it a pure “reroll” purchase: the Unmerge Module lab
  (**Tier 8 Wave 20**) lets you undo a merge for **20 gems**, returning the lower-rarity module **with new
  sub-stats** plus the shards its consumed materials were worth (Epic → Rare+ + 60 = 2 × 30; Legendary →
  Epic+ + 360 = 2 × 180; Mythic+ → Mythic + 720). So 3 × Rare+ = 90 shards whether you shatter them directly
  or route them through merge→unmerge; the 20 gems is simply the price of a **sub-stat reroll** paid without
  spending reroll shards.
- Favourited / equipped / preset-saved modules **cannot** be shattered — unequip and un-favourite first.
- The inventory caps at **350 modules**; a full inventory is the usual reason “Auto Merge did nothing”.

## 3. Reroll shards: the scarcest of the four shard types

- Drop chance per **boss kill: 15 %**, amount **by tier** (T1 = 1, T2 = 3, T3 = 5, T4 = 8, **T5 = 12**, T6 = 15, T7 = 20, T8 = 25, T9 = 30, **T10 = 35**, **T11 = 40**, T12 = 45, … T24 = 105), plus **+1 per level** of the `Reroll Shards` lab.
- **After a drop, none can drop again for 5 waves** — so the ceiling is `bosses/hour × 15 %` bounded by one drop per 5 waves. Fleet enemies, elites and recovery packages also drop them.
- **Reroll cost by number of locked sub-stats: 10 / 40 / 160 / 500 / 1 000 / 1 600 / 2 250 / 3 000** for 0…7 locks. That is a 300× escalation ⇒ **lock at most 2–3 effects** and let the rest roll.
- **Auto Roll** (the `Auto Reroll` panel) is the cheap path: you define the acceptable effects and rarities and the game rolls until one matches — it costs the same per roll but stops at your target, so you never pay the lock premium for stats you merely tolerate.
- **Effect-ban labs** shrink the pool instead of paying for locks: 4 bans for Cannon, 4 for Armor, 3 for Generator, **7 for Core**. Research them before you start rerolling, exactly like the perk bans in [T011](T011-perk-engine-tuning.md).
- Sub-stat rarity odds per roll: Common 61.2 % / Rare 25 % / Epic 10 % / Legendary 2.5 % / Mythic 1.0 % / Ancestral 0.3 %. A module's own rarity is the **cap** for its sub-stats' rarity, so merging up is what makes Ancestral sub-stats possible at all.
- The Vault's `Module Reroll Discount` cuts reroll cost by up to 20 % (later game).

## 4. Steps (UI only)

1. **Modules** panel → **banner** (Standard Banner) → spend the **10 free tickets** first (tickets are always consumed before gems; the first Epic is guaranteed inside the 10). Then `x10` for 200 gems only if you have surplus after [T009]'s order.
2. Equip one module per slot, of the **type matching your build** (Cannon = attack, Armor = defense, Generator = utility, Core = ultimate weapons).
3. Level the **slot** with the **arrow** next to the next locked sub-stat — one tap takes it exactly to 41 / 101 / 141 / 161 / 201 / 241 instead of tapping past them.
   Do 41 on all four slots **before** pushing any slot past 101: the first extra sub-stat is the cheapest multiplier per shard in the system (1 715 shards cumulative).
4. Merge from the **Modules** list with the **type** and **rarity** filters set: tap the primary first, then the legal materials shown (module icon = same name, wildcard orb = any of that type). Use **Auto Merge** to collapse every complete set in one action.
5. Keep **one** copy of each natural Epic out of the shatter pool (it is your merge primary) and shatter the spare copies.
6. Reroll flow: set your **ban** list (from the ban labs) → set **Auto Roll** acceptance → lock only the 2–3 effects you really need → reroll. Stop at 3 locks; the 4th lock triples the price (500 → 1 000).
7. If a module's sub-stats are wrong after a merge, use **Unmerge** (needs the Tier 8 Wave 20 lab, 20 gems) to get the same module back with new sub-stats.
8. Use **Restore** on a mis-levelled slot: it costs nothing, sets the slot to 0 and returns **all shards and coins** (reroll shards are *not* returned, sub-stats are kept).
9. Save **presets** (2 from the Presets lab L4, +3 from the Vault = 5): a preset stores the 4 primary and the assist modules; presets cannot be switched during a run.

## 5. Reproduction checklist

- [ ] The first 10 pulls cost **0 gems** (tickets) and at least one Epic appears.
- [ ] A slot levelled to 41 shows one more unlocked sub-stat than at 40, and the cumulative shard spend is **≈ 1 715**.
- [ ] Swapping the equipped module leaves the slot's level unchanged.
- [ ] Shattering a spare Rare+ adds exactly **30** shards (and **60** with `Shatter Shards` at +100 %).
- [ ] A boss kill yields **12** reroll shards at Tier 5 (or 12 + lab levels), and none for the next 5 waves.
- [ ] The reroll price shown with 3 locks is **500** and with 4 locks **1 000**.
- [ ] **Restore** returns the shard and coin totals listed in the table above to the same slot's type.
- [ ] A merged Rare still shows its original name and no Unique Effect.

## 6. Falsification

- If a **Common** module can be merged, the rarity ladder above is stale → rebuild it from the in-game merge screen.
- If shattering a Rare+ returns something other than 30 × (1 + Shatter Shards bonus), note the value — every derived number in §2 must then be re-scaled.
- If **Restore** does not return the full shard/coin total (e.g. it drops the 10 % “sale” portion), record the difference; it changes whether pre-levelling an empty slot is safe.
- If the reroll price with locks is not the 10/40/160/500/1 000/1 600/2 250/3 000 ladder, the lock-cost curve changed — re-derive the “stop at N locks” rule from the panel.

## 7. Notes for the assist-module stage (Tier 19+)

Assist slots cost **1 000 stones** each (Epic-quality unique effect, 1 % main/sub); unique-effect upgrades 1 000 / 1 000 / 1 200 / 1 400 (**4 600** total), main-effect to 100 % = **16 038** stones, sub-stat efficiency to 70 % = **8 073** stones. Quantity sub-stats use **FLOOR**, not ROUND (a “+3 quantity” line needs 34 %, since 33 % × 3 = 0.99 → +0). Assist multipliers became **multiplicative** for all four types in v27.1. Hard caps (98 % Defense, 90 % Chrono slow, 150 s wall rebuild, 7 s shockwave, 37 s ILM cooldown) are **not** bypassed by assists. Primary-module-bonus labs gate at **Tier 23 Wave 500**.

## Sources

- fandom `Modules` (raw wikitext) — slot-level ownership of levels, rarity table (max level / sub-stats / Epic copies), shatter yields, 15 % boss drop + 5-wave cooldown, reroll-shard-per-tier ladder, lock-cost ladder, sub-stat rarity odds, ban-lab counts, presets, 350 inventory cap, assist stone tables, hard caps.
- fandom `Modules/Merging` (raw) — recipes, “Commons cannot be merged”, uniques only on pulled epics, unmerge refund table, Ancestral star rules.
- fandom `Modules/Cost` (raw) — shard/coin price per level with cumulative totals.
- game-vault `Guide:Gem_Guide` §Buying Modules; `tools/gm_strings.txt` (`ModuleManager`, `AutoMergeUI`, `ModuleUnmergeUI`, `ModuleRestoreAndMaxUI`, `Assist Module Info Panel`, `Shards Drop`, `Rarity Colors`, and `Auto Reroll` from `AutoRerollUI.cs`).
- fandom `Module Labs` — the shard-cost-reduction labs (Tier 10 W40 group, up to −30 % on shard costs, per `Module Research` category) on top of the per-level prices in §1.
