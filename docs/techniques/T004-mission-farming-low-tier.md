# T004 — Farm daily/weekly missions on the lowest useful tier

Rev: 3 (2026-11-02) — the **24-row tier table transcribed in full**, with two derived results: the **shard column is
arithmetic** from T6 (`15 + 5·(n − 6)`, all 19 rows exact ⇒ T24 = 105) while the **coin column has no closed form** (the
23 step ratios are 4/10/10/2.5/3.2/3.125/2/2/3/1.667/1.6/1.875/2/2.5/2/2/1.667/1.5/1.667/1.6/5/5/2), and the **weekly
totals become one formula per currency** — coins `106 × coins(n)` (42 missions + **64** from boxes), gems
`42 × 3 + 185 = 311`, shards `42 × shards(n)`, stones 45, medals 135, tokens 35, of which only coins and shards scale
with tier.
Rev: 2 (2026-11-02) — the whole daily layer is now printed (Tower Hub `wiki/system/daily-missions`, 2026-11-01):
**6 missions/day** (2 every 8 h, max 8 open), **3 gems + tier-scaling coins/shards per mission**, the tier tables
(24 rows), the **7-box weekly table with its Total row (Σ coins ×64 · 185 gems · 135 medals · 45 stones · 35 tokens)**
— the medals total re-adds against the fandom 6-box ladder, and the coins Σ re-adds (3+4+5+7+10+15+20 = 64 ✓) — plus
the reroll rule (5 gems / T4 W30).
Value: ★★★★ — at Tier 10 the mission system alone pays ≈ **311 gems + 318 M coins + 1 470 shards + 45 stones + 135
medals + 35 guild tokens per week** (arithmetic below) — it funds the module and guild economies outright. · Ease:
5 min per mission set · Prerequisite: Tier 2 (shards only after T2 W90)

## Why it works

Two facts combine:

1. A mission that says "Reach wave xx without any card equipped on tier xx" uses **max tier − 2**,
   so the listed tier is easy for you while the reward is fixed.
2. Mission counters are **counts**, not scores. Lower tiers have far lower enemy HP and much
   faster waves, so per-minute completion of "kill N enemies with Land Mines", "hit N criticals",
   "kill N bosses" goes way up.

## The daily ledger (printed, Rev 2)

**Rhythm:** new missions arrive **2× every 8 hours** (00:00 / 08:00 / 16:00 UTC) ⇒ **6 per day**; at most **8 can be
open** — overflow is lost, so clear the panel at each tick. *(Version note: fandom printed 5/day; the settling read is
just "how many new missions appear at the 08:00 tick".)*

**Per mission: 3 gems + a tier-scaled coin and shard payout** (shards only after Modules unlock at T2 W90). The full
24-row table, as printed:

| Tier | coins | shards | | Tier | coins | shards | | Tier | coins | shards |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | 25 | – | | 9 | 1.00 M | 30 | | 17 | 300 M | 70 |
| 2 | 100 | 3 | | 10 | 3.00 M | 35 | | 18 | 500 M | 75 |
| 3 | 1 000 | 5 | | 11 | 5.00 M | 40 | | 19 | 750 M | 80 |
| 4 | 10 000 | 8 | | 12 | 8.00 M | 45 | | 20 | 1.25 B | 85 |
| 5 | 25 000 | 12 | | 13 | 15.00 M | 50 | | 21 | 2.00 B | 90 |
| 6 | 80 000 | 15 | | 14 | 30.00 M | 55 | | 22 | 10.00 B | 95 |
| 7 | 250 000 | 20 | | 15 | 75.00 M | 60 | | 23 | 50.00 B | 100 |
| 8 | 500 000 | 25 | | 16 | 150.00 M | 65 | | 24 | 100.00 B | 105 |

**The shard column has a closed form; the coin column does not.** From T6 up the shards are arithmetic,
`shards(n) = 15 + 5·(n − 6)` (T6 15, T7 20 … **T24 = 105** ✓, every one of the 19 rows exact), while the first five paid
rows are hand-set (`3, 5, 8, 12, 15` — the steps there are +2 /+3/+4/+3). The coin column's own step ratios are
4, 10, 10, 2.5, 3.2, 3.125, 2, 2, 3, 1.667, 1.6, 1.875, 2, 2.5, 2, 2, 1.667, 1.5, 1.667, 1.6, 5, 5, 2 ⇒ **no geometric
shape**, so read the tier row from the panel rather than extrapolating. The `Daily Mission Shards` lab (**50** levels,
T006 §census) scales the shard column — its per-level step is the one open read.

