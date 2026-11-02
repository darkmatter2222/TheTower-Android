# T013 — Run the event window: every mission is a double-dip, every trade line is capped

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
4. **Bots** unlock at 150 / 300 / 600 / 900 / 1 200 medals (by how many you already own; cumulative 150 → 3 150 for all five). **Bots can be respec'd once per event for free**, returning every invested medal — so bot levels are a *refundable* store of surplus medals, which is why they are the safest place for odd remainders. Start with the **Golden Bot** (it is the coin/cash engine; its window matters for the sync table).

> **Rev 2:** the exchange rates implied by the 40-medal trades — **1 Stone = 10 gems, 1 Module Shard = 0.6 gems, 1 Medal = 0.267 gems** — are used as the common unit across this repository; the table lives in [T014 §2](T014-tournament-tickets.md).

**Cosmetics, properly valued (new, Rev 3).** The permanent coin line works as “**all cosmetic bonuses are additive and
the default items don’t count; the total (×1 + all items) then multiplies the whole coin bonus**”— and crucially,
“**cosmetic bonuses apply without being equipped**” (buying is enough; no loadout slot is consumed). The full cosmetic
bill per event is **150** (tower theme) **+ 250** (background) **+ 200 × 3** (the three **non-rotating** songs, each
+0.6 %) = **1 000 medals**, and the shop **stays open between events**, so banked medals can be spent any time. (Guild
cosmetics — T016 §4 — stack into the same additive line.)

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
- [ ] On day 1 the mission panel shows **7** missions, and by day 8 there are **21** (7 + 2 × 7).
- [ ] One purchase on each line pays **150 gems / 15 stones / 250 shards** — and with the unit table each equals
      **150 gem-equivalents**.
- [ ] With the pass, the panel shows four gates: **350 / 550 / 700 / 1 100**.
- [ ] Buying a song/theme and leaving it **unequipped** still shows its +0.6 %/coin bonus in the coin total.

## 6. Falsification

- If a **weekly-box** medal appears in the 350/700 relic counter, the “mission medals only” rule is wrong → then the Epic relic is easier and boxes should be collected in week 1.
- If a second trade of the same line still costs **40**, the ladder does not escalate (or the counters are shared rather than per-line) → re-derive §2 from the panel and re-order the trades.
- If medals **expire** when the event ends, the “bank 500–700” rule is void — spend everything inside the window instead.
- If the 4th trade of a line costs 90 again, the counter reset mid-event; note the trigger (likely the second week's mission batch).
- If the **7th** purchase costs something other than **380** (i.e. no flat floor), the 8-column print is a version skew →
  record the first eight prices from the panel; only the tail of §2 changes, trades 1–6 drive every decision anyway.
- If a **song bought but unequipped** stops showing its bonus, the “apply without being equipped” line is wrong → cosmetic
  priority drops behind stat items (it is then a loadout-slot trade-off, not a free stack).
- If day 8 still shows **new** missions, the “+2/day for days 2–8, then nothing” pacing is re-versioned → the 21-mission
  total (945 medals) still holds, only the daily schedule shifts.

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
- Tower Hub `wiki/currency/currency-medals` (2026-11-01) — medals **do not expire** with the event; only sources are
  missions, Daily-Mission weekly boxes, Fetch; only in-event medals count toward relic gates.
- fandom `Currency/Medals` (raw wikitext) — mission 10/15/20, Event Boost doubling, weekly boxes 10…35 = 135, Fetch ≤10/day, shop item list, **trade ladder 40/65/90/130/175/230/380 with per-event reset and per-line counters**, bot ladder 150/300/600/900/1 200, relic gates counting only in-event medals.
- game-vault `Guide:Event_Guide` — events unlock at T1 W70, 2-week length, 21 missions, 45/mission, 945 + 270 = 1 215 per event, relic gates 350/700, full mission table with tips, spending-priority table (background 250, tower 150, Rare relic 200, Epic relic 500, 15 stones for 40), bot respec once per event, mailed unclaimed rewards.
- `tools/gm_strings.txt` — panel strings `Themed Event UI`, `v25 Themed Event UI`, `Bots`, `Synchronicity`, `Event Shop`, `Featured Banner` / `Standard Banner`, `Free Reward` / `Premium Reward`.
