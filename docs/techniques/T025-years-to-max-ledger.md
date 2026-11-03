# T025 — The years-to-max ledger: what every sink costs in days of income

Rev: 3 (2026-11-03) — adds **§1.③**, the UW lab layer from [T006](T006-lab-queue-packing.md) Appendix A.2:
**2.4111 Q** coins and **18 165.95 d** of clock for 39 tables, of which **six lines carry 99.99 %** of the coins, and the
two-tier binding-currency law (cells bind the 33 cheap lines by **×5 203**, coins bind the six by **×1.56**).
Rev: 2 (2026-11-03) — Rev 1 put the printed bills on one time axis (`tools/years-ledger.ps1`). Rev 2 adds
**§1.①** (the stone bill closes at *line* level — 27 lines → nine page `Total`s → **244 542** — and its stage ladder,
which is 80 % front-loaded into one leg), **§1.②** (the **four-slot** shard fleet bill) and **§2.①** (what one calendar
year of free income buys, per league band), plus the label fix that the **3 570**-shard week comes from
`Daily Mission Shards` (**T4 W70**, 50 levels), not `Shatter Shards`. Arithmetic: `tools/ledger-year1.ps1`,
`tools/ledger-year1b.ps1`, `tools/ledger-year1c.ps1`.

**Value:** ★★★★ — the budget sheet: it turns “what should I buy next?” into a comparison of *weeks*, and it shows why the
gem side closes in under a year while the stone side is league-bound.
**Confidence:** **High** for the bills (each is a printed `Total`/ladder already re-added in its own doc) and **Medium**
for the day-counts (they divide by the ≈ 435-gem/≈ 1 000-cell income figures, which are uptime-dependent).
**Ease:** 0 taps to use, 2 taps per counter to refresh (tap the top-left counter for the per-minute read).
**Prerequisite:** none for the gem rows; the stone rows need promotion to **Silver+**, the shard rows **T2 W90** (Modules)
plus the **T4 W70** `Daily Mission Shards` gate for the 3 570 column (**T16 W40** `Shatter Shards` only multiplies
*shatter* yields, it does not move the mission figures).

## 1. The ledger

Income is the *free* flow of a sub-T11 account ([T022](T022-free-currency-census-paid-ladder.md) §1: **≈ 360 gems/day**
at 8 h uptime, **≈ 435/day** at 24 h; **≈ 1 000 Elite Cells/day** at T5).

| Currency | Printed income | Printed bill (Σ of the listed sinks) | Time to pay it off | Stop rule |
|---|---|---|---|---|
| **Gems** | 360–435/day | **framework** = lab slots **4 900** + card slots **58 400** + all 32 cards maxed **51 200** = **114 500** | **263 d** at 435/day · **318 d** at 360/day | finish the framework, then surplus → lab rushes and tickets ([T009](T009-gem-spend-order.md)) |
| **Stones** | 80 / 154 / 432 / 1 080 / 6 400 / 20 160 per week by league band | **452 282** = nine UW workshop lines **244 542** + the UW+ ledger **179 240** + all card masteries **28 500** | **108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 years** | the first **910** buy the triple UW sync (11.4 weeks even in the slowest band), then the **§1.①** stage ladder, then promote |
| **Module shards** | **1 470/week** at T10, **3 570/week** with `Daily Mission Shards` at L50 (**T4 W70**) | one slot to **L50 = 20 595** · to **L201 = 466 095** · to the **L300** cap = **3 136 095** | **14.0 / 5.8 weeks** (L50) · **6.1 / 2.5 y** (L201) · **41 / 16.9 y** (cap) | stop early slots at **L50**; only the equipped four go past it (**§1.②**) |
| **Guild tokens** | **185/week** = **150** (guild chest `Total`) + **35** (mission weekly boxes) | full Guild Store **1 225** tokens/season | **6.6 weeks** | the shop fits every 8-week season with **255** tokens spare ⇒ buy the bit line every season ([T016](T016-guild-tokens-bits.md)) |
| **Bits** | **185/week** (chests) ⇒ **1 480** + the store's **75** = **1 555/season** | `Ally` chip **14 470** bits | **9.3 seasons** | chips in the printed order ([T023](T023-guardian-economy.md)) |
| **Vault keys** | **16/week** (Mythic, bottom band) · **25** (Legend 1st) | whole Vault **≈ 73 000** keys | **87.7 y** · **56.2 y** | order matters more than volume ([T017](T017-vault-keys-priority.md)) |
| **Elite Cells** | ≈ **1 000/day** at T5 | the full **×1.5** boost on five slots = **1 800/day** | **1.8×** a day’s income, every day | boost **only** the slot that is running (360 cells/day) |
| **Coins — cheap legs** | tier-scaled; missions alone pay **318 M/week** at T10 | the four Utility lines L1→50 = **1.607 M**; the whole `Range` pair = **51 487 193** | days | always affordable ⇒ [T020](T020-workshop-coin-order.md) §2 order |
| **Coins — enhancement layer** | same | all 18 enhancements = **12.374 S** coins | **4.84 × 10⁷ years** at 700 T/day | effectively infinite ⇒ buy to the printed knees only |
| **Coins — module slots** | same | to L41 = **7.45 M** · to L300 = **18.07 s** | L41 is a two-week leg, the cap is another scale | **L41** is the first real wall (one extra sub-stat) |
| **Coins + Cells — the 39 UW lab tables** | 700 T coins/day · ≈ 1 000 cells/day | **2.4111 Q** coins, **or** **4.36 M** cells for the ×1.5 boost bill, **or** **18 165.95 d** of slot clock | **9.43 y** of coin income · **11.94 y** of cell income · **9.95 y** of five-slot clock (**2.67 y** with the ×3.725 stack) | six lines carry **99.99 %** of the coin bill ⇒ exhaust the **33** cheap lines first (**§1.③**) |
| **Medals** | **945**/event + **270**/week (boxes) + **10/day** (`Fetch`) | event-shop trade lines cost **40** medals each | ≈ **1 355** medals per event cycle | spend inside the live event ([T013](T013-event-medal-economy.md)) |

