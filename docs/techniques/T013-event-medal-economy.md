# T013 — Run the event window: every mission is a double-dip, every trade line is capped

Rev: 8 (2026-11-03) — **§2.5: the line choice becomes a table**. Weeks-to-bill per currency
(**stones 452 282 / shards 82 380 / gems 114 500** against **W** / **1 470 → 3 570** / **3 045** per week) give the leader:
the **stone line leads at every band up to Platinum 16–24** (cross-over at `W > 8 071` vs no-lab shards, `12 028` vs gems,
`19 600` vs L50 shards), then it passes to **shards** (no lab) or **gems** (lab L50). The density law
`units/trade ÷ income` (**0.1701** shards / **0.0493** gems / `15/W` stones) fixes the order inside a round, and the
density-greedy plans buy **12 / 13 / 11 / 16** trades for the four budgets (**1 800 / 1 950 / 1 650 / 2 400 ge**,
**1.55 / 1.63 / 1.23 / 1.18 ge/medal**); `150/price ≥ 1` only through **trade 4** ⇒ four rounds per event is break-even
depth. `tools/event-shop-line-choice.ps1`.
Rev: 7 (2026-11-03) — **§2.4: the ladder closes against the budget** — `cost(n) = 3·C(q) + r·c(q+1)` for `n = 3q + r`
(level plan, one counter per line) ⇒ the four printed budgets buy **13 / 14 / 17 / 18** trades
(**1 950 / 2 100 / 2 550 / 2 700** gem-equivalents, residuals **65 / 30 / 200 / 110**) versus **7 / 7 / 9 / 10** all-in on
one line; this pins `a` in [T014](T014-tournament-tickets.md) §3.3 at **3.5 trades/week F2P** and **5.0 with the boost**;
**1 215 = 945 + 2 × 135** (boosted **2 160**), per week **607.5 / 677.5 / 1 080 / 1 150**; relic gates as mission counts
**8** (350) and **16** (700) F2P, **4** and **8** boosted; the bot ladder (Σ **3 150**) is double-sourced.
`tools/medal-weekly-ledger.ps1`.
Rev: 6 (2026-11-02) — the **free leg of the cosmetic line is closed** (same page, 2026-11-01): the 24-row milestone-skin
table obeys **`paid ⇔ tier ≡ 2 (mod 3)`** (**21/21** classified rows; paid = 2, 5, 8, 11, 14, 17, 20) so the number of
**free** skins by Tier *N* is **`N − ⌊(N+1)/3⌋`** (**21/21** ✓: 7 at T11 = **+2.8 pp**, 9 at T13 = +3.6 pp), the unlock is
printed as **wave 2 500** on that tier, and the page's own **printed counts 83 / 58 / 44** replace the subset arithmetic ⇒
the full-collection figure moves **+89.6 → +95.2 pp (×1.95)**; plus the **half-pair ordering** (background **312.5** medals
per pp < song/pair **333.3** < tower skin **375**).
Rev: 5 (2026-11-02) — the **cosmetic law is now printed** (`wiki/system/themes-menu`, 2026-11-01):
`1 + 0.004·tower + 0.008·background + 0.006·(menu + guardian + songs)`, additive, with v29.0.6 counts
(**83** tower skins, **43** event pairs, **8** guild seasons, **15** guild guardians, **3** shop songs of **44**) ⇒
**≈ +89.6 %** coins at full collection (**×1.90**), and the shop prices are calibrated to exactly
**0.00003 multiplier per medal** = **0.30 pp per 100 medals** ⇒ the 1 000-medal cosmetic bill is **3.0 pp**.
Rev: 4 (2026-11-02) — the **printed mission parameters** added (log-in and free-store-gem **7/10/13**, tournaments
**1/2/3**, cards **20/40/80**, research time **12 d/30 d/90 d**, kills **50 K/200 K/900 K** · **6 K/20 K/150 K** ·
**4 K/15 K/100 K**), with the five lines that complete themselves from T022/T014/T005/T012/T006; the pool is **≈ 52 types**
and `Death Defy` was **removed in v28.3**; the random-UW perk covers UW-locked quests; and the community **spending order**
(relic → theme+songs **400/event** → ≤2 stone packs → gems pre-labs → bots) is now printed with its numbers.
Rev: 3 (2026-11-02) — the whole event layer is now double-sourced from Tower Hub `wiki/system/events` (2026-11-01): the
trade ladder gains its printed **8th row (flat 380)** and the fixed-quantity wording (“An exchange gives **150 gems,
15 stones or 250 shards**. The cost rises after every purchase and resets when the next event begins”); the **150-gem-equiv
identity** (every purchase of every line = 150 gem-equivalents) makes the T014 §2 unit table self-consistent; mission
**pacing** (7 on day 1 + 2/day × 7 days = **21** ✓, pool of ≈ 52) and the **four-gate relic ladder 350/550/700/1 100**
(premium gates only with the pass) are new; and cosmetics are **additive, apply unequipped**.
Rev: 2 (2026-11-01) · Currency: **Medals** → converts into **Gems, Stones, Module Shards**; plus the two **Relics** per event
**Value:** ★★★★ — the trade ladder costs 2.4× more per unit after trade 3, and ~135 of the ~45 mission-medals are for actions you already do; relic gates (350/700) are the only relic source below Tier 16.
**Confidence:** **High** — the ladder (incl. the flat-380 8th purchase), fixed quantities, shared shard counter, mission
pacing and relic gates are now printed by **two** sources (fandom raw wikitext + Tower Hub `wiki/system/events`, 9 data
tables, 2026-11-01), and the mission count **re-adds** from the pacing (7 + 2 × 7 = 21 ✓). The per-unit table is derived
from those printed numbers. **Verified (arithmetic, Rev 3)**; no device capture yet.
**Ease:** 2 taps per claim, ~10 min/day · **Prerequisite:** **Events unlock at Tier 1 Wave 70**; an event lasts **2 weeks** and a new one usually starts immediately after the old one ends.

---

## 1. Where medals come from (and which ones count)

| Source | Amount |
|---|---|
| Event missions: 3 milestones each (**10 / 15 / 20**) | **45 per mission**, **21 missions** ⇒ **945** |
| Weekly Daily-Mission boxes 2–7 (10/15/20/25/30/35) | **135 per week** ⇒ 270 per event |
| Guardian's **Fetch** ability | up to **10/day** ⇒ ≤140 |
| **Total F2P** | **≈ 1 215** (1 355 with Fetch) ≈ **87/day** |
| Event Boost (paid) | doubles the milestones (20/30/40) and **retroactively** doubles what you already earned this event |

