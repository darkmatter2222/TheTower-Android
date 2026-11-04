# T025 — The years-to-max ledger: what every sink costs in days of income

Rev: 9 (2026-11-03) - **§1.⑦, lump-sum income joined to the same `max()` model**: `leg = max(0, bill - lump) / income`,
so only the **gem** and **stone** legs can shorten (clock **499.5/134.1 d** and medals **2 450.4 d** have no lump source).
The state-C plan runs **349.6 -> 328.3 -> 273.9 -> 219.0 -> 161.5 d** as the free T1-12 track, the four Premium passes, the
whole free 24-tier ladder and the paid column are claimed - **188.1 d** in all, with the binding leg walking
**stones -> gems -> shards**; inside the sub-T12 window it is **21.3 d** (free) or **75.7 d** (passes). In ge the ladder is
**171 725 ge** (free 63 530 + paid 108 195) = **394.8 d** of gem income = **57.8 %** of one idle year
(**297 318 ge** of flow at the Copper bottom); the **12 300**-stone ladder is **1.39x** the 8 865 knee package but only
**2.7 %** (**485.1 d**) of the 452 282 census. `tools/lump-sum-ledger.ps1`.
Rev: 8 (2026-11-03) - **the medal leg is restated in weeks** (T006 Rev 43): the printed **607.5** is **per week**
(`1 215 ÷ 2`, T013 §2.4; T013 §1 itself says **“≈ 87/day”**), so the 445-tap sheet costs **2 450.4 d = 6.71 y** F2P and
**1 378.4 d = 3.78 y** on the boosted flow, not **350 d**. Consequences in this sheet: the plan table is split into the
**core set** (four counters, **499.5 → 392.3 → 349.6 d** as the stack and the shard lab arrive, and **263.2 d** from the
Copper 13-15 band up where **gems** bind) and the **full set** (every state bound by medals at **2 450.4 d**, band-
independent); the sensitivity table becomes a **two-regime** table (stones bind inside the core set: **+1/day = 13.3 d**,
the whole 97.5/wk flow = **86.4 d** because gems then bind; medals bind with the sheet on: **+10/50/100 per week =
39.7/186.3/346.3 d**, `Fetch` = free **253.2 d**, the **Event Boost** = **1 072.0 d**); and **§1.⑥** adds the **weekly**
form - a four-division self-service table (`114 500/3 045 · 8 865/177.5 · 82 380/1 470 · 212 660/607.5` then take the
`max`) with the per-band leg table, the whole-census week column (**4 638.8 … 22.3 weeks**) and the crossover set
(**25.3 / 158.2 / 384.2 / 8 070.6** stones per week). `tools/weekly-plan-table.ps1`, `tools/medal-unit-fix.ps1`.
Rev: 7 (2026-11-03) - **§1.⑤, the whole sheet on one scale**: every bill of §1 divided by its own income in **days**, so
the nine currencies become one ranked list, and the joint plan costs `max(legs)` — **499.5 d** with nothing bought,
**392.3 d** once the ×3.725 lab stack is up, **350.1 d** once `Daily Mission Shards` reaches L50, each time bound by a
*different* resource (clock ⇒ shards ⇒ medals). Includes the gem-equivalent cross-check (**435 ge/day** of gems vs
**253.57** of stones and **126** of shards ⇒ **shards are the scarcest currency of the beginner's three**), the
binding-resource sensitivity (**+1 stone/day saves 676.7 d; the whole 97.5/week box+trade flow saves 6 323.9 d = 17.3 y;
+1 gem/day saves nothing while stones bind**), and the 52-week vs 365-day convention that explains the **5 940**-shard gap.
`tools/five-resource-ledger.ps1`.
Rev: 6 (2026-11-03) — the `+ 15a` term is **pinned by the medal budget** (T013 §2.4): F2P **1 215** medals per event buy
**7** all-in stone trades ⇒ `a =` **3.5** and the totals read **177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** per
week = **49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43 years**; the boost (**2 160** medals) buys **10** trades ⇒ `a =` **5.0**,
the **200 / 274 / 552 / 1 200 / 6 520 / 20 280** column (`tools/medal-weekly-ledger.ps1`).
Rev: 5 (2026-11-03) — the **stone band ladder is no longer a list of six numbers**: it is
[T014](T014-tournament-tickets.md) §3.3's closed form `stones/week = 2·S·(S + ⌊G/10⌋ + 2)` (identity verified on
**70/70** band cells; the six rows re-add **6/6**), and the **total** week also carries the two printed flow terms
`+ 45` (weekly boxes) `+ 15·a` (event-shop trades, **a = 5** at 500 medals) ⇒
**200 / 274 / 552 / 1 200 / 6 520 / 20 280** per week and **43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43 years** to the
**452 282** bill (`tools/stones-band-closed-form.ps1`). The `+45 + 75` terms are **60 %** of the Copper-bottom week and
**0.59 %** at Champion 16–24, so below Gold the boxes and medal trades are the lever, above it the ticket count.
Rev: 4 (2026-11-03) — adds **§1.④**, the whole *priced* lab census from [T006](T006-lab-queue-packing.md) Appendix B:
**72 / 169** lines, **4.039 Q** coins, **104 035.3 d** of clock, **2.4968 × 10⁷** cells at ×1.5 — cells bind by **×4.33**,
the fourteen T19-band lines are **40.29 %** of the coins and **67.6 %** of the clock, the 19 lines below that band cost
**0.57 days** of income.
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
| **Coins + Cells — the whole priced lab census** | same two flows | **4.039 Q** coins / **104 035.3 d** clock / **2.4968 × 10⁷** cells at ×1.5, over **72** of the 169 lines | **15.80 y** of coins · **57.01 y** of five-slot clock (**15.3 y** stacked) · **68.4 y** of cells | **cells** bind by ×4.33; the 14 T19-band lines are 40 % of it (**§1.④**) |
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