### 1.① The stone bill closes at *line* level, and it is front-loaded (Rev 2)

The 27 per-line `Total` cells of [T008](T008-uw-sync-with-stones.md) §3.① re-add to **244 542**; grouped by page they give
nine page sums that re-add a second time (each page holds exactly three lines, 27 ÷ 3 ✓):

| Page | UW | Σ of its three lines |
|---|---|---|
| 1 | Black Hole | 9 723 |
| 2 | Chain Lightning | 18 375 |
| 3 | Chrono Field | 9 946 |
| 4 | Death Wave | 29 391 |
| 5 | Golden Tower | 27 186 |
| 6 | Inner Land Mines | 23 032 |
| 7 | Poison Swamp | 34 226 |
| 8 | Smart Missiles | 39 177 |
| 9 | Spotlight | 53 486 |
| | **Σ nine** | **244 542** ✓ |

Because T008 also prints the running `Σ L1–5 / L1–10 / L1–15` columns (**11 461 / 25 045 / 49 194**), the 27-line bill can
be bought in four stages, and the stages are wildly uneven:

| Buy every one of the 27 lines to… | Σ stones | share | marginal stones | weeks @ 432/wk | weeks @ 1 080 |
|---|---|---|---|---|---|
| **L1–5** | **11 461** | 4.7 % | 11 461 | 26.5 | 10.6 |
| **L1–10** | **25 045** | 10.2 % | 13 584 | 58.0 | 23.2 |
| **L1–15** | **49 194** | 20.1 % | 24 149 | 113.9 | 45.6 |
| each line's printed cap | **244 542** | 100 % | **195 348** | 566.1 | 226.4 |

Read: **one leg — levels 16 → cap — carries 79.9 % of the whole workshop bill (195 348 = 17× the first five levels).**
So the stone side has the same knee law as the coin side: take every line to **L10** (25 045 stones) before pushing any
single line past **L15**; the last leg is a late-game (Platinum+) project.

### 1.② The four-slot shard fleet bill (Rev 2)

The equipped set is **four** module slots, so the fleet bill is `4 ×` the single-slot ladder of
[T010](T010-module-merge-chain.md) §1:

| All four slots to… | Σ shards | weeks @ 1 470 | weeks @ 3 570 |
|---|---|---|---|
| L50 | **82 380** | 56.0 | **23.1** |
| L101 | 94 380 | 64.2 | 26.4 |
| L141 | 366 380 | 249.2 | 102.6 |
| L161 | 654 380 | 445.2 | 183.3 |
| L201 | 1 864 380 | 1 268.3 | 522.2 |
| L300 (cap) | 12 544 380 | 8 533.6 (**164 y**) | 3 513.8 (**67.6 y**) |

Read: a year of mission shard income is **76 440** (lab at 0) or **185 640** (lab at L50) ⇒ the *unlabbed* account ends
its first year **5 940 shards short** of four slots at L50, while the labbed account gets there in **23.1 weeks** and has
**103 260** left — enough for **four more slots to L101**. That 42-week gap for 50 lab levels is why
`Daily Mission Shards` (T4 W70) outranks every other early stone/coin line: it is a **×2.43** income multiplier
(`1 470 → 3 570`), the largest single multiplier in §1.