**The gate rule that changes the order of work:** the two relic gates — **Rare relic at 350 total medals, Epic relic at 700 total medals** — count **only medals earned from that event's missions**. Carried-over medals *and* Daily-Mission box medals do **not** count. Since missions cap at 945, the Epic relic needs roughly **16 of the 21 missions finished** — so in week 1 clear missions, and only afterwards mop up boxes/Fetch.

**Pacing and the pass (new, Rev 3 — `wiki/system/events`).** Missions arrive **7 on day 1, then +2/day for days 2–8**
(⇒ 7 + 2 × 7 = **21** ✓ reproduces the fandom count; the pool the game draws from is “Showing 10 of **53** rows” ⇒
≈ **52** mission types), then days 9–14 have **no new missions** — everything claimed late must already be live. The relic
ladder is really **four gates**: **350** (Rare relic) · **550** (Premium 1) · **700** (Epic relic) · **1 100** (Premium 2);
the two premium gates exist only with the **event pass** (real money), whose **×2 medals count toward the gates**, and the
pass must be bought **per event** (a full pass event pays **1 890** = 2 × 945). Mission-table extras: the card-buy mission
“automatically completes when all cards are maxed”, and the research-time mission is **12 d / 30 d / 90 d** with
“rushed labs count”.

**Printed mission parameters (Rev 4, `wiki/system/events` mission tables).** The “always there / Tips” block and the first
kill rows are printed with their three tier values, which lets the whole set be pre-ranked before the event starts:

| Mission (as printed) | Tier 1 / 2 / 3 | Already paid by |
|---|---|---|
| Log in for **X** days | 7 / 10 / 13 | T022 step 1 (the daily claim needs a login anyway) |
| Get the **free gem reward in store** X times | 7 / 10 / 13 | T022 step 1 (**20 gems/day** claim = the same tap) |
| Participate in **X tournaments** | 1 / 2 / 3 | T014 (both weekly brackets) |
| Buy **X cards** | 20 / 40 / 80 | T012’s pull queue — and it **auto-completes** once every card is maxed |
| Have a **total research time** of X | **12 d / 30 d / 90 d** | T006 (rushed labs count; the site’s own tip: “all five labs running at **1.5×** speed will complete this mission”) |
| Kill **X Common** enemies | 50 K / 200 K / 900 K | the farm run (T005) |
| Kill **X fast** enemies | 6 000 / 20 000 / 150 K | the same run |
| Kill **X ranged** enemies | 4 000 / 15 000 / 100 K | the same run |

Two census notes from the same print: the mission pool is **“Showing 10 of 53 rows”** (≈ 52 types) and one mission was
**removed in v28.3** — `Death Defy at least X times on the same round` (2 / 3 / 5) — so a guide that still lists it is
pre-v28.3. And a UW-locked quest is not a blocker: the community guide states that **the random-ultimate-weapon perk**
(T011 §1.3) supplies a missing UW *for quest purposes* — the perk grants the weapon for the run, though it still does not
open that weapon’s labs.

**The spending order the same source set prints** (`wiki/guide/medals-guide`, 2026-11-01): **1)** a past-event relic whose
stat is **lab speed** or **coins** (the two §3-ranked stats) → **2)** **themes + songs, 400 medals per event** for the pair
(the two rotating theme rows 150 + 250 ✓ §1 cosmetics; three songs at 200 each add **+0.6 % coins** apiece) → **3)** stone
packs, **one or two at most** (the ladder is convex, §2) → **4)** gems, **only before all five labs are open** → **5)** the
rest into **bots**, one bot at a time (`Golden` first: **range** then **bonus**, nothing in **cooldown** — T015 §3 has the
same ranking with the numbers). The guide’s warning matches T015’s ledger: *“do not unlock all 5 bots before upgrading
them … nearly all of their value comes from upgrades.”*

## 2. The trade ladder: three lines, three counters, reset every event

Each line's price rises with how many times **that line** was traded **this event** (all four module-shard types share one counter), and **all counters reset when a new event starts**:

| Trade # | 1 | 2 | 3 | 4 | 5 | 6 | 7+ |
|---|---|---|---|---|---|---|---|
| Medals | 40 | 65 | 90 | 130 | 175 | 230 | **380** (flat) |
| **Gems** (150/trade) → gems per medal | **3.75** | 2.31 | 1.67 | 1.15 | 0.86 | 0.65 | 0.39 |
| **Stones** (15/trade) → stones per medal | **0.375** | 0.231 | 0.167 | 0.115 | 0.086 | 0.065 | 0.039 |
| **Module Shards** (250/trade) → shards per medal | **6.25** | 3.85 | 2.78 | 1.92 | 1.43 | 1.09 | 0.66 |

Tower Hub prints the same ladder as an 8-column table (“Quantity Purchased 1…8+” = **purchase index**, same semantics as
the guild store, T016 §2) with the 8th price **still 380** ⇒ from purchase 7 the price is **flat**, so the efficiency floor
is exactly **0.39 gems / 150 shard-equiv per medal**. The increments (25/25/40/45/55/150/0) are hand-curated — **no closed
form**; use the printed row. Two confirmations from the same print: (a) “**an exchange gives 150 gems, 15 stones or 250
shards**, the cost rises after every purchase and resets when the next event begins” ⇒ **fixed quantity, escalating price**
exactly like H016’s guild rule; (b) “buying one type of shard **raises the cost of the other types as well**” ⇒ the four
shard types here share **one** counter (opposite of the Guild Store’s per-type counters).

**The 150-identity.** With the repository’s unit table (1 stone = 10 gems, 1 shard = 0.6 gems — T014 §2) every purchase of
every line returns **exactly 150 gem-equivalents**: 150 × 1 = 150 · 15 × 10 = 150 · 250 × 0.6 = 150 ✓. So the three lines
are *worth the same at equal purchase index* — line choice is pure need-ordering (below T11 that is stones, per ③), and the
only real decision is **how far up each ladder** to go. Maxing a line to purchase 6 costs **730** medals and pays
**900 gems** (or 90 stones / 1 500 shards).

Consequences:

1. **Diversify within the event.** Trades 1–3 on all three lines cost **585 medals** and return **450 gems + 45 stones + 750 shards**. The same 585 medals spent down one line would reach only trade 5 (500) + 1 of another. The first three trades of a line are **2.4× more efficient per medal** than its fifth — so *never* push a line past 4 while another line still sits at trade 1.
2. **Because the counters reset each event, a saved medal is not idle**: hoarding into the next event and then taking trade 1 of each line again is better than grinding a line to 7 in one event. Keep **500–700 medals banked** (skins and relics do not appear in every shop; relics only appear during an event **rerun**, at 200 Rare / 500 Epic).
3. **Stones are the line a sub-T11 account wants most**: the full Golden Tower + Death Wave + Black Hole sync needs **910 stones** ([T008](T008-uw-sync-with-stones.md)) and the stone line yields only 45 per event at trades 1–3 — that is the main reason not to burn medals on skins early.
4. **Bots** unlock at 150 / 300 / 600 / 900 / 1 200 medals (by how many you already own; cumulative 150 → 3 150 for all five). **Bots can be respec'd once per event for free**, returning every invested medal — so bot levels are a *refundable* store of surplus medals, which is why they are the safest place for odd remainders. Start with the **Golden Bot** (it is the coin/cash engine; its window matters for the sync table). The unlock ladder is now **double-sourced**: fandom `Currency/Medals` prints the same five prices as its own “Bot unlocks” table (`150/300/600/900/1200`, Σ **3 150**, ratios ×2.00 / ×2.00 / ×1.50 / ×1.33) and adds “*You can unlock the bots in any order. The price depends on how many you already own*”.

### 2.4 The budget closes the ladder — exactly how many trades one event buys (new, Rev 7)

Because each line keeps **its own counter** (§2) and the ladder is convex, the cheapest *n*-trade purchase set is always
the “level” one — the marginal prices come in triples `40,40,40 · 65,65,65 · 90,90,90 · …`, so with `n = 3q + r`
(`r ∈ {0,1,2}`):

```
cost(n) = 3·C(q) + r·c(q+1)      c = (40, 65, 90, 130, 175, 230, 380, 380, …)
                                 C = (40, 105, 195, 325, 500, 730, 1110, 1490, 1870, 2250)   [per line]
value(n) = 150·n gem-equivalents (the 150-identity — independent of how the three lines are split)
```

Four budgets, all printed (`tools/medal-weekly-ledger.ps1`):

| Medals per event | how earned | **max trades `n`** | spent | residual | ge paid | line split | stones if the stone line leads |
|---|---|---|---|---|---|---|---|
| **1 215** | 945 missions + 2 × 135 boxes | **13** | 1 150 | 65 | **1 950** | 5/4/4 | **75** |
| **1 355** | + Fetch (≤ 10/day) | **14** | 1 325 | 30 | **2 100** | 5/5/4 | **75** |
| **2 160** | boost: 1 890 + 270 | **17** | 1 960 | 200 | **2 550** | 6/6/5 | **90** |
| **2 300** | boost + Fetch | **18** | 2 190 | 110 | **2 700** | 6/6/6 | **90** |

1. **All-in vs level.** Pushing a single line instead buys only **7 / 7 / 9 / 10** trades for the same four budgets
   (= **105 / 105 / 135 / 150** stones per event) — the level plan nearly **doubles** the trade count because it never pays
   a higher marginal price while a cheap counter is still open. All-in is only right when one currency is the hard
   constraint (below T11 that is stones, consequence 3).
2. **`a` in [T014](T014-tournament-tickets.md) §3.3 is now pinned**: all-in-on-stones gives
   `a = 105 stones / 2 =` **3.5 trades-equivalent per week** F2P and `150 / 2 =` **5.0** with the boost, so T014’s
   `+ 75` term is the **boosted** reading; the F2P reading is `+ 52.5` (the `+ 45` box term is identical in both).
3. **The `1 215` figure is arithmetic, not a fourth print:** `945 (missions) + 2 × 135 (two box weeks) =` **1 215** ✓, and
   the boosted equivalent is `1 890 + 270 =` **2 160** — per week that is **607.5 / 677.5** (F2P, without/with Fetch) and
   **1 080 / 1 150** (boosted). The boost itself doubles **only the mission milestones** (45 → 90 per mission), so it is
   worth **945** medals for its price.
4. **Relic gates as mission counts** (only mission medals count, §1): at 45/mission the **350** Rare gate needs
   `⌈350/45⌉ =` **8** missions and the **700** Epic gate `⌈700/45⌉ =` **16** of the 21; with the boost (90/mission) they are
   **4** and **8**. That is the reason for the order in §1: missions to 700 first, boxes and Fetch afterwards.

> **Rev 2:** the exchange rates implied by the 40-medal trades — **1 Stone = 10 gems, 1 Module Shard = 0.6 gems, 1 Medal = 0.267 gems** — are used as the common unit across this repository; the table lives in [T014 §2](T014-tournament-tickets.md).

**Cosmetics, properly valued (new, Rev 3).** The permanent coin line works as “**all cosmetic bonuses are additive and
the default items don’t count; the total (×1 + all items) then multiplies the whole coin bonus**”— and crucially,
“**cosmetic bonuses apply without being equipped**” (buying is enough; no loadout slot is consumed). The full cosmetic
bill per event is **150** (tower theme) **+ 250** (background) **+ 200 × 3** (the three **non-rotating** songs, each
+0.6 %) = **1 000 medals**, and the shop **stays open between events**, so banked medals can be spent any time. (Guild
cosmetics — T016 §4 — stack into the same additive line.)

**The printed law (Rev 5, `wiki/system/themes-menu`, 2026-11-01).** The same page states the arithmetic outright: “taking
your base value of **1**, then adding **0.004** for every **tower** theme, **0.008** for every **background** theme, and
**0.006** for each **menu and guardian** theme you possess”, and “all theme bonuses stack together **additively** into one
cumulative multiplier … you can see your current total displayed in the **tier multiplier menu**”. So

`cosmetic multiplier = 1 + 0.004·T + 0.008·B + 0.006·(M + G + songs)`

with the counts the same page prints for v29.0.6 (**83** tower skins besides the default; **43** event tower+background
pairs; **8** guild-season sets, one per season, each with a Tower/Background/Menu/Guardian entry; **15** named guild
guardians; **3** shop songs at **200 medals** each while the game has **44** songs — “only the three shop songs count
toward the coin bonus”):