### 1.④ The whole priced lab census, in one line (Rev 4)

[T006](T006-lab-queue-packing.md) Appendix B adds every layer the docs price end to end: **72** of the **169** census
lines, **4.039 Q** coins and **104 035.3 d** of clock ⇒ **15.80 years** of coin income (700 T/day), **57.01 years** of
five-slot queue time (**15.3 y** with the ×3.725 stack), or **24 968 days ≈ 68 years** of cell income if all of it runs at
×1.5 — **cells bind the lab system by ×4.33 over coins**. Inside that 4.039 Q: the **fourteen T19-band lines**
(`Vampire`/`Ray`/`Scatter` Health+Attack + the 8 assist labs, all `0.25 q × n`) are **40.29 %** of the coins and **67.6 %**
of the clock, while the 19 covered lines below that band cost **399.15 T = 0.57 days** of income. So the same two-tier
shape appears everywhere: *everything below the T19 band is a rounding error; the T19 band is where the ×1.5 boost pays
best (its cost and time grow proportionally); the UW q-scale lines are coin-bound.*

### 1.⑤ The whole sheet on one scale - five resources, the ge cross-check, and the binding-resource law (new, Rev 7)

Every row of §1 is `bill ÷ income`, which is already a **day** figure; putting all nine in one column makes the ledger a
ranked list, and combining them for one plan is the same `max()` model that prices the lab tree
([T006](T006-lab-queue-packing.md) §Rev 38) and the stone layer ([T008](T008-uw-sync-with-stones.md) §3.②):
**`cost_days = max(bill_r / income_r)` over the resources the plan consumes**. `tools/five-resource-ledger.ps1`.

| bill | units | income | **days** | years |
|---|---|---|---|---|
| Guild Store, full | 1 225 tokens | 26.429/day (185/wk) | **46.4** | 0.13 |
| gem framework (4 900 + 58 400 + 51 200) | 114 500 ge | 435/day | **263.2** | 0.72 |
| gem framework at the 8-h claim rate | 114 500 ge | 360/day | **318.1** | 0.87 |
| four module slots to L50, lab at L50 | 82 380 sh | 510/day (3 570/wk) | **161.5** | 0.44 |
| the bot sheet (445 taps), F2P flow | 212 660 md | 86.786/day (607.5/wk) | **2 450.4** | 6.71 |
| the same sheet, boosted flow | 212 660 md | 154.286/day (1 080/wk) | **1 378.4** | 3.78 |
| four module slots to L50, no lab | 82 380 sh | 210/day (1 470/wk) | **392.3** | 1.07 |
| four module slots to L101, lab at L50 | 94 380 sh | 510/day | **185.1** | 0.51 |
| four module slots to L201, lab at L50 | 1 864 380 sh | 510/day | **3 655.6** | 10.02 |
| `Ally` chip | 14 470 bits | 27.768/day (1 555/season) | **521.1** | 1.43 |
| the five cheap lab layers (`E D F G L`) | 2 497.5 slot-days | 5 slots | **499.5** | 1.37 |
| the same with the ×3.725 stack | 2 497.5 | 5 × 3.725 | **134.1** | 0.37 |
| the stone census, no tournaments | 452 282 st | 97.5/wk = 13.929/day | **32 471.5** | 88.96 |
| the stone census by band (6 rows) | 452 282 st | 177.5 … 20 257.5/wk | **17 836.5 … 156.3** | **48.87 … 0.43** |
| the Vault, whole | 73 000 keys | 2.286/day (16/wk) | **31 937.5** | 87.50 |
| the whole lab census, cells at ×1.5 | 2.4968 × 10⁷ cells | 1 000/day | **24 968.0** | 68.41 |
| the whole lab census, coins | 3 243.8393 Q | 700 T/day | **4 634 056.1** | 12 693.3 |
| the whole lab census, clock | 497 359.8 slot-days | 5 slots | **99 472.0** | 272.4 |