### 1.③ The UW lab layer: two price tiers, and the currency that binds (Rev 3)

[T006](T006-lab-queue-packing.md) Appendix A.2 sums all **39** named UW lab tables: **2.4111 Q** coins and
**18 165.95 d** of base slot clock. Both are dominated by a handful of lines:

| Group | Σ coins | share | Σ clock | coin days @ 700 T/day | cell days @ 1 000/day | binds |
|---|---|---|---|---|---|---|
| the **33** cheap lines | **289.2 T** | 0.01 % | 8 956.7 d | **0.41** | 2 150 | **cells**, ×5 203 |
| the **six** q-scale lines | **2.4108 Q** | **99.99 %** | 9 209.2 d | 3 444 | 2 210 | **coins**, ×1.56 |

Inside the six: `Inner Land Mine - Chrono Jump` = **1 247.44 q** = **51.74 %** of the whole layer, which is **8.134×** the
four `L-IV` lines combined (**153.36 q**); then `Swamp Rend - Additional Enemies` **1.01 Q**. Two consequences for the
sub-T11 plan, arithmetic rather than taste:

1. **Coins are free below the q-scale.** All 33 non-q lines together are **0.41 days** of income, so their only real cost
   is slot-hours ⇒ boost them at ×1.5 (**2 150 days** of cell income for the whole tier, against 0.41 of coins).
2. **Above the knee coins bind and the clock is nearly a coincidence.** The six need **9.43 years** of coin income but
   only **6.05 years** of cell income, so boosting them changes little — let `Chrono Jump` (10 levels, **916.7 d**) run
   overnight and pay the coins.

## 2. The three ratios this ledger is for

1. **Gem side vs stone side = 263 days vs 8–109 years.** Everything on the *gem* side of the framework (slots, card
   levels, lab slots) is a sub-year plan; every *stone* sink is league-bound. So the first-year order is fixed by the
   ledger, not by taste.
2. **Promotion is the biggest single multiplier on the stone side:** the band ladder runs **80 → 20 160 stones/week** =
   **×252**, while the whole stone bill is one number (452 282). Reaching the **Gold** band (1 080/week) cuts the stone
   timeline to **8.05 years**, and Platinum to **1.36 y** ([T014](T014-tournament-tickets.md) §3.2).
3. **Shard L50 is 2.4× cheaper per week than L201 is per level.** Both are single-slot buys, but L50 costs 14 weeks of
   income (5.8 with the lab) and L201 costs 6.1 years (2.5 with the lab) ⇒ the *first* four equipped slots to L50 is a
   first-year project, everything past L201 is a late-game project ([T010](T010-module-merge-chain.md) §1).

### 2.① What one calendar year of free income buys (Rev 2)

The band-independent side, at 24 h uptime:

| Currency | 52-week income | After the framework / first target |
|---|---|---|
| **Gems** | `435 × 365 =` **158 775** | framework **114 500** ⇒ **+44 275** surplus (at 360/day: 131 400 ⇒ **+16 900**) = **2 213** banner pulls, or **5 903 h** of 1-hour gem lab rushes (`7.5 gems/h`, T006) |
| **Shards** | **76 440** / **185 640** | four slots to L50 (**82 380**) — short without the lab, met with **103 260** to spare with it |
| **Elite Cells** | `364 × 1 000 =` **364 000** | **1 011 h** of one-slot **×1.5** (**11.5 %** of the year) or **202 h** of all-five (**2.3 %**) ⇒ boost **one** slot at a time |
| **Guild tokens** | `185 × 52 =` **9 620** | a full shop is **1 225** tokens and the season is **8** weeks ⇒ **6.5** shops a year = **7 962** tokens needed, so the shop is *never* the limit (255 spare each season); **bits** run the same **185/week** ladder = **9 620/year** |

The band-dependent side (stones), with the 910-sync and the full **452 282** bill as the two rulers:

| stones/week | 52-week stones | ÷ 910 (syncs) | ÷ 452 282 | years to the full bill |
|---|---|---|---|---|
| 80 | 4 160 | 4.6 | 0.009 | 108.7 |
| 154 | 8 008 | 8.8 | 0.018 | 56.5 |
| 432 | 22 464 | 24.7 | 0.05 | 20.1 |
| 1 080 | 56 160 | 61.7 | 0.124 | 8.05 |
| 6 400 | 332 800 | 365.7 | 0.736 | 1.36 |
| 20 160 | 1 048 320 | 1 152 | **2.318** | 0.43 |

