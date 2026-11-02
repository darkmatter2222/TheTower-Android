# T018 — Relic economy: the free percentage-point pipeline and the gem-vs-medal price rule

Rev: 1 (2026-11-01) · Currency: **Medals** and **Gems** (the only two you spend); the payout is **percentage points**
on Coins / Cash / Lab Speed
**Value:** ★★★★ — all **323** relics together are worth **+97 % coins, +79 % lab speed, +41 % cash bonus** (20 of
21 stat totals reproduced by re-summing the table). Roughly **85 %** of that arrives from *free* gates (event
medals, guild token spend, wave-4 500 milestones, top-4 league finishes), so the technique is mostly ordering.
**Confidence:** **Medium-High** — the 323-row table, the six unlock channels, the 200/500-medal and 600/1 200-gem
prices and the stacking rules are fandom raw wikitext (`Relics`); the totals and the §2 break-even are derived and
cross-checked. No on-device capture yet → **Unverified**.
**Ease:** 0 taps (passives apply themselves) + 1–2 shop buys per event · **Prerequisite:** the **Themes** menu lists
relics; the four pipelines need Events (T1 W70), a Guild (T3 W10), Tournaments (T1 W60) and tiers 1–10.

---

## 1. The four free pipelines (this is the income)

| Source | Gate | Typical size | Cadence |
|---|---|---|---|
| **Event (free)** | earn **350** then **700** medals in one event | 1 Rare (+2 %) + 1 Epic (+5 %) | 2 per 2-week event |
| **Event (Premium)** | **550** and **1 100** medals **+ the paid Event Boost** | 1 Rare + 1 Epic | 2 per event, paywalled |
| **Guild** | **spend 75** then **150 Tokens** in that season | 1 Rare + 1 Epic | 2 per 8-week season |
| **Milestone** | beat **wave 4 500** in tier *N* | T1–T5 +2 %, T6–T10 +5 %, T11+ +10 % | 1 per tier (24 exist) |
| **Tournament** | finish **top 4** in a league | +3 % … +10 % | 1 per league you crack |
| Anniversary / gift | 1 per year played; 1 gift | +2 % each | 1 per year |

Pool census (from the table): **170** free-event + **88** premium-event + 2 purchased = **260** event relics,
**24** milestone relics, **22** guild relics (2 × 11 seasons), **9** tournament badges, 8 anniversary/gift.

**The two pipeline synergies that make relics “free”:**
1. The **event** gates are already the T013 plan (missions cap at **945** medals ⇒ the 700 gate needs ~16 of 21
   missions), so no extra work — see [T013](T013-event-medal-economy.md) §1/step 4.
2. The **guild** gates count **tokens spent**, and the T016 shopping queue alone spends **110+** tokens
   (4 shard ladders at 5+10+15 = 30 each, plus gems 15/25/40) → **both guild relics per season come out of the
   queue you already run** ([T016](T016-guild-tokens-bits.md) §2). Verify the counter behaviour:
   [H020](../hypotheses/H020-guild-relic-token-counter.md).
3. Below **Tier 11** the milestone relics alone are worth **35 pp** (5 × 2 % + 5 × 5 %), which is more than any
   single other system per minute of tapping; tier-rushing ([T005](T005-tier-rush-then-farm.md)) is what unlocks them.

## 2. The gem-vs-medal price rule (for the rotating older-event relics)

Past-event relics come back on rerun: **Rare 200 medals or 600 gems**, **Epic 500 medals or 1 200 gems**, with up
to **4** older relics rotating in the **Event Shop** at a time.

Break-even = `gem price ÷ medal price` = **3.0** (Rare) and **2.4** (Epic) **gems per medal**. Compare that with the
gems-per-medal rate of the **next trade your medals would otherwise fund** (T013 §2):

| Next trade on a line | 1 | 2 | 3 | 4 | 5 | 6 | 7+ |
|---|---|---|---|---|---|---|---|
| medal price | 40 | 65 | 90 | 130 | 175 | 230 | 380 |
| gems/medal | **3.75** | 2.31 | 1.67 | 1.15 | 0.86 | 0.65 | 0.39 |
| cheaper way to pay the relic | **gems** | medals | medals | medals | medals | medals | medals |

**Rule:** at the **start** of an event (a line still at trade 1, 3.75 > 3.0) pay **gems**; **from trade 2 onward pay
medals.** In a normal event that means: take trade 1 of all three lines first, then every relic purchase is medals.