The stone rows re-derive T014 §3.3's printed year column (**49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43**) from the same
weekly incomes: the deltas are only the **52-week vs 365-day** convention (49.0 y = 2 548 weeks exactly).

**1. The gem-equivalent cross-check.** With the printed unit table (**1 stone = 10 ge, 1 shard = 0.6 ge**, the rates that
make the event shop's **150-identity** close: 150 × 1 = 15 × 10 = 250 × 0.6 = **150** ✓) each flow has a ge/day figure:
**gems 435 · stones 253.57 · shards 126** unlabbed (**306** with `Daily Mission Shards` at L50). Two uses: (a) the model is
**invariant** to the rates — the stone leg in ge is `4 522 820 ge ÷ 253.57 ge/day =` **17 836 d**, the same number as
`452 282 ÷ 25.357`, so the ge column is a check, not a second model; (b) the **scarcest currency of a beginner is shards**,
at 126 ge/day, then stones, then gems — the nominal counters (1 470 shards vs 435 gems) invert once each is priced.

**2. The binding-resource law: a core set that finishes inside a year, and a medal tail that does not** (Rev 8).
A plan costs its slowest leg, so only *that* leg's income matters (finding 4). The **core set** is the four counters that do
not involve medals - the gem framework, the **8 865**-stone knee package, four module slots to L50, the five cheap lab layers:

| core-set state | gems | stones | shards | clock | **joint cost** | bound by |
|---|---|---|---|---|---|---|
| nothing boosted | 263.2 | 349.6 | 392.3 | **499.5** | **499.5 d = 1.37 y** | clock |
| ×3.725 lab stack up | 263.2 | 349.6 | **392.3** | 134.1 | **392.3 d = 1.07 y** | shards |
| + `Daily Mission Shards` L50, Copper bottom | 263.2 | **349.6** | 161.5 | 134.1 | **349.6 d = 0.96 y** | stones |
| + the same at Copper 13-15 or better | **263.2** | 246.4 … 2.8 | 161.5 | 134.1 | **263.2 d = 0.72 y** | gems |

so **the core set is complete inside one calendar year** once the stack and the shard lab are in, and from the
**Copper 13-15** band up it is a **263-day** gem-bound plan. Adding the 445-tap bot sheet changes the picture completely,
because the medal flow is 7× slower than the other four looked - it is **607.5 per week**, not per day:

| set (+ the bot sheet) | gems | stones | shards | medals | clock | **joint cost** | bound by |
|---|---|---|---|---|---|---|---|
| F2P flow, nothing boosted | 263.2 | 349.6 | 392.3 | **2 450.4** | 499.5 | **2 450.4 d = 6.71 y** | medals |
| F2P flow, stack + shard lab | 263.2 | 349.6 | 161.5 | **2 450.4** | 134.1 | **2 450.4 d = 6.71 y** | medals |
| boosted flow (1 080/wk), full boosts | 263.2 | 349.6 | 161.5 | **1 378.4** | 134.1 | **1 378.4 d = 3.78 y** | medals |
| both `Fetch` passes on (677.5/wk) | 263.2 | 349.6 | 161.5 | **2 197.2** | 134.1 | **2 197.2 d = 6.02 y** | medals |
| boosted + `Fetch` (1 150/wk) | 263.2 | 349.6 | 161.5 | **1 294.5** | 134.1 | **1 294.5 d = 3.55 y** | medals |

Three consequences. (i) The **sheet leg is band-independent** (`212 660/607.5 =` **350.06 weeks** in every league, because
neither the medal total nor the sheet total depends on the tournament band), so the 6.71-year figure is the same for every
player and only the *stone* leg moves with the band. (ii) **The two flows are parallel, not serial**: lab clock and medals
are different counters, so the core set and the sheet run at the same time and the combined plan costs
`max(349.6 , 2 450.4) =` **2 450.4 d**, not their sum **2 800.0**. (iii) The sheet is therefore the **calendar** of the first
six-to-seven years and the core set is the **first-year** work inside it - which is exactly how
[T015](T015-bot-economy.md) §3.4 presents the 445 taps.

**3. Nothing after the core set is bound by gems.** At 435/day the entire gem framework is **263 d** - the shortest leg of
the table once the player is at Copper 13-15 or better; the ledger's own §2 ratio "**263 days vs 8-109 years**" is the same
fact seen per currency, and the whole-census stone rows (17 836 d at the Copper bottom) dominate everything else.

**4. Sensitivity - only the binding leg's income pays, and which leg binds depends on the set:**

| extra income | core set (stones bind, 349.6 d) | full set (medals bind, 2 450.4 d) |
|---|---|---|
| +1 stone/day (+7/wk) | **336.3 d (saves 13.3 d)** | 2 450.4 d (**0 d**) |
| +5 stones/day (+35/wk) | 292.1 d (saves 57.5 d) | 2 450.4 d (0 d) |
| +13.929/day (the whole 97.5/wk box + trade flow) | **225.6 d** on that leg, so the plan lands on **263.2 d** (saves **86.4 d**) - gems now bind | 2 450.4 d (0 d) |
| +10 / +50 / +100 medals per week | 349.6 d (**0 d**) | **2 410.7 / 2 264.1 / 2 104.1 d** (39.7 / 186.3 / 346.3 d) |
| +1 of any other non-binding counter | 0 d | 0 d |

Read the two columns as the two regimes: while you are still inside the core set, **stones** are the lever
(124 d for the whole free box+trade flow); the moment the bot sheet is on your list, the **medal** flow is the lever and the
stone and shard income are worth nothing extra - the two `Fetch` passes (**+70/wk**, free: 10 medals/day of the Guardian
ability, capped at **140** per event) are the cheapest 253 days in
the game, and the *next* cheapest is the **Event Boost** (**+472.5/wk**: `1 890 + 270` instead of `945 + 270` per event),
worth `2 450.4 − 1 378.4 =` **1 072.0 d** of the sheet leg. On the **whole-census** stone bill the same law gives the
larger numbers of Rev 7: `452 282/(25.3571+1) =` **17 159.8 d** (**676.7 d** saved), `/(25.3571+5) =` **14 898.7**
(**2 937.8**), `/(25.3571+13.9286) =` **11 512.6** (**6 323.9 d = 17.33 y**), because there the stone leg is 17 836 d and
binds against everything.

**5. Two convention skews.** (a) The **5 940**-shard first-year shortfall is the 52-week print (`1 470 × 52 = 76 440`);
on a 365-day year it is 76 650, short by **5 730** - same conclusion, 1.4 % apart. (b) The Vault's **87.7 y** in §1 is
31 937.5 d = **87.50 y** on a 365-day year; the difference is the 52-week convention again (4 562.5 weeks). The same
convention explains the **0.3-day** gap between the weekly table's `49.9 × 7 = 349.3` and the day table's **349.6**.

### 1.⑥ The same sheet in **weeks** - a four-division self-service form (new, Rev 8)

Every leg in per-**week** units, so a player reads four counters off the UI and does four divisions. Fixed flows
(band-independent): gems **3 045/wk** (24-h claims) or 2 520 at the 8-h rate · shards **1 470** → **3 570** with
`Daily Mission Shards` at L50 · medals **607.5** (F2P) / **1 080** (boosted) · clock **35 slot-days/wk** → **130.375** with
the ×3.725 stack · tokens **185** · bits **194.375** · keys **16**. Band-dependent: stones **97.5 / 177.5 / 251.5 / 529.5 /
1 177.5 / 6 497.5 / 20 257.5** per week (`tools/weekly-plan-table.ps1`).

| band | stones leg | shards leg (no lab / lab) | medals leg | gems leg | clock leg (raw / stack) | **core set** | bound by |
|---|---|---|---|---|---|---|---|
| no tournaments | **90.9** | 56.0 / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **90.9 wks** | stones |
| Copper 23-30 | 49.9 | **56.0** / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **71.4 → 56.0 → 49.9 wks** | clock → shards → stones |
| Copper 13-15 | 35.2 | **56.0** / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **71.4 → 56.0 → 37.6** | clock → shards → gems |
| Silver 23-30 | 16.7 | **56.0** / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **71.4 → 56.0 → 37.6** | clock → shards → gems |
| Gold 23-30 | 7.5 | **56.0** / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **71.4 → 56.0 → 37.6** | clock → shards → gems |
| Platinum 16-24 | 1.4 | **56.0** / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **71.4 → 56.0 → 37.6** | clock → shards → gems |
| Champion 16-24 | 0.4 | **56.0** / 23.1 | 350.1 | 37.6 | 71.4 / 19.2 | **71.4 → 56.0 → 37.6** | clock → shards → gems |

(the three numbers per band are the three states of the table in finding 2: nothing boosted → with the stack → also with
the shard lab; the whole-census stone bill in weeks is **4 638.8 / 2 548.1 / 1 798.3 / 854.2 / 384.1 / 69.6 / 22.3**.)

**How to use it with your own counters** - four divisions and one `max`, at the Copper bottom worked out:

```
read    : gems 3 045 ; stones 177.5 ; shards 1 470 ; medals 607.5   (per week, off the UI)
divide  : 114 500/3 045 = 37.6 ; 8 865/177.5 = 49.9 ; 82 380/1 470 = 56.0 ; 212 660/607.5 = 350.06
max     : 350.06 weeks                                          <- the plan's length
```

If your own numbers print the same four quotients, the sheet is the binding leg and nothing else can be finished "early" -
which is the practical answer to "what do I do this week": **buy medals into the sheet, and run the lab queue in the gaps**.

**Crossovers** (where a leg stops binding, stones/week): the stone knee package overtakes the sheet below
`8 865/350.06 =` **25.3** st/wk - below every band, so the sheet always binds first; it overtakes the shard lab leg below
**384.2** (lab) or **158.2** (no lab); and the whole **452 282**-stone census overtakes the four-slot fleet below
**8 070.6** st/wk, which is T013 §2.5's **8 071** re-derived independently.

### 1.⑦ Lump-sum income in the same model - the milestone ladder (new, Rev 9)

The five legs so far are **flows**; the milestone ladder ([T019](T019-milestone-claim-engine.md) §2.①/§2.②) is a set of
**claim-once** cells. A lump enters the same model one way: `leg = max(0, bill − lump) ÷ income`, so it can only shorten the
legs whose counter it pays in - **gems and stones**. The clock leg (**499.5 / 134.1 d**) and the medal leg
(**2 450.4 d**) have no lump source at all, which is why the plan length in states A and B does not move. `tools/lump-sum-ledger.ps1`.

| claimed (Copper bottom, state C) | gem leg | stone leg | shards | clock | **plan** | bound by |
|---|---|---|---|---|---|---|
| nothing | 263.2 | 349.6 | 161.5 | 134.1 | **349.6 d** | stones |
| free track T1–12 (4 735 ge + 540 st) | 252.3 | 328.3 | 161.5 | 134.1 | **328.3 d** | stones |
| + the four Premium passes (7 850 ge + 1 380 st) | 234.3 | 273.9 | 161.5 | 134.1 | **273.9 d** | stones |
| whole free 24-tier ladder (19 230 ge + 4 430 st) | 219.0 | 174.9 | 161.5 | 134.1 | **219.0 d** | gems |
| whole ladder, both tracks (48 725 ge + 12 300 st) | 151.2 | 0 | 161.5 | 134.1 | **161.5 d** | shards |

**1.** Claiming everything moves the state-C plan by **188.1 d** and hands the binding leg from **stones** to **gems** to
**shards** on the way; inside the sub-T12 window alone it is **21.3 d** (free) or **75.7 d** (with the passes).
**2.** In ge the whole ladder is **171 725 ge** (free **63 530** + paid **108 195**) = **394.8 days** of gem income, i.e.
**57.8 %** of one idle year (**297 318 ge** of gem + stone + shard flow at the Copper bottom) - the claim-once sources are a
real but bounded third of a first-year income, not a separate economy.
**3.** The stone lumps are **1.39×** the 8 865-stone knee package yet only **2.7 %** of the 452 282 census (**485.1 d** of
17 836.5): the knee is a lump problem, the census is a flow problem.

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

| stones/week | 52-week stones | ÷ 910 (syncs) | ÷ 452 282 | years to the full bill | **total/week (Rev 5)** | **years (total)** |
|---|---|---|---|---|---|---|
| 80 | 4 160 | 4.6 | 0.009 | 108.7 | **200** | **43.5** |
| 154 | 8 008 | 8.8 | 0.018 | 56.5 | **274** | **31.7** |
| 432 | 22 464 | 24.7 | 0.05 | 20.1 | **552** | **15.8** |
| 1 080 | 56 160 | 61.7 | 0.124 | 8.05 | **1 200** | **7.25** |
| 6 400 | 332 800 | 365.7 | 0.736 | 1.36 | **6 520** | **1.33** |
| 20 160 | 1 048 320 | 1 152 | **2.318** | 0.43 | **20 280** | **0.43** |

**Rev 5:** the first column is [T014](T014-tournament-tickets.md) §3.3's `2·t·S` (tickets only) and the new pair adds the
two printed flow terms — `+ 45` from the weekly boxes (from **T1 W60**) and `+ 15 × 5 = 75` from the Event Shop's stone
line at 500 medals — so the ledger has a *tickets-only* and a *total* reading of the same six bands; the closed form
`2·S·(S + ⌊G/10⌋ + 2)` re-adds all six (**6/6**, identity on **70/70** band cells, `tools/stones-band-closed-form.ps1`).

**Rev 6:** the `+ 75` is the **boosted** reading. `a` follows the medal budget ([T013](T013-event-medal-economy.md) §2.4):
**1 215** medals per F2P event (`945 + 2 × 135`) buys **7** all-in stone trades = **105** stones ⇒ `a =` **3.5**, so the F2P
weeks are **177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** and the years **49.0 / 34.6 / 16.4 / 7.39 / 1.34 /
0.43**; with the Event Boost **2 160** medals buy **10** trades = **150** stones ⇒ `a =` **5.0**, the printed column. The
level (three-line) plan buys more trades overall but only 4–6 land on the stone line (`a = 2.5–3.0`).

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
- [ ] **Rev 5, band closed form:** for each of the six bands, `2·S·(S + ⌊G/10⌋ + 2)` reproduces the first column —
       `10/5 → 2·5·8 = 80`, `20/7 → 2·7·11 = 154`, `40/12 → 2·12·18 = 432`, `50/20 → 2·20·27 = 1 080`,
       `125/50 → 2·50·64 = 6 400`, `200/90 → 2·90·112 = 20 160` (70/70 band cells in
       [T014](T014-tournament-tickets.md) §3.3's grid).
- [ ] **Rev 5, total week:** claim all seven boxes (**45** stones, needs **T1 W60**) and **5** stone trades (**75**), then
       add them to the tickets: at the Copper bottom band the week should land on ≈ **200** stones
       (`452 282 / 200 / 52 =` **43.5 y**), and the two added terms should be **60 %** of that total.
- [ ] **Rev 6, `a`:** without the pass the same tally gives **7** stone trades (**105** stones = `52.5/week`, `a = 3.5`) ⇒
       the Copper-bottom week lands on **177.5** (`452 282 / 177.5 / 52 =` **49.0 y**); with the pass **10** trades
       (**150** stones, `a = 5.0`). Count the purchases in the **Event Shop** panel.
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
- [ ] **§1.④ whole census:** the q-scale layer sums `2 411.1 + 0.383113 + 697.5 + 930 + 0.0144301 =` **4 039 q =**
       **4.039 Q** (the M/B rows are below the printed precision); `104 035.3 / 5 / 365 =` **57.01 years**,
       `/ 3.725 =` **15.3 years**; the cell bill is `104 035.3 × 24 × (1 − 1/1.5) × 30 =` **2.4968 × 10⁷**;
       `14 × 116.25 =` **1 627.5 q** and `1 627.5 / 4 039 =` **40.29 %**; `72 / 169 =` **42.6 %** coverage.
- [ ] **§1.⑤ the ge cross-check by hand:** `4 522 820 ge / 253.57 ge/day =` **17 836** and `452 282 / 25.357 =`
      **17 836** - the two readings of the stone leg agree to four digits, which is the invariance claim.
- [ ] **§1.⑤ the four first-year legs:** `114 500 / 435 =` **263.2** ; `8 865 / 25.357 =` **349.6** ;
      `82 380 / 210 =` **392.3** and `/ 510 =` **161.5** ; `212 660/86.786 =` **2 450.4 d = 350.06 wks** ;
      `2 497.5 / 5 =` **499.5** and `/ 3.725 =` **134.1**. The three core-set maxima are **499.5 / 392.3 / 349.6 d** and
      every full-set maximum is the medal leg, **2 450.4 d**.
- [ ] **§1.⑤ the medal unit (Rev 8):** three independent closures agree — `212 660/1 215 =` **175.03 events** `× 2 =`
      **350.06 weeks**, `350.06 × 7 =` **2 450.4 d**, and T013 §1's own **“≈ 87/day”** for the 1 215 total. If a fourth
      print (the in-game `Events` counter) disagrees, re-derive from the event total.
- [ ] **§1.⑥ the weekly form, worked at the Copper bottom:** `114 500/3 045 =` **37.6** ; `8 865/177.5 =` **49.9** ;
      `82 380/1 470 =` **56.0** and `/ 3 570 =` **23.1** ; `212 660/607.5 =` **350.06** ; the four legs' maximum is
      **350.06 weeks** (the sheet), and the core set's maximum is **49.9 weeks** in the fully-boosted state.
      The whole-census stone bill is `452 282/177.5 =` **2 548.1 weeks** at the Copper bottom.
- [ ] **§1.⑤ sensitivity:** `452 282 / 26.3571 =` **17 159.8** vs `/ 25.3571 =` **17 836.5** - so **+1 stone/day
      saves 676.7 d**; `452 282 / 39.2857 =` **11 512.6**, so the 97.5/week flow saves **6 323.9 d**.
- [ ] **§1.⑤ the convention check:** `1 470 x 52 =` **76 440** (short of 82 380 by **5 940**) while `210 x 365 =`
      **76 650** (short by **5 730**); `3 570 x 52 =` **185 640**, a surplus of **103 260** over the four-slot bill.

- [ ] **§1.⑦ the lump rows by hand:** with the passes on, the gem leg is `(114 500 − 12 585)/435 =` **234.3** and the knee
      leg `(8 865 − 1 920)/25.3571 =` **273.9** ; with the whole ladder, `(114 500 − 48 725)/435 =` **151.2** and the knee
      leg is **0** because `12 300 > 8 865`, which leaves the shard fleet at **161.5 d** as the binding leg.
- [ ] **§1.⑦ the ge ladder:** `63 530 + 108 195 =` **171 725 ge** and `/435 =` **394.77 d** ; one year of flow is
      `435 × 365 + 25.3571 × 10 × 365 + 210 × 0.6 × 365 =` **158 775 + 92 553.4 + 45 990 = 297 318.4 ge**, and
      `171 725/297 318.4 =` **57.8 %** ✓.

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
- **Rev 5:** if a band's own cells give `2·S·(S + ⌊G/10⌋ + 2)` different from the first column, the panel's pair is from
  another league's table (they are near-duplicates) ⇒ re-read the header and re-run
  `tools/stones-band-closed-form.ps1`; if the bracket pays **once** instead of `t × S` (**H014**), use the total-week
  column minus the ticket term (**130 / 134 / 144 / 160 / 220 / 300**) and the years become
  `452 282 / 130 / 52 =` **66.9 y** at the Copper bottom, in which case promotion (not the ticket count) is the only lever.
- **Rev 5:** if a stone trade pays other than **15** (or the weekly boxes other than **10 / 15 / 20 = 45**), the two added
  terms change but the ticket grid does not — re-scale `+ 15a` and re-add.
- **Rev 6:** if the stone line's ladder is not **40/65/90/130/175/230/380**, re-solve the trade count from the panel
  (`Σ c_k ≤` the medal tally) — `a` moves with it, the ticket grid does not; a tally far below **1 215** medals means
  missions or boxes were left unclaimed ([T013](T013-event-medal-economy.md) §2.4's checklist).
- If `Daily Mission Shards` at L50 does **not** print **3 570** shards/week at T10 (i.e. `42 × (35 + L)`), the mission
  shard law changed ⇒ use T004's own tier table, and re-derive the 23.1-week L50 fleet leg from it.
- **§1.③:** if the six q-scale lines' coin bill is no longer **99.99 %** of the layer, a q-scale line was re-priced ⇒
  rebuild from T006 Appendix A/A.1's per-line cells; the order (33 cheap → four `L-IV` → the two Q-scale singles) is the
  part that survives, only the year figures move. If a ×1.5 boost is not **30 cells per skipped hour**, the “binds”
  column flips where the two day-counts cross (the crossover is at ~**1.56** for the six lines).
- **§1.④ whole census:** if the coverage is no longer **72 / 169**, a category gained a printed `Total` (or a device read
  filled a gap) ⇒ rebuild the sum from T006 Appendix B’s per-layer column; the three ratios (**40.29 %** / **67.6 %** /
  **×4.33**) are quotients of that same table, so they move with it while the *ordering* of the layers does not.
- **§1.⑤:** if your own weekly stone income is not **177.5**, only the stone legs move (each by `177.5 ÷ yours`), and the
  plan's **binding leg can change**: shards stop binding and stones take over at
  `452 282 ÷ 392.3 =` **1 152.9 st/day = 8 070/week**, the same crossover T013 §2.5 prints from the other side (**8 071**).
- **§1.⑤:** if the 150-identity fails (one event purchase is not **150 gems / 15 stones / 250 shards**), the ge column is
  void - the day table is not, because it divides each bill by its own counter and never uses the exchange rates.
- **§1.⑤:** if the bot sheet is not **445 taps / 212 660 medals**, the plan's maximum moves off **2 450.4 d**; the medal
  leg stays the binding one while `212 660 ÷ 86.786` is the largest of the five legs (it is, by **1 950.9 d** over the raw
  clock leg, so the binding is robust - the sheet hands the binding back to the **clock** only above
  `1 488 620 ÷ 499.5 =` **2 980.2** medals/week, i.e. beyond the boosted-plus-`Fetch` flow of 1 150).
- **§1.⑤ (the unit, Rev 8):** if the in-game `Events` counter shows a **per-day** medal flow other than **86.786**, the
  medal rows scale by the ratio (`×7` if the print is the two-week total read as daily) and the whole picture inverts back
  to the Rev 7 shape; three closures must agree - `212 660/1 215 × 2 = 350.06` weeks, `350.06 × 7 = 2 450.4` d, and
  T013 §1's **≈ 87/day**. If your event is a **1-week** bracket, halve them again (**175.0 weeks**).
- **§1.⑦:** a lump-sum can only move the **gem** and **stone** legs. If your own `Milestones` badge has claimed other than
  **4 735** free gems / **540** stones (T1–12) or other than the printed ladder totals, recompute those two legs alone -
  `max(0, bill − lump)/income` - and leave the clock and medal legs at **499.5 / 134.1 / 2 450.4 d**. If a lump total
  exceeds its bill the leg becomes **0** and the binding hands to the next leg (the knee package does exactly this at
  **12 300 > 8 865** stones), so a plan can get *shorter* than the stone leg without the stone leg disappearing.
- **§1.⑥:** if your four weekly counters give quotients other than **37.6 / 49.9 / 56.0 / 350.06**, re-take the `max` —
  the ordering of the four quotients is all that decides the binding leg, and the core-set maximum is only
  **49.9 weeks** in the boosted state, so the sheet hands the binding to the other counters only once the flow passes
  `1 488 620 ÷ 499.5 =` **2 980.2** medals/week - nine times the F2P print, i.e. never in practice.
- **§1.⑤:** if a weekly counter differs from the printed one (a guild chest that pays other than **185** bits, a bracket
  paying other than **16** keys), recompute only that row; the **max()** logic is unaffected.

## Sources

- `tools/lump-sum-ledger.ps1` (new, Rev 9, shared with T019 Rev 5) - the eight 3-tier blocks in ge and days of gem income,
  the ladder's log-space shares (**34.0 %** at T13, **92.9 %** through T15, **7.1 %** for T16–24), the T1–T12 window
  (**10 135 / 31 785 ge**), the one-year flow (**297 318.4 ge**) and the five-row lump-adjusted `max()` plan table
  (**349.6 / 328.3 / 273.9 / 219.0 / 161.5 d**).
- `tools/weekly-plan-table.ps1` (new, Rev 8) - the **weekly** form of §1.⑤: the fixed per-week flows (**3 045** gems at 24 h
  claims, **607.5/1 080/677.5/1 150** medals, **1 470 → 3 570** shards, **35 → 130.375** slot-days of clock, 185 tokens,
  194.375 bits, 16 keys), the band-dependent stone row, the per-band leg table in weeks with the three states of the plan and
  the binding leg, the whole-census week column (**4 638.8 / 2 548.1 / 1 798.3 / 854.2 / 384.1 / 69.6 / 22.3**), and the
  crossover points **25.3 / 158.2 / 384.2 / 8 070.6** stones per week.
- `tools/medal-unit-fix.ps1` (new, Rev 8, shared with T006 Rev 43) - the four medal flows in per-day and per-week form, the
  **event identity** (**175.03 events = 350.06 weeks = 2 450.4 d**), the re-issued sheet/par densities
  (**0.007 246 / 0.002 565**) and the block table, the five joint-plan cases (**2 450.4 / 2 450.4 / 1 378.4 / 2 197.2 /
  1 294.5 d**), and the medal sensitivity (**+10/50/100 per week = 39.7/186.3/346.3 d**).
- `tools/five-resource-ledger.ps1` (new, Rev 7) - the day table for all nine currencies, the ge cross-check of the three
  exchange rates, the three first-year plans with their maxima and binding legs, the binding-resource sensitivity table,
  and the 52-week vs 365-day reconciliation.
- Internal: [T009](T009-gem-spend-order.md) (gem framework bill), [T008](T008-uw-sync-with-stones.md)
  (**244 542** basic UW stats and its **§3.①** 27-line column with the `Σ L1–5 / L1–10 / L1–15` columns,
  **179 240** UW+), [T012](T012-card-deck-order.md) (**58 400** slot ladder, **51 200**
  cards, **27 500 / 28 500** mastery stones, the **2 063.56 T** `Shatter Shards` bill),
  [T014](T014-tournament-tickets.md) §3.2–§3.3 (stones/week by band; the closed form, the 70-cell grid, the stop-waves
  and the total-week column),
  [T010](T010-module-merge-chain.md) §1–2 (shard ladder + income), [T004](T004-mission-farming-low-tier.md) §1
  (weekly mission income at T10 and the shard law `42 × (base(n) + L)`, so **1 470 → 3 570** at lab L50; the lab gate is
  **T4 W70**), [T017](T017-vault-keys-priority.md) (73 000 keys, per-league years),
  [T023](T023-guardian-economy.md) §1 (1 555 bits/season, 14 470 for `Ally`),
  [T016](T016-guild-tokens-bits.md) Rev 3 (**185** tokens/week, the **1 225**-token full shop, **255** spare),
  [T022](T022-free-currency-census-paid-ladder.md) §1 (the free income census),
  [T006](T006-lab-queue-packing.md) (the boost table **15 cells/h** per slot at ×1.5 = **30 cells per skipped hour**, the
  **7.5 gems/h** gem rush, the ≈ 1 000 cells/day figure, and **Appendix A.2 / B**'s totals **2.4111 Q / 18 165.95 d** and
  **4.039 Q / 104 035.3 d**),
  [T020](T020-workshop-coin-order.md) §6 (the enhancement bills),
  [T013](T013-event-medal-economy.md) (medals).
- Arithmetic: `tools/years-ledger.ps1` (§4 in order), `tools/ledger-year1.ps1` (§1.①/§1.② and the 52-week totals),
  `tools/ledger-year1b.ps1` (surpluses, leftovers, the cell-hour split), `tools/ledger-year1c.ps1` (the stage ladder in
  weeks per band), `tools/lab-summit2.ps1` + `tools/lab-summit-d.ps1` (§1.③, shared with T006 Appendix A.2) and
  `tools/lab-summit-e.ps1` (§1.④, shared with T006 Appendix B).