Read: **only the two fastest bands close the stone ledger inside one year** (Platinum covers 74 % of it, Champion 232 %);
every band below **Gold** should treat the §1.① **staged** ladder — 11 461 then 25 045 stones — as the year-one target,
not the 452 282 total.

## 3. Steps (UI only)

1. Tap the **top-left counter** (coins/cash/gem) once to switch it to the **per-minute** read — that is the only
   measurement the ledger needs.
2. **Missions** screen → claim the **35** daily-mission tiles for the week so the weekly boxes pay (gems **185**, stones
   **45**, medals **135**, tokens **35**).
3. Spend in ledger order: **gem framework** → **910-stone** UW sync (T008 §4) → **shards to L50** on the equipped four →
   **all 33 cheap UW lab lines** with their ×1.5 boost on (§1.③) → then whatever row of §1 has the smallest remaining
   payoff time.
4. Refresh the two income figures twice a year by reading the counters again (the ad cap is **60 claims/day** and resets
   at **00:00 UTC**, so the daily figures are date-bound, not uptime-bound).

## 4. Reproduction checklist

- [ ] **Gem framework:** `4 900 + 58 400 + 51 200 =` **114 500**, and `114 500 / 435 =` **263.2 days** (and
       `114 500 / 360 =` **318.1 days**).
- [ ] **Stone bill:** `244 542 + 179 240 + 28 500 =` **452 282**, and the six band divisions give
       **108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 years** (`452 282 / (stones/week) / 52`); the 910-stone sync alone is
       **11.4 / 5.9 / 2.1 / 0.84 / 0.14 / 0.05 weeks** — the same six cells the T014 table prints.
- [ ] **Shards:** `20 595 / 1 470 =` **14.0 weeks**, `20 595 / 3 570 =` **5.8 weeks**; `466 095 / 1 470 =` **317.1
       weeks = 6.1 y**; `3 136 095 / 1 470 =` **41 y**, `/ 3 570 =` **16.9 y**.
- [ ] **Keys:** `73 000 / 16 =` **4 562.5 weeks = 87.7 years**; at Legend-1st (`25/week`) **56.2 years**.
- [ ] **Bits:** `14 470 / 1 555 =` **9.31 seasons**.
- [ ] **Cells:** `5 × 15 cells/h × 24 =` **1 800/day** = **1.8×** the ≈ 1 000/day income; one slot = **360/day**.
- [ ] **Enhancement layer:** `12.374 S / 700 T per day =` **1.77 × 10¹⁰ days ≈ 4.84 × 10⁷ years**.
- [ ] **§1.① nine-page closure:** `9 723 + 18 375 + 9 946 + 29 391 + 27 186 + 23 032 + 34 226 + 39 177 + 53 486 =`
       **244 542**, and the stage ladder `11 461 + 13 584 + 24 149 + 195 348 =` **244 542** (margins are the printed
       `Σ L1–5 / L1–10 / L1–15` columns minus their predecessor).
- [ ] **§1.② fleet bill:** `4 × 20 595 =` **82 380**, `/ 1 470 =` **56.0 weeks**, `/ 3 570 =` **23.1 weeks**;
       `4 × 3 136 095 =` **12 544 380**, `/ 3 570 =` **3 513.8 weeks = 67.6 years**;
       `185 640 − 82 380 =` **103 260** ⇒ `floor(103 260 / 23 595) =` **4** further slots at L101.
- [ ] **§2.① year one:** `435 × 365 − 114 500 =` **44 275** (`360 × 365 − 114 500 =` **16 900**);
       `1 470 × 52 =` **76 440** and `3 570 × 52 =` **185 640**; `364 × 1 000 =` **364 000** cells = **1 011 h**
       one-slot (`/ 360`) and **202 h** five-slot (`/ 1 800`), i.e. **11.5 %** / **2.3 %** of 8 760 h;
       `20 160 × 52 =` **1 048 320 = 2.32 ×** the whole stone bill.
- [ ] **§2.① guild rows:** `185 × 52 =` **9 620** tokens and bits per year; `1 225 / 185 =` **6.6 weeks** per full shop.
- [ ] **§1.③ UW lab layer:** `4 × 38.34 =` **153.36 q** for the four `L-IV` lines, `1 247.44 / 153.36 =` **8.134**,
       `1 247.44 / 2 411.09 =` **51.74 %**; the two tiers re-add (`289.2 T + 2.4108 Q =` **2.4111 Q**) and
       `8 956.7 + 9 209.2 =` **18 165.9 d** ≈ the printed **18 165.95**; the clock conversions are
       `18 165.95 / 5 =` **3 633.19 d**, `/ 3.725 =` **975.4 d = 2.67 y**, and the cell bill is
       `18 165.95 × 24 × (1 − 1/1.5) × 30 =` **4.3598 M cells**.