Percentage-point price for context (vs [T012](T012-card-deck-order.md)'s ladder):
Rare = 600 gems / 2 pp = **300 gems per point**; Epic = 1 200 / 5 pp = **240 gems per point** — i.e. relics sit
*above* the Coins card's 6th/7th level (80–128 gems/pt) in cost per point, so with a tight gem budget the order is
**card levels 1–5 → vault card slots (T017) → Epic relics → Rare relics**, and medals carry most relic purchases.

## 3. Stat priority (currency-first ranking)

Totals are the sum over the whole pool, so they also tell you where the pool is *dense*:

| Rank | Stat | Pool total | Relics | Why it is where it is |
|---|---|---|---|---|
| 1 | **Coins earned** | **+97 %** | 24 | every coin in every run; same additive line as the Coins card |
| 2 | **Lab speed** | **+79 %** | 20 | compounds [T006](T006-lab-queue-packing.md): faster research = more boost hours |
| 3 | **Cash bonus** | **+41 %** | 13 | the in-run engine (T001/T002) |
| 4 | Recovery amount | +22 % | — | longer runs = more waves = more coins |
| 5 | Free Attack / Defense / Utility | +16 / +12 / +10 % | 11 / 9 / 8 | cash you never spend |
| 6 | Bot range | +12 m | 8 | widens the Golden-Bot coin window (T015 §3) |
| 7 | Damage / health family | +144 / +136 % | 33 / — | push only (unlocks the next wave-4 500 relic) |
| — | flat-point stats (Crit Chance +16, Super Crit +6, Defense % +6, enemy level skips +2/+2) | | | sub-1-point per relic ⇒ last |

Because **same-stat relics stack additively**, taking three coin relics is exactly +2 +5 +10 = **+17 pp**; there is
no duplicate-waste penalty, which is why the queue can be stat-blind across sources but still has to be
stat-aware inside the 4-slot rotating shop (§5 step 3).

## 4. How to read the panel (stacking rules)

- Relics are **passive** — they apply automatically once unlocked; the Relics list in the **Themes** menu is a
  checklist, not an equipment screen (the binary only has `RelicsManager`/`Relics`/`RelicSlotButton` — a list UI).
- **Additive** within a stat, **multiplicative** against other bonus groups (cards, workshop, modules, Vault Power).
- Flat exceptions: **Critical Chance, Super Critical Chance, Defense Percent and the enemy Attack/Health level-skip
  relics add flat percentage points**; **Wall Rebuild** takes seconds off (−2 s); **Bot Range** adds metres (+1/+2 m).

## 5. Steps (UI only)

1. Home screen → **Themes** menu → **Relics** list. Tap a greyed entry: it prints the exact requirement string
   (e.g. “Milestone: Beat Wave 4500 in tier 7”, “Event: Earn 350 medals during the ‘Honey’”). Use it as the to-do list.
2. Inside an event, chase the **350 → 700** mission-medal gates first (T013 step 4); the two free relics are then
   granted without a purchase.
3. When the **Event Shop** shows the rotating older relics: keep the §2 price rule and the §3 stat order —
   **Coins → Lab Speed → Cash Bonus → Free Upgrades → Bot Range → the rest**; skip the flat-point relics.
4. Buy the **Event Boost** early in the event (it doubles medals **retroactively**, T013 §1) so the **550 / 1 100**
   premium gates open while the event is still running — see [H019](../hypotheses/H019-premium-relic-retroactivity.md)
   for the mid-event case.
5. Keep the guild queue running (T016 §5): the **75 / 150**-token gates complete themselves; both season relics then
   appear in the list as unlocked.
6. Push one tier at a time to **wave 4 500** (T005) — each tier grants one relic, and the T11+ ones are the +10 %
   Legendary tier.
7. Re-read the Relics list **after** each season/event: the counter text is the only place the gate progress shows.

## 6. Reproduction checklist

- [ ] Row 1 of the Relics list is **T:I Flux** — “Increase coins earned by 2 %”, “Milestone: Beat Wave 4500 in tier 1”.
- [ ] The event panel shows the two free relic gates at **350** and **700** mission medals (not total medals).
- [ ] The rotating shop prices an older Rare relic at **600 gems** or **200 medals**, and an Epic at **1 200 / 500**.
- [ ] Two coin relics in your list add: after unlocking the T1 (+2 %) and T7 (+5 %) relics, the coin bonus shows **+7 %**.
- [ ] Guild season shows two relic entries gated at **75** and **150** tokens spent (H020 checks what “spent” counts).
- [ ] A top-4 **Silver** finish grants the **Silver Badge** relic (+5 % coins) — the cheapest coin relic in the game
      (one tournament, no currency spent).

## 7. Falsification

- If a relic's bonus does **not** show up until you tap/equip it, the “passive, no equip” reading in §4 is wrong.
- If two coin relics multiply instead of adding (2 % then 5 % → 7.1 % instead of 7 %), §3's arithmetic must be
  redone multiplicatively (the wiki's totals are additive, so a mismatch also invalidates the 97 % figure).
- If the rotating shop's Rare relic is not **600 gems / 200 medals**, recompute §2's break-even as
  `gem price ÷ medal price` from the panel and re-apply the table.
- If the wiki's “Ultimate Damage 52 %” total differs from the re-summed **51 %**, one row is missing from the
  detailed table — record which relic the panel lists as #3xx so the totals can be trusted again.

## Sources

- fandom `Relics` (raw wikitext) — the 323-row relic table (Nr, name, rarity, effect, requirement), the six unlock
  channels, the 350/700 free and 550/1 100 premium event gates, the 200/500-medal and 600/1 200-gem rerun prices
  with “up to 4 older event relics … on a rotating schedule”, the guild 75/150-token gates, the milestone wave-4 500
  gates, the top-4 badge gates, the “Total Bonuses” summary (Lab 79 %, Coins 97 %, Cash 41 %, …), and the
  additive/multiplicative + flat-point rules.
- Independent cross-check: summing the detailed table's 323 rows gives Coins 97, Lab Speed 79, Cash 41, Tower
  Damage 144, Health 136, Crit Factor 120, Damage/Meter 93, Defense Absolute 76, Health Regen 39, Orb Speed 36,
  Knockback 33, Recovery 22, Attack Speed 18, Free Attack 16, Crit Chance 16, Thorns 14, Free Defense 12, Free
  Utility 10, Defense % 6, Super Crit Chance 6, Super Crit Mult 5 — **20 of 21 summary rows match**; Ultimate
  Damage 51 (summary 52).
- `tools/gm_strings.txt` — `Assets\Scripts\Relics.cs`, `RelicsManager.cs`, `RelicSlotButton.cs`,
  `Guilds\GuildStoreRelicEntry.cs` (guild relics are store entries ⇒ gated on *spent* tokens) and
  `ThemeManager|EventShopGemRelicWindow` (the gem-priced relic window in the Event Shop).