| Bucket | Count × step | pp of coins |
|---|---|---|
| Tower skins | 83 × 0.004 | **+33.2** |
| Backgrounds (**printed count**, v29.0.6) | **58** × 0.008 | **+46.4** |
| Menu themes (guild, 8) | 8 × 0.006 | +4.8 |
| Guardian themes (guild, 15) | 15 × 0.006 | +9.0 |
| The 3 shop songs | 3 × 0.006 | +1.8 |
| **Total (all four buckets + songs)** | — | **≈ +95.2 %** ⇒ cosmetic multiplier **≈ ×1.95** |

Two consequences worth internalising:
1. **The prices are calibrated to one rate.** A theme pair is `0.004 + 0.008 = 0.012` for **400** medals and a song is
   `0.006` for **200** ⇒ both are exactly **0.00003 multiplier per medal** = **0.30 pp per 100 medals** (check:
   `0.012/400 = 0.006/200 = 3.0e-5` ✓), i.e. **1 pp per 333 medals**, **10 pp per 3 333 medals**. So there is no ordering
   trick inside the cosmetic shop **when you take whole items** — spend in any order, and the one-event cosmetic bill
   (**1 000 medals**, §1 above) buys exactly **3.0 pp** of the ≈ 95 pp line. *Half-pair exception (Rev 6):* the two halves
   are **not** individually at the pair rate — the **background** is `250 / 0.8 = 312.5` medals per pp, the **tower skin**
   `150 / 0.4 = 375`, a **song** `200 / 0.6 = 333.3` ⇒ **if you can only afford part of an event's cosmetics, the order is
   background → song → tower skin**, and a free milestone skin (0 medals) beats all three.
2. **The line is ~95 % of a free permanent coin multiplier** — i.e. as large as the entire *relic* coin pool
   (+99 %, T018 §3), for ≈ 1 000 medals/event plus the guild-token purchases. It is capped only by the collection size, so
   unlike the convex trade ladder (§2) it **never gets worse** the more you buy.

Census note: the transcribed subsets add to **24 milestone + 43 event + 8 guild = 75** tower skins against the printed
**83**, so ≈ **8** skins come from elsewhere (the three unconfirmed pairs *Neuron / Snowstorm / Valentine*, the anniversary
and other gift skins). The law is what to compute with; the counts are the read-the-panel part (the total is on the
**tier multiplier menu**, §5).

### 2.1 The free leg: milestone skins are one law (new, Rev 6)

The same page prints a **24-row** `Tier / Tower skin / Free-Paid` table (tiers 22–24 print “-”). Two laws cover all of it,
both re-adding from the printed rows:

```
paid ⇔ tier ≡ 2 (mod 3)      ⇒ paid tiers = 2, 5, 8, 11, 14, 17, 20        (21/21 classified rows ✓)
free skins by Tier N = N − ⌊(N+1)/3⌋                                              (21/21 rows ✓)
```

| Tier *N* | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | … | 21 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **free** skins (`N − ⌊(N+1)/3⌋`) | 1 | 1 | 2 | 3 | 3 | 4 | 5 | 5 | 6 | **7** | 7 | 8 | **9** | … | **14** |
| their coin pp (`× 0.4`) | 0.4 | 0.4 | 0.8 | 1.2 | 1.2 | 1.6 | 2.0 | 2.0 | 2.4 | **2.8** | 2.8 | 3.2 | **3.6** | … | **5.6** |
| paid tiers ≤ *N* (`⌊(N+1)/3⌋`) | 0 | 1 | 1 | 1 | 2 | 2 | 2 | 3 | 3 | 3 | 4 | 4 | 4 | … | 7 |

**How to use it.** Every milestone skin is granted at **wave 2 500 of its own tier** (the printed unlock line; T019's ladder
already ends each tier at 2 500 = skin, 4 500 = relic), so the *free* cosmetic line is a pure function of **how many tiers
you have pushed past 2 500**: **Tier 11 ⇒ +2.8 pp, Tier 13 ⇒ +3.6 pp, all 21 tiers ⇒ +5.6 pp**, and each paid row is the
same **0.4 pp** for **150** medals (7 of them through Tier 21). Since the medal rate is 333–375 medals/pp while the free leg
is 0 medals/pp, the order is: **push tiers to bank the free skins first, then buy the odd paid one** (and the background
first if only half a pair fits). Cross-check on the panel: the **tier multiplier menu** prints the total, which should equal
`1 + 0.004·(skins owned) + …`; the **Profile** screen (tap the **tower** on the home menu) only *displays* **1 skin + 5
relics** and does **not** activate them, so it is not the place to read the bonus.

### 2.5 Which line leads — the binding-currency table (new, Rev 8)

Every trade pays **150 ge** whichever line it sits on, so the line choice is decided entirely by *which currency's bill
takes longest to cover*. Two objectives, both arithmetic (`tools/event-shop-line-choice.ps1`):

**Objective A — weeks of income to the bill** (`bill ÷ income/week`; the largest binds). The three bills are
**stones 452 282** ([T025](T025-years-to-max-ledger.md) §1), **shards 82 380** = four equipped slots to L50
([T010](T010-module-merge-chain.md) §1, `4 × 20 595`), **gems 114 500** = the framework
([T009](T009-gem-spend-order.md) §1); the incomes are the band week (§3.3 of T014, F2P `a = 3.5`),
`42 × (35 + L)` shards ⇒ **1 470** unlabbed / **3 570** at lab **L50**, and **3 045** gems/week (435/day):

| Band (stones/week) | stones | shards, no lab | shards, lab L50 | gems | leader (no lab) | leader (lab L50) |
|---|---|---|---|---|---|---|
| Copper 23–30 (177.5) | 2 548.1 | 56.0 | 23.1 | 37.6 | **stones** | **stones** |
| Copper 13–15 (251.5) | 1 798.3 | 56.0 | 23.1 | 37.6 | **stones** | **stones** |
| Silver 23–30 (529.5) | 854.2 | 56.0 | 23.1 | 37.6 | **stones** | **stones** |
| Gold 23–30 (1 177.5) | 384.1 | 56.0 | 23.1 | 37.6 | **stones** | **stones** |
| Platinum 16–24 (6 497.5) | 69.6 | 56.0 | 23.1 | 37.6 | **stones** | **stones** |
| Champion 16–24 (20 257.5) | 22.3 | 56.0 | 23.1 | 37.6 | shards | gems |

