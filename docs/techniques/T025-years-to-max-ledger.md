# T025 — The years-to-max ledger: what every sink costs in days of income

Rev: 1 (2026-11-03) — first issue. Every cell is either a value already printed by a `T###` doc or a sum those docs
re-added; the new part is putting them on one time axis with `tools/years-ledger.ps1`.

**Value:** ★★★★ — the budget sheet: it turns “what should I buy next?” into a comparison of *weeks*, and it shows why the
gem side closes in under a year while the stone side is league-bound.
**Confidence:** **High** for the bills (each is a printed `Total`/ladder already re-added in its own doc) and **Medium**
for the day-counts (they divide by the ≈ 435-gem/≈ 1 000-cell income figures, which are uptime-dependent).
**Ease:** 0 taps to use, 2 taps per counter to refresh (tap the top-left counter for the per-minute read).
**Prerequisite:** none for the gem rows; the stone rows need promotion to **Silver+**, the shard rows **T2 W90** (Modules)
and ideally the **T16 W40** `Shatter Shards` milestone.

## 1. The ledger

Income is the *free* flow of a sub-T11 account ([T022](T022-free-currency-census-paid-ladder.md) §1: **≈ 360 gems/day**
at 8 h uptime, **≈ 435/day** at 24 h; **≈ 1 000 Elite Cells/day** at T5).

| Currency | Printed income | Printed bill (Σ of the listed sinks) | Time to pay it off | Stop rule |
|---|---|---|---|---|
| **Gems** | 360–435/day | **framework** = lab slots **4 900** + card slots **58 400** + all 32 cards maxed **51 200** = **114 500** | **263 d** at 435/day · **318 d** at 360/day | finish the framework, then surplus → lab rushes and tickets ([T009](T009-gem-spend-order.md)) |
| **Stones** | 80 / 154 / 432 / 1 080 / 6 400 / 20 160 per week by league band | **452 282** = nine UW workshop lines **244 542** + the UW+ ledger **179 240** + all card masteries **28 500** | **108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 years** | the first **910** buy the triple UW sync (11.4 weeks even in the slowest band), then promote |
| **Module shards** | **1 470/week** at T10, **3 570/week** with `Shatter Shards` at L50 | one slot to **L50 = 20 595** · to **L201 = 466 095** · to the **L300** cap = **3 136 095** | **14.0 / 5.8 weeks** (L50) · **6.1 / 2.5 y** (L201) · **41 / 16.9 y** (cap) | stop early slots at **L50**; only the equipped four go past it |
| **Guild tokens** | **35/week** (weekly boxes) | the Guild Store’s bit line: **150 tokens → 75 bits** per season | **4.3 weeks** of boxes | buy the bit lines every season ([T016](T016-guild-tokens-bits.md)) |
| **Bits** | **1 555/season** ceiling | `Ally` chip **14 470** bits | **9.3 seasons** | chips in the printed order ([T023](T023-guardian-economy.md)) |
| **Vault keys** | **16/week** (Mythic, bottom band) · **25** (Legend 1st) | whole Vault **≈ 73 000** keys | **87.7 y** · **56.2 y** | order matters more than volume ([T017](T017-vault-keys-priority.md)) |
| **Elite Cells** | ≈ **1 000/day** at T5 | the full **×1.5** boost on five slots = **1 800/day** | **1.8×** a day’s income, every day | boost **only** the slot that is running (360 cells/day) |
| **Coins — cheap legs** | tier-scaled; missions alone pay **318 M/week** at T10 | the four Utility lines L1→50 = **1.607 M**; the whole `Range` pair = **51 487 193** | days | always affordable ⇒ [T020](T020-workshop-coin-order.md) §2 order |
| **Coins — enhancement layer** | same | all 18 enhancements = **12.374 S** coins | **4.84 × 10⁷ years** at 700 T/day | effectively infinite ⇒ buy to the printed knees only |
| **Coins — module slots** | same | to L41 = **7.45 M** · to L300 = **18.07 s** | L41 is a two-week leg, the cap is another scale | **L41** is the first real wall (one extra sub-stat) |
| **Medals** | **945**/event + **270**/week (boxes) + **10/day** (`Fetch`) | event-shop trade lines cost **40** medals each | ≈ **1 355** medals per event cycle | spend inside the live event ([T013](T013-event-medal-economy.md)) |

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

## 3. Steps (UI only)

1. Tap the **top-left counter** (coins/cash/gem) once to switch it to the **per-minute** read — that is the only
   measurement the ledger needs.
2. **Missions** screen → claim the **35** daily-mission tiles for the week so the weekly boxes pay (gems **185**, stones
   **45**, medals **135**, tokens **35**).
3. Spend in ledger order: **gem framework** → **910-stone** UW sync (T008 §4) → **shards to L50** on the equipped four →
   then whatever row of §1 has the smallest remaining payoff time.
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

## 5. Falsification

- If the **per-minute** counter × 1 440 disagrees with the §1 income figures by more than the uptime difference, the
  version changed a source ⇒ re-read the counters and rebuild the day-counts (the bills themselves rarely move).
- If `244 542` no longer equals the sum of the nine UW workshop lines, or the UW+ ledger is not **179 240**, the stone
  bill changed → rebuild **452 282** from the two tables, not from this doc (their own `Total` rows are authoritative).
- If the Vault shows a whole-Vault total other than **≈ 73 000** keys, the key rows were re-priced → the *order* in T017
  still holds, only the year figures move.
- If the **Enhancement** total is quoted as something other than **12.374 S**, the 18-row census changed ⇒ use the three
  per-track `Total` cells of T020 §6.4 (2.233 / 2.543 / 7.598 S) and re-add.

## Sources

- Internal: [T009](T009-gem-spend-order.md) (gem framework bill), [T008](T008-uw-sync-with-stones.md)
  (**244 542** basic UW stats, **179 240** UW+), [T012](T012-card-deck-order.md) (**58 400** slot ladder, **51 200**
  cards, **27 500 / 28 500** mastery stones), [T014](T014-tournament-tickets.md) §3.2 (stones/week by band),
  [T010](T010-module-merge-chain.md) §1–2 (shard ladder + income), [T004](T004-mission-farming-low-tier.md) §1
  (weekly mission income at T10), [T017](T017-vault-keys-priority.md) (73 000 keys, per-league years),
  [T023](T023-guardian-economy.md) §1 (1 555 bits/season, 14 470 for `Ally`),
  [T022](T022-free-currency-census-paid-ladder.md) §1 (the free income census),
  [T006](T006-lab-queue-packing.md) (Elite Cell boost prices and the ≈ 1 000 cells/day figure),
  [T020](T020-workshop-coin-order.md) §6 (the enhancement bills), [T013](T013-event-medal-economy.md) (medals).
- Arithmetic: `tools/years-ledger.ps1` (prints every division in §4 in order).