**Weekly totals as one formula each** (42 missions per week = 6/day × 7 days, plus all seven boxes):

| Currency | Formula | T10 | T18 | T24 |
|---|---|---|---|---|
| coins | **106 × coins(n)** (42 from missions + **64** from the boxes) | **318 M** | **53 B** | **10.6 T** |
| gems | `42 × 3 + 185 = ` **311** (tier-independent) | 311 | 311 | 311 |
| shards | `42 × shards(n)` | 1 470 | 3 150 | 4 410 |
| stones | **45** (boxes only) | 45 | 45 | 45 |
| medals | **135** (boxes only) | 135 | 135 | 135 |
| guild tokens | **35** (7 boxes × 5) | 35 | 35 | 35 |

The gems/stones/medals/tokens rows do **not** scale with tier — only coins and shards do, which is why the tier ladder
matters for the module economy (shards) and nowhere else.

**Weekly boxes: every 5 completed missions, 7 boxes to the 35 cap** (columns printed with a Total row):

| Missions done | 5 | 10 | 15 | 20 | 25 | 30 | 35 | **Total** |
|---|---|---|---|---|---|---|---|---|
| coins | ×3 | ×4 | ×5 | ×7 | ×10 | ×15 | ×20 | **×64** ✓ (3+4+5+7+10+15+20) |
| gems | 10 | 15 | 20 | 25 | 30 | 35 | 50 | **185** ✓ (10+15+20+25+30+35+50) |
| medals | – | 10 | 15 | 20 | 25 | 30 | 35 | **135** ✓ (= fandom's 6-box ladder sum) |
| stones | – | – | – | – | 10 | 15 | 20 | **45** ✓ (10+15+20) |
| tokens | 5 | 5 | 5 | 5 | 5 | 5 | 5 | **35** ✓ (7 × 5) |

The coins column is a **multiplier on the tier-linked base** above (same base as the daily missions), so box coins at
T10 = 64 × 3.00 M = **192 M**. **Cross-source check:** the medals Total **135** equals the fandom ladder
10+15+20+25+30+35 exactly — two prints, one ledger.

**Worked weekly total at Tier 10 (6/day × 7 days + all boxes):** gems 126 (missions) + 185 (boxes) = **311**;
coins 126 M + 192 M = **318 M**; shards **1 470** (210/day); stones **45**; medals **135**; guild tokens **+35**.
The token row means the guild budget in [T016](T016-guild-tokens-bits.md) is **150 + 35 = 185 tokens/week**, not 150.

**Reroll:** **5 gems** per swap (unlocks **T4 W30**, one lab level; costs 20 M coins / 1 d 16 h research), guaranteed
to give a *different* mission — and **free** with the Vault `Free Mission Reroll` (15 keys). Use it to drop missions
needing unowned UWs/cards unless they double with an event mission ([T013](T013-event-medal-economy.md) §3). The shard
*type* from missions is random unless the Vault line `Daily Mission Shard Type` (10 keys, T017) pins it — with the shard
count now known (`42 × shards(n)`), that node is what decides whether those shards are useful at all.

## Steps

1. Open the **Missions** panel and read all active daily/weekly goals before starting (each 8-hour tick).
2. Classify each mission:
   - **Count-based** (kills, crits, mines, bosses, skips) → run the **lowest tier you can**, as fast as possible.
   - **Wave-based** (reach wave N, no-damage streak, max-interest streak) → run **max tier − 2**, use the interest-idle pattern ([T001](T001-interest-idle-engine.md)).
3. Equip the card that matches the counter, then start:
   | Mission | Equip / setup |
   |---|---|
   | Skip N waves | **Wave Skip** card |
   | Kill N enemies with workshop **Land Mines** | **Enemy Balance** card + early Workshop Mines & Damage, low tier |
   | Energy Shield saves you N times | **Energy Shield** in your package |
   | Kill N bosses outside tower range | **Bounce Shot** + **Land Mines**, focus Damage & Crit, Tier 1 |
   | No damage for N consecutive waves | max tier − 2, defense-first order ([T002](T002-run-phase-order.md)) |
   | Max interest for N consecutive waves | any low tier, gold `$` icon ([T001](T001-interest-idle-engine.md)) |
4. Chain them: several missions tick on the same run. Start the run that satisfies the most counters.
5. Claim from **Mail** (`MailManager`) if rewards are delivered there rather than on the panel.
6. Count weekly boxes toward **35 missions** (all 7 boxes) — the boxes, not the dailies, carry the medals/stones/tokens.

## Reproduction checklist

- [ ] One run advanced ≥2 mission counters
- [ ] Counters completed on a tier **below** your max
- [ ] Total wall-clock per mission set < 5 min at Tier ≤ 5
- [ ] One completed mission pays exactly **3 gems** + the tier coin/shard row above (T10: 3.00 M + 35).
- [ ] At 5 completed missions the first weekly box opens and pays **10 gems + 5 tokens + coins ×3**.
- [ ] The box panel's medal counter across a full week totals **135**, and the last box pays **50 gems**.
- [ ] A reroll costs **5** gems and never returns the same mission.
- [ ] **Shard law (§daily ledger):** at T6 a mission pays **15** shards and each further tier adds **+5** (T10 = 35,
      T18 = 75, T24 = **105**) — 19 rows from one formula.
- [ ] **Weekly coins = 106 × the tier row:** at T10 the week should land on **318 M** (42 × 3 M from missions +
      64 × 3 M from boxes); at T18 **53 B**.
- [ ] Gems/medals/stones/tokens are **tier-flat**: 311 / 135 / 45 / 35 whether you sit at T10 or T24.

## Falsification

If mission tier is not `max tier − 2` in your client, record the observed offset here and bump
the revision — the rest of the technique (low tier = faster counters) is independent.

- If more than **8** missions stack in the panel, the “max 8 open, overflow lost” rule changed → recount the per-tick arrivals (2 or 1).
- If a mission at T7 pays something other than **20** shards, the `15 + 5·(n − 6)` line is superseded (the
  `Daily Mission Shards` lab, **50** levels, is the likely cause) → read levels 0 and 1 of that lab and record its step,
  then rebuild the shard column as `base(n) × (1 + step × lab)`.
- If the weekly coin total is not **106 ×** the tier row, the box multipliers were re-tuned → re-add the eight box rows
  (the Total row's **×64** is the check) before changing the table.
- If a completed mission pays something other than **3 gems**, the flat part was re-versioned → record the value; the tier-scaling rows are separate and may stand.
- If the weekly box ladder shows **6** boxes again (fandom's older layout), the 7-box print is newer → the medal totals should still sum to 135; the extra box is the 5-mission opener (10 gems + 5 tokens).

## Sources

- game-vault `Guide:Event_Guide` mission table (explicit "Tier in the mission is your maximum Tier -2" and per-mission card notes).
- Tower Hub `wiki/system/daily-missions` (last verified **2026-11-01**) — the 8-hour cadence (2/tick, 6/day, ≤ 8 open),
  **3 gems per mission** + the **24-row tier table in full** (coins 25 / 100 / 1 000 / 10 000 / 25 000 / 80 000 / 250 000 /
  500 000 / 1 M / 3 M / 5 M / 8 M / 15 M / 30 M / 75 M / 150 M / 300 M / 500 M / 750 M / 1.25 B / 2 B / 10 B / 50 B /
  **100 B**; shards – / 3 / 5 / 8 / 12 then **15 → 105** by +5), the 7-box weekly table with
  the Total row (**×64 · 185 · 135 · 45 · 35**), reroll **5 gems** (T4 W30, 20 M / 1 d 16 h lab, guaranteed different,
  free with the 15-key Vault line), shard-type Vault lock.
- Tower Hub `wiki/lab/lab-upgrades` (2026-07-29) — `Daily Mission Shards` **Max Lv 50** and `Reroll Daily Missions`
  **Max Lv 1** (the caps the §ledger's shard scaling is taken against).
- fandom `Daily Missions` (raw wikitext, via T007/T013 tables) — the 10/15/20/25/30/35 = **135** medal ladder that the
  Tower Hub Total row reproduces.