## 5. Falsification

- If the **per-minute** counter × 1 440 disagrees with the §1 income figures by more than the uptime difference, the
  version changed a source ⇒ re-read the counters and rebuild the day-counts (the bills themselves rarely move).
- If `244 542` no longer equals the sum of the nine UW workshop lines, or the UW+ ledger is not **179 240**, the stone
  bill changed → rebuild **452 282** from the two tables, not from this doc (their own `Total` rows are authoritative).
- If the Vault shows a whole-Vault total other than **≈ 73 000** keys, the key rows were re-priced → the *order* in T017
  still holds, only the year figures move.
- If the **Enhancement** total is quoted as something other than **12.374 S**, the 18-row census changed ⇒ use the three
  per-track `Total` cells of T020 §6.4 (2.233 / 2.543 / 7.598 S) and re-add.
- If the nine page sums of §1.① no longer match the pages' own `Total` cells, the workshop was re-priced ⇒ rebuild from
  T008 §3.①'s 27-line column (those are the authoritative prints), not from §1.①.
- If the **Modules** screen shows a four-slot total that is not `4 ×` the per-slot number, the account runs a different
  number of equipped slots ⇒ the fleet bill is `slots ×` the single-slot ladder (T010 §1), everything else is unchanged.
- If the Champion band's 52-week stone figure no longer covers **452 282** about **2.3×**, a league reward table moved ⇒
  re-read the tournament panel's last row per league (T014 §3.2) and rebuild §2.① from those three numbers.
- If `Daily Mission Shards` at L50 does **not** print **3 570** shards/week at T10 (i.e. `42 × (35 + L)`), the mission
  shard law changed ⇒ use T004's own tier table, and re-derive the 23.1-week L50 fleet leg from it.
- **§1.③:** if the six q-scale lines' coin bill is no longer **99.99 %** of the layer, a q-scale line was re-priced ⇒
  rebuild from T006 Appendix A/A.1's per-line cells; the order (33 cheap → four `L-IV` → the two Q-scale singles) is the
  part that survives, only the year figures move. If a ×1.5 boost is not **30 cells per skipped hour**, the “binds”
  column flips where the two day-counts cross (the crossover is at ~**1.56** for the six lines).

## Sources

- Internal: [T009](T009-gem-spend-order.md) (gem framework bill), [T008](T008-uw-sync-with-stones.md)
  (**244 542** basic UW stats and its **§3.①** 27-line column with the `Σ L1–5 / L1–10 / L1–15` columns,
  **179 240** UW+), [T012](T012-card-deck-order.md) (**58 400** slot ladder, **51 200**
  cards, **27 500 / 28 500** mastery stones, the **2 063.56 T** `Shatter Shards` bill),
  [T014](T014-tournament-tickets.md) §3.2 (stones/week by band),
  [T010](T010-module-merge-chain.md) §1–2 (shard ladder + income), [T004](T004-mission-farming-low-tier.md) §1
  (weekly mission income at T10 and the shard law `42 × (base(n) + L)`, so **1 470 → 3 570** at lab L50; the lab gate is
  **T4 W70**), [T017](T017-vault-keys-priority.md) (73 000 keys, per-league years),
  [T023](T023-guardian-economy.md) §1 (1 555 bits/season, 14 470 for `Ally`),
  [T016](T016-guild-tokens-bits.md) Rev 3 (**185** tokens/week, the **1 225**-token full shop, **255** spare),
  [T022](T022-free-currency-census-paid-ladder.md) §1 (the free income census),
  [T006](T006-lab-queue-packing.md) (the boost table **15 cells/h** per slot at ×1.5 = **30 cells per skipped hour**, the
  **7.5 gems/h** gem rush, the ≈ 1 000 cells/day figure, and **Appendix A.2**'s 39-table totals **2.4111 Q / 18 165.95 d**),
  [T020](T020-workshop-coin-order.md) §6 (the enhancement bills),
  [T013](T013-event-medal-economy.md) (medals).
- Arithmetic: `tools/years-ledger.ps1` (§4 in order), `tools/ledger-year1.ps1` (§1.①/§1.② and the 52-week totals),
  `tools/ledger-year1b.ps1` (surpluses, leftovers, the cell-hour split), `tools/ledger-year1c.ps1` (the stage ladder in
  weeks per band), `tools/lab-summit2.ps1` + `tools/lab-summit-d.ps1` (§1.③, shared with T006 Appendix A.2).