**The law:** the stone line leads while `452 282 / W` beats the other columns, i.e. while
`W <` **8 071** (against no-lab shards) / **12 028** (against gems) / **19 600** (against lab-L50 shards). Every band a
sub-T11 account can be in is below all three, so **below Champion 16–24 the stone line is the line to lead with**; from
Champion 16–24 the lead passes to **shards** without the `Daily Mission Shards` lab and to **gems** with it at L50.

**Objective B — weeks of calendar bought per medal** (the density, `units-per-trade ÷ income/week`, which fixes the order
*inside* a round because all three counters move together):

| currency | units/trade | weeks per trade |
|---|---|---|
| stones | 15 | `15 / W` ⇒ **0.0845** at Copper bottom, **0.0127** at Gold bottom, **0.0007** at Champion 16–24 |
| shards | 250 | **0.1701** (no lab) / **0.0700** (lab L50) |
| gems | 150 | **0.0493** |

⇒ the round order is **shards → stones → gems** at the Copper bottom without the shard lab, **stones → shards → gems**
there with it at L50, and **shards → gems → stones** from the Gold bottom upward (stones fall to last as soon as
`15 / W < 0.0493`, i.e. `W > 305`).

**The density-greedy plan** (each next trade goes to the currently densest line; budget = §2.4's four medal totals):

| state | budget | trades | spent | residual | stones/shards/gems | ge | ge/medal | calendar bought |
|---|---|---|---|---|---|---|---|---|
| Copper bottom, no lab | 1 215 | **12** | 1 160 | 55 | 4 / 6 / 2 | 1 800 | 1.55 | 1.46 w |
| Copper bottom, lab L50 | 1 215 | **13** | 1 195 | 20 | 5 / 5 / 3 | 1 950 | 1.63 | 0.92 w |
| Gold bottom, no lab | 1 355 | **11** | 1 345 | 10 | 1 / 7 / 3 | 1 650 | 1.23 | 1.35 w |
| Champion 16–24, lab L50 | 2 160 | **16** | 2 035 | 125 | 3 / 7 / 6 | 2 400 | 1.18 | 0.79 w |

Worked sequence for the first row: `sh40 sh65 st40 sh90 sh130 st65 ge40 sh175 st90 ge65 sh230 st130`
= 730 + 325 + 105 = **1 160** medals; the next prices would be 380 (shards), 175 (stones), 90 (gems) and **55** remain, so
the plan stops there.

**Which objective to follow.** The *ge* count prefers the plain level plan (§2.4: 13 trades, **1 950 ge = 1.70
ge/medal** at the Copper bottom); the *bill* objective prefers the density plan (**12** trades, 1 800 ge, but the
**6** shard trades cut the 56-week shard bill by **1.0 week** where the level plan's 4 give 0.68). The two differ by at
most **150 ge (≈ 8 %)**, so: use the level plan when you just want the most currency, and the density order when one
currency is the gate for your next upgrade (below Gold that is stones, then shards until `Daily Mission Shards` reaches
L50, then gems). Either way the ladder's own shape decides the depth: **150/price ≥ 1 only through trade 4**
(`3.750 / 2.308 / 1.667 / 1.154`, then `0.857 / 0.652 / 0.395`), so four rounds per event is the break-even depth and the
surplus is better parked in the **bots** (refundable) or banked for the next event's three **40**-cost trades (four rounds
cost `3 × (40 + 65 + 90 + 130) =` **975** medals and pay **1 800 ge** = **1.846 ge/medal**).

## 3. The double-dip list (schedule these inside the event window)

Most event missions *are* the currency actions from the other techniques, so doing them during an event pays twice (the currency + up to 45 medals). Free medals available from the daily sweep alone ([T007](T007-ad-gem-sweep.md)): **“Get the free gem reward in store x times”** (7/10/13), **“Claim AD Gems xx times”** (10/—/60), **“Tap xx Floating Gems”** (12/24/50) = **135 medals for the taps you already do**.

| Mission | Milestones | Which technique already covers it | Extra lever |
|---|---|---|---|
| Total **Lab research time** (days) — *rushed labs count* | 12 / 30 / 90 | T006 | spend your **gem-rush** buckets during the event |
| **Buy x Cards** | 20 / 40 / 80 | T012 (`Buy x10`) | 80 cards = 1 600 gems, so plan the gem budget |
| **Buy x Workshop Upgrades** | 50 / 150 / 400 | T003/T002 | keep cheap lines (Health/Def Abs) levelled; a 150-gem **Workshop Respec** then re-buying counts |
| Free store gem / AD gems / floating gems | see above | T007 | none needed |
| Participate in x **tournaments** | 1 / 2 / 3 | — | one extra ticket per day from a rewarded ad |
| Reach wave x on any tier | 2 000 / 3 500 | T005 | do it in the last days of the event, when your tower is strongest |
| Waves **without cards** / **no damage** for x waves | 20/40/60 · —/—/1 200 | T003 | the tier quoted is **max tier − 2** (same offset as daily missions, H002) |
| Consecutive waves at **max Interest** | 60 / 300 / 500 | T001 | keep the `$` icon gold; stop buying after ~50 waves |
| Skip x waves | —/—/500 | T012 | equip **Wave Skip** |
| Missions needing a specific UW/card (Energy Net, Death Ray, Demon Mode, Black Hole, Inner Land Mines, Poison Swamp, Chain Lightning, Land Mines, Orbs) | varies | T008/T012 | **equip** the required card/UW before starting; Black Hole/Poison Swamp are easier on a **lower tier** (more enemies on screen) |
| Death Defy x times in one round | 2 / 3 / 5 | T003 | level Death Defy early; Energy Shield helps |

## 4. Steps (UI only)

1. On day 1 of the event, open the **Events** panel (the medal/event icon on the home screen) and read all 21 missions; note which ones need a specific **card** or **UW** — equip them in your farming preset ([T012] step 5).
2. Run the **T007 ad sweep** *inside* the event; it now also advances three missions.
3. Claim every milestone **as soon as it completes** (each milestone pays separately: 10 then 15 then 20). Do not leave them for the end — completed-but-unclaimed rewards are **mailed** when the event ends, but only the ones already completed.
4. Chase the **350** then **700** mission-medal counters first (the relic gates); only then collect Daily-Mission weekly boxes and the Guardian **Fetch** medals.
5. In the **Event Shop**, take **trade 1 → 2 → 3 of each of the three lines** (Gems, Stones, Module Shards) — 585 medals. Take the 4th trade only on the line your account is shortest of.
6. Buy the event's **tower skin (150)** and **background (250)** only after the relics and the three trade lines; **music (200/song)** last (they are permanent coin-multiplier extras, not stats).
7. Keep **500–700 medals banked** for a rerun shop that lists a **Relic** (200 Rare / 500 Epic).
8. Put leftover medals into **Bots** (stat lines), starting with Golden Bot; remember the **300-gem** once-per-event
   **respec** returns every medal. (Precision, Rev 3: **Synchronicity** itself is a *stone* purchase — 2 slots free, each
   extra slot **1 500 stones** ⇒ **4 500** for the maximum five; with the five Bot+ unlocks at **1 250** each, the whole
   Bot+/Synchronicity layer bills **5 × 1 250 + 4 500 = 10 750 stones**, on top of ≈ **60 100** medals of Bot+ levels.)
9. If you buy the **Event Boost**, do it early in the event — it doubles milestones **retroactively**, so a late purchase doubles less work… (it still doubles everything earned so far; buying it after the first day captures nearly the whole event).

## 5. Reproduction checklist

- [ ] A fully completed mission adds exactly **45** medals (10 + 15 + 20), and the panel header shows **350 / 700** relic gates.
- [ ] The first **Gems** trade costs **40** medals and gives **150** gems; the second costs **65**.
- [ ] After 3 trades the **Stones** line shows **90** and the next (4th) shows **130**.
- [ ] A brand-new event shows all three lines back at **40** (the counters reset).
- [ ] The mission tier for “no cards / no damage” missions equals **max tier − 2**.
- [ ] Bot respec returns the full invested medal count in the same event.
- [ ] Total medals at the end of a 2-week event land near **1 215** for a complete F2P run.
- [ ] The **7th and 8th** purchases of any trade line both cost **380** (flat floor).
- [ ] **§2.4 level plan:** after buying **one** trade on each of the three lines the panel shows **40 / 40 / 40** spent to
      **65 / 65 / 65** — i.e. three counters really do run independently (the cost of trade *k* is the same on all three
      lines); after 12 trades (4 rounds) the next single trade costs **175**.
- [ ] **§2.4 budget:** tally the medals you personally hold at the end of an event — a complete F2P run should land on
      ≈ **1 215** (**607.5/week**), and buying the trade plan should leave a residual of **65** after **13** trades
      (`3 × 325 + 175 =` **1 150** spent).
- [ ] **§2.4 relic counts:** the **350** gate lights up on your **8th** completed mission and **700** on the **16th**
      (F2P; **4th** and **8th** with the boost) — and box medals claimed in between do **not** move the gate.
- [ ] **§2.5 leader:** at the Copper bottom the stone line should be the one you lead with (its bill is
      `452 282 / 177.5 =` **2 548 weeks** of income against **56.0** for shards and **37.6** for gems); with
      `Daily Mission Shards` at L50 the shard bill is `82 380 / 3 570 =` **23.1** weeks and the order becomes
      stones → gems → shards.
- [ ] **§2.5 density plan:** after the 12-trade Copper-bottom plan the **Event Shop** counters should read
      **stones 4, shards 6, gems 2** with **55** medals left (`730 + 325 + 105 =` **1 160** of **1 215**), and the next
      printed prices should be **380 / 175 / 90** — all unaffordable, which is where the plan stops.
- [ ] **§2.5 break-even depth:** the fourth trade of a line costs **130** (≥ 1 ge/medal) and the fifth **175** (< 1), so
      four rounds = **12** trades = **975** medals for **1 800 ge** = **1.846 ge/medal** is the break-even depth.
- [ ] On day 1 the mission panel shows **7** missions, and by day 8 there are **21** (7 + 2 × 7).
- [ ] One purchase on each line pays **150 gems / 15 stones / 250 shards** — and with the unit table each equals
      **150 gem-equivalents**.
- [ ] With the pass, the panel shows four gates: **350 / 550 / 700 / 1 100**.
- [ ] Buying a song/theme and leaving it **unequipped** still shows its +0.6 %/coin bonus in the coin total.
- [ ] The **Tips** missions print **7 / 10 / 13** (log-in and free-store-gem), **1 / 2 / 3** (tournaments), **20 / 40 / 80**
      (cards) and **12 d / 30 d / 90 d** (total research time) — the two “7 / 10 / 13” lines complete themselves from
      T022 step 1, and the research line completes with five slots on the **×1.5** cell boost (T006).
- [ ] The mission pool has **no `Death Defy` row** (it was removed in **v28.3**), and the panel counts ≈ **52** mission types.
- [ ] **Cosmetic law (§2):** the total on the **tier multiplier menu** moves **+0.4 pp** per tower skin, **+0.8 pp** per
      background and **+0.6 pp** per menu/guardian/song — so after one theme pair + the 3 songs the delta from a clean save
      is **+1.2 + 1.8 = 3.0 pp** (0.03 on the printed multiplier), and a skin bought but **not equipped** is inside that sum.
- [ ] **§2.1 skin law:** the **Themes → Tower** submenu lists **7** owned milestone skins at Tier 11 and **9** at Tier 13
      (`N − ⌊(N+1)/3⌋` ✓), each worth **+0.4 pp** on the **tier multiplier menu**, arriving at **wave 2 500** of its own tier.
- [ ] **§2.1 paid rows:** exactly **Tiers 2, 5, 8, 11, 14, 17, 20** show their skin as a **purchase** (**150** medals in the
      event shop ⇒ **375** medals/pp, worse than the background’s **312.5**), all other tiers free.
- [ ] **§1 printed counts:** the Themes screen counts **83** tower skins / **58** backgrounds / **44** songs, and the shop’s
      three songs are **200** medals each and never rotate.
- [ ] **Profile:** tapping the **tower** on the home menu opens the profile; it displays **1 skin + 5 relics**, and changing
      those does **not** move the coin multiplier (display ≠ activation).

## 6. Falsification

- If a **weekly-box** medal appears in the 350/700 relic counter, the “mission medals only” rule is wrong → then the Epic relic is easier and boxes should be collected in week 1.
- If a second trade of the same line still costs **40**, the ladder does not escalate (or the counters are shared rather than per-line) → re-derive §2 from the panel and re-order the trades.
- If medals **expire** when the event ends, the “bank 500–700” rule is void — spend everything inside the window instead.
- If the 4th trade of a line costs 90 again, the counter reset mid-event; note the trigger (likely the second week's mission batch).
- If the **7th** purchase costs something other than **380** (i.e. no flat floor), the 8-column print is a version skew →
  record the first eight prices from the panel; only the tail of §2 changes, trades 1–6 drive every decision anyway.
- **§2.4:** if buying **one** trade on each of the three lines shows three **different** prices, the counters are not
  level-independent (§2's per-line law fails) → recompute `cost(n)` from the panel as a single merged ladder
  (`cost(n) = Σ c_k` once) and re-run `tools/medal-weekly-ledger.ps1` with `3·` removed; the trade count then drops toward
  the all-in column (**7 / 7 / 9 / 10**).
- **§2.4:** if your own event tally is far from **1 215** F2P, first check whether the **Fetch** medals and all seven boxes
  were claimed (they are **140 + 270** of the total); a permanently lower tally means missions are being left unclaimed,
  which also delays the 350/700 gates.
- **§2.5:** if your **shard** flow is not `42 × (35 + L)` per week (i.e. **1 470** unlabbed, **3 570** at L50), recompute
  the density `250/income` and the bill `82 380/income` from your own number — the leader column can change hands at
  `W ≈ 305` stones/week, where the stone density crosses the gem density.
- **§2.5:** if your measured gem income is far from **435/day** (the census figure), the gem column moves
  (`114 500/income`, density `150/income`); at **360/day** (8-h uptime) the bill is **45.4 weeks** and the density
  **0.0595**, which keeps gems **behind** L50-shards (**0.0700**) but **ahead** of stones from the Gold bottom upward.
- **§2.5:** if the panel's next prices after a density-plan round are not the ladder's own next value for that line, the
  counters are shared rather than per-line → see the §2.4 bullet; the leader table is unaffected (it uses only bills and
  incomes).
- If a **song bought but unequipped** stops showing its bonus, the “apply without being equipped” line is wrong → cosmetic
  priority drops behind stat items (it is then a loadout-slot trade-off, not a free stack).
- If day 8 still shows **new** missions, the “+2/day for days 2–8, then nothing” pacing is re-versioned → the 21-mission
  total (945 medals) still holds, only the daily schedule shifts.
- If the **tier multiplier menu**'s cosmetic total is not `1 + 0.004·T + 0.008·B + 0.006·(M+G+songs)` on your counts, the
  steps were re-tuned → read **one** item of each bucket at a time (the delta gives the new step) and rebuild the table; the
  two ratios to watch are **background : tower = 2 : 1** and **menu = guardian = song**.
- **§2.1:** if a tier’s skin prints **Paid** where `tier mod 3 ≠ 2` (e.g. Tier **4** paid), the ladder was re-versioned →
  take the modulus and the offset from those two reads; only the free-skin count (hence the pp total) changes, the
  **0.004** step is unaffected.
- **§2.1:** if the **tier multiplier menu** does **not** move **+0.4 pp** when a Tier-`N` wave-2 500 cell is claimed, the
  milestone skins are not the counted objects (or the menu omits a bucket) → re-read one item per bucket in the order
  tower → background → menu → guardian → song and keep the four deltas.
- **§2.1:** if the Themes screen counts something other than **83 / 58 / 44**, the counts are version-dependent → recompute
  §1’s bucket table from the panel’s counts (the 0.004 / 0.008 / 0.006 law is independent of them).
- **Profile:** if changing the profile’s displayed skin or relics **does** move the coin total, the display *is* the equip
  layer → then the active relic set must be read from the **Profile** screen rather than the Relics screen (T018).
- If the count of coin-counting **songs** turns out to be **44** rather than **3**, the multiplier gains another
  `41 × 0.006 = +24.6 pp` (§2's census note) → the cosmetic line then exceeds the whole relic pool and cosmetics become the
  #1 free coin source.

## Sources

- Tower Hub `wiki/system/events` (last verified **2026-11-01**, 9 data tables) — the trade ladder as an 8-column table
  (**40/65/90/130/175/230/380/380**, header “Quantity Purchased” = purchase index) with “an exchange gives **150 gems,
  15 stones or 250 shards**… cost rises after every purchase and resets when the next event begins” and “buying one type
  of shard **raises the cost of the other types as well**” (shared counter); mission pacing **7 + 2/day × 7 = 21** with a
  ~52-mission pool (“Showing 10 of 53 rows”); mission tiers incl. research time **12/30/90 d** and “rushed labs count”;
  the four relic gates **350/550/700/1 100** with the pass (×2 medals count, **1 890** boosted total, per-event purchase);
  themes **150/250** rotating, **3 non-rotating songs at 200** each +0.6 %; the bot base-stat table; **Bot+ at 1 250
  stones** each with the ability-value ladders (Bonus Cells ×1.25→…, Max Power ×1.25→×2.25) and “Showing 10 of 29 rows”;
  **Synchronicity** = 2 free slots + **1 500 stones** per extra slot (max five, **4 500**); “cosmetic bonuses are
  additive… apply without being equipped”; respec **300 gems** once/event, labs not refunded.
- Tower Hub `wiki/system/themes-menu` (last verified **2026-11-01**, 7 data tables) — the printed cosmetic law
  (**1 + 0.004 tower + 0.008 background + 0.006 menu/guardian**, “stack additively… shown in the tier multiplier menu”), the
  **v29.0.6** counts (**83** tower skins, **58** backgrounds, **44** songs with “only the three shop songs count”, **200
  medals** each, non-rotating), the per-category steps **0.4 / 0.8 / 0.6 %**, the **wave 2 500** milestone unlock plus “buy
  them during special events”, menu + guardian themes bought with **Guild currency**, the **43** event skin/background pairs,
  the per-season Guild-shop table, and the **24-row** `Tier / Tower skin / Free-Paid` table behind §2.1.
- Tower Hub `wiki/system/profile` (2026-07-29) — the profile is opened by **tapping the tower on the home menu**; it shows
  **1 tower skin + 5 relics** (display only: “displaying a relic or skin here does not activate it or grant its effects”),
  the highest **tournament ranking** and highest **tier/wave**, an editable **tournament name**, and since **v26.0** the
  active **guild**.
- Tower Hub `wiki/system/in-game-support` (2026-07-29) — the **Support** button lives in **Settings**; a ticket attaches the
  **player ID** and account **email** automatically, prints a **ticket number** in-game and emails it; if the game will not
  load, the fallback is the Tech Tree support page (purchase issues, lockouts).
- Tower Hub `wiki/currency/currency-medals` (2026-11-01) — medals **do not expire** with the event; only sources are
  missions, Daily-Mission weekly boxes, Fetch; only in-event medals count toward relic gates.
- Tower Hub `wiki/system/events` (last verified **2026-11-01**, 9 data tables) — unlock **T1 W70**; the cycle “**new
  missions during the first 8 days, followed by 6 days with no new missions**, as soon as one event ends the next starts”;
  “**seven missions are available on day one, and two more are added each day for the next seven days**”; the mission
  parameters table (**log in 7/10/13** · **tournaments 1/2/3** · **cards 20/40/80** (auto-complete when maxed) · **free
  store gem 7/10/13** · **research time 12 d/30 d/90 d**, “rushed labs count”, tip “all five labs at **1.5×** complete it” ·
  **commons 50 K/200 K/900 K** · **fast 6 000/20 000/150 K** · **ranged 4 000/15 000/100 K**), “Showing 10 of **53** rows”;
  the **Removed Missions** table (`Death Defy … 2/3/5`, **removed in V28.3**); the shop/relic/Bot+/Synchronicity tables.
- Tower Hub `wiki/system/themes-menu` (last verified **2026-11-01**) — the printed passive-coin law
  (`1 + 0.004 × tower + 0.008 × background + 0.006 × menu/guardian`, “stack additively”, “shown in the **tier multiplier
  menu**”, “each tower skin you own adds **0.4 %**”); **83 tower skins** besides the default (v29.0.6); the **43** event
  tower+background pairs (3 unconfirmed: Neuron / Snowstorm / Valentine) with their rerun flags; the **8** guild-season
  theme sets (Tower/Background/Menu/Guardian columns, guardians named **Butter, Muse, Finn, Nyra, Rolo, Glenn, Zepe, Iris,
  Silk, Mickey, Gaia, Arwing, Frank, Earl, Mei**); **44 songs** of which “**only the three shop songs count** toward the
  coin bonus … they do not rotate and cost **200 medals** each”.
- Tower Hub `wiki/guide/medals-guide` (2026-11-01) — the five-step spending order (past-event **lab speed / coins** relics
  first → **themes + songs, 400 medals per event** → **≤ 2** stone packs → gems only while labs are missing → **bots**), and
  the bot order: “do not unlock all 5 bots before upgrading them”, `Golden` first with **range** then **bonus**, “leave
  **cooldown** alone”, “three songs available, each giving **+0.6 % coins**”.
- Tower Hub `wiki/guide/event-guide` (2026-07-29) — per-quest walkthroughs and the tip that “if a quest calls for an
  ultimate weapon you do not own, the **random ultimate weapon perk** can provide it”.
- fandom `Currency/Medals` (**raw wikitext, 2026-11-03** — re-fetched for §2.4) — mission goals **10/15/20** per mission
  (**20/30/40 with the Event Boost**), the boost "also **doubles the Medals you have earned in the current event so far**",
  weekly boxes **2–7 give 10/15/20/25/30/35 = 135 per week**, **Fetch ≤ 10/day**, "medals **do not expire** when an Event
  ends" and can be banked; the shop list (**150 gems / 15 stones / 250 shards** per trade, skin **150**, background **250**,
  music **200**, relics **200 Rare / 500 Epic on rerun only**), the **trade ladder 40/65/90/130/175/230/380 with per-event
  reset and per-line counters**, and the bot ladder **150/300/600/900/1 200** with "you can unlock the bots **in any
  order**… the price depends on **how many you already own**" (Σ **3 150**, ratios ×2 / ×2 / ×1.5 / ×1.33 — §2.4 item 4).
- game-vault `Guide:Event_Guide` (**2026-11-03**) — events unlock at **T1 W70**, run **2 weeks**, **21 missions** at
  **45** medals each = **945**, "**double that**" with the boost; the event totals **945 + 2 × 135 = 1 215** per event
  (the figure §2.4 uses as its F2P budget) and **1 890 + 270 = 2 160** boosted; relic gates **350 / 700**; the
  spending-priority table (background 250, tower 150, Rare relic 200, Epic relic 500, **15 stones for 40**), bot respec
  **once per event**, unclaimed rewards arrive by **mail**.
- `tools/medal-weekly-ledger.ps1` (new) — the income ledger (**607.5 / 677.5 / 1 080 / 1 150** medals per week), the
  per-line ladder with `ge/medal` (**3.750 → 0.395**), and the four budget solves (**13 / 14 / 17 / 18** level-plan
  trades vs **7 / 7 / 9 / 10** all-in).
- `tools/event-shop-line-choice.ps1` (new, §2.5) — the leader table (bills **452 282 / 82 380 / 114 500** over incomes
  **W / 1 470 → 3 570 / 3 045**), the density law (**0.1701 / 0.0700 / 0.0493 / `15/W`**), the three cross-over points
  (**8 071 / 12 028 / 19 600** stones per week) and the four density-greedy plans with their purchase sequences. Bills come
  from [T009](T009-gem-spend-order.md) §1 (gem framework **114 500**), [T010](T010-module-merge-chain.md) §1
  (slot-level cumulative **20 595** ⇒ four slots **82 380**) and [T025](T025-years-to-max-ledger.md) §1
  (stones **452 282**, staged first-year target **11 461**); incomes from
  [T022](T022-free-currency-census-paid-ladder.md) §1 and [T004](T004-mission-farming-low-tier.md) (the shard law
  `42 × (35 + L)`).
- `tools/gm_strings.txt` — panel strings `Themed Event UI`, `v25 Themed Event UI`, `Bots`, `Synchronicity`, `Event Shop`, `Featured Banner` / `Standard Banner`, `Free Reward` / `Premium Reward`; the script-side classes behind §2.4 are all present:
  `Assets\Scripts\EventData.cs` + `EventPanelUI.cs` (the shop's per-line counters and the gate tally), `Mission.cs` /
  `MissionEvent.cs` / `MissionTile.cs` (the 21-mission pool), `DailyMissionTile.cs` / `DailyMissionManager.cs` with
  `addWeeklyBoxContribution` (the 135/week box row), `StoreOrganizer.cs` / `StoreLink.cs` (the boost purchase), and
  `ThemeManager|EventShopGemRelicWindow` (the gem/stone/shard trade window itself).
