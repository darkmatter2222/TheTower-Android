# T004 — Farm daily/weekly missions on the lowest useful tier

Rev: 5 (2026-11-03) — **the mission pool is printed: 32 rows, 17 ladder shapes** (§The mission pool,
`tools/daily-mission-goals.ps1`). The `Needs` column gives a **pool-size ladder**: **5** ungated rows (15.6 %) →
**9** by Tier 4 → **25** after the 16 Workshop-gated rows → **30** after the 5 card rows → **32**; the Workshop alone is
half the pool. Shape law: **15 arithmetic + 12 piecewise-two-step + 5 single-rung = 32, zero three-step ladders**
(27/27 pass). Pay is fixed while work is not: **18 of the 27** multi-rung ladders span **≥ ×3** between their lowest and
highest rung (top ×5.00), expected work = **1.50–3.00 ×** the best case. The weekly rows are **milestone-gated** — stones
from **T1 W60**, medals from **T1 W70**, tokens/contribution from **T3 W10** — the box counter resets **Monday
00:00 UTC**, and the tournament tile only lands in the **00:00 UTC** batch on **Wed/Sat**. fandom also prints
**Tier 1 = 1 shard** where the Hub prints “–” (reconciled by the module-unlock rule).
Rev: 4 (2026-11-02) — the shard law is **additive in the lab level**: `wiki/module/module-labs` (2026-11-01) prints
`Daily Mission Shards` as **+1 shard per level** across **50** levels ("across its 50 levels, it adds up to **50 extra
shards per mission**"), so a mission pays **`base(n) + L`** and the **weekly shard bill is `42 × (base(n) + L)`** —
at T10 **1 470** at L0 rising to **3 570** at L50, at T18 **3 150 → 5 250**, at T24 **4 410 → 6 510** (each 50 levels of
the lab is exactly **+2 100 shards/week**). The other five weekly rows are unaffected.
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
Value: ★★★★ — at Tier 10 the mission system alone pays ≈ **311 gems + 318 M coins + 1 470 shards (3 570 at shard-lab
L50) + 45 stones + 135 medals + 35 guild tokens per week** (arithmetic below) — it funds the module and guild economies
outright. · **Confidence: High** — both tier tables and the box table are printed twice (Tower Hub + fandom) and re-add
cell by cell, and the pool table's 32 rows / 17 shapes / **27/27** shape law are re-computed by
`tools/daily-mission-goals.ps1`; the one soft number remains the mission tier (`max tier − 2`). The `DailyMissionTile` /
`DailyMissionManager` / `addWeeklyBoxContribution` symbols in `tools/gm_strings.txt` corroborate the tile + per-box
contribution model. · Ease: 5 min per mission set · Prerequisite: Tier 2 (shards only after T2 W90)

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
gate **Tier 4 Wave 70**) has a **printed step of +1 shard per level, additive** — “across its 50 levels, it adds up to
**50 extra shards per mission**” (`wiki/module/module-labs`, 2026-11-01) ⇒

`shards per mission = base(n) + L`  → at **L10**: T10 = **45**, T18 = **85**; at **L50**: T10 = **85**, T24 = **155**

**Weekly totals as one formula each** (42 missions per week = 6/day × 7 days, plus all seven boxes):

| Currency | Formula | T10 | T18 | T24 |
|---|---|---|---|---|
| coins | **106 × coins(n)** (42 from missions + **64** from the boxes) | **318 M** | **53 B** | **10.6 T** |
| gems | `42 × 3 + 185 = ` **311** (tier-independent) | 311 | 311 | 311 |
| shards | `42 × (base(n) + L)` — **L = `Daily Mission Shards` level**, so every 50 levels add **+2 100** | 1 470 → **3 570** | 3 150 → **5 250** | 4 410 → **6 510** |
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

**Worked weekly total at Tier 10 (6/day × 7 days + all boxes, shard lab at 0):** gems 126 (missions) + 185 (boxes) =
**311**; coins 126 M + 192 M = **318 M**; shards **1 470** (210/day, or **3 570** at lab level 50 = 510/day); stones
**45**; medals **135**; guild tokens **+35**.
The token row means the guild budget in [T016](T016-guild-tokens-bits.md) is **150 + 35 = 185 tokens/week**, not 150.

**Reroll:** **5 gems** per swap (unlocks **T4 W30**, one lab level; costs 20 M coins / 1 d 16 h research), guaranteed
to give a *different* mission — and **free** with the Vault `Free Mission Reroll` (15 keys). Use it to drop missions
needing unowned UWs/cards unless they double with an event mission ([T013](T013-event-medal-economy.md) §3). The shard
*type* from missions is random unless the Vault line `Daily Mission Shard Type` (10 keys, T017) pins it — with the shard
count now known (`42 × shards(n)`), that node is what decides whether those shards are useful at all.

## The mission pool: 32 printed rows, 17 ladder shapes (new, Rev 5)

fandom `Daily Missions` (2026-11-03) prints the whole pool as **`List of daily missions`** with columns
`Mission | Possible goals | Needs`, and the prose above it states the draw law: “**Each mission picks one of its
possible goals at random**”. Combined with the fixed per-mission pay (3 gems + the tier row) this gives one governing
rule: **the rung you draw changes the work, never the reward.** *(max/min* and *mean* are derived by
`tools/daily-mission-goals.ps1` from the printed rungs.)

| Mission | Possible goals (printed) | Needs | max/min | mean |
|---|---|---|---|---|
| Kill [x] bosses | 1, 2, 3, 4, 5 | – | ×5.00 | 3 |
| Kill [x] basic enemies | 50, 75, 100, 150, 200 | – | ×4.00 | 115 |
| Kill [x] fast enemies | 20, 35, 50 | Tier 2 unlocked | ×2.50 | 35 |
| Kill [x] tank enemies | 20, 35, 50 | Tier 3 unlocked | ×2.50 | 35 |
| Kill [x] ranged enemies | 2, 4, 6 | Tier 4 unlocked | ×3.00 | 4 |
| Tap [x] floating gems | 1, 2, 3 | – | ×3.00 | 2 |
| Advance through [x] waves | 30, 50, 70 | – | ×2.33 | 50 |
| Start [x] battles | 1 | – | – | 1 |
| Hit [x] enemies with critical hits | 100, 150, 200 | Tier 4 unlocked | ×2.00 | 150 |
| Bounce shots through [x] enemies | 100, 150, 200 | Bounce Shot (Workshop) | ×2.00 | 150 |
| Hit [x] with super critical hits | 10, 20, 30 | Super Crit (Workshop) | ×3.00 | 20 |
| Apply knockback on [x] enemies | 40, 60, 80 | Knockback (Workshop) | ×2.00 | 60 |
| Kill [x] enemies with orbs | 60, 80, 100, 120 | Orbs (Workshop) | ×2.00 | 90 |
| Kill [x] with workshop land mines | 60, 80, 100, 120 | Land Mines (Workshop) | ×2.00 | 90 |
| Skip enemy level [x] times | 3, 5, 7, 10 | Enemy Level Skip (Workshop) | ×3.33 | 6.3 |
| Buy [x] workshop upgrades | 1 | Workshop not maxed | – | 1 |
| Buy [x] battle upgrades | 10, 20, 30 | Workshop not maxed | ×3.00 | 20 |
| Hit [x] with Chain Lightning | 25, 40, 60, 80 | Chain Lightning | ×3.20 | 51.3 |
| Kill [x] with Death Wave | 15, 25, 35, 50 | Death Wave | ×3.33 | 31.3 |
| Poison [x] with Poison Swamp | 60, 100, 150, 200 | Poison Swamp | ×3.33 | 127.5 |
| Kill [x] with Smart Missiles | 25, 40, 60, 80 | Smart Missiles | ×3.20 | 51.3 |
| Kill [x] while Golden Tower is active | 50, 75, 100, 150 | Golden Tower | ×3.00 | 93.8 |
| Kill [x] slowed by Chrono Field | 50, 75, 100, 150 | Chrono Field | ×3.00 | 93.8 |
| Kill [x] with Inner Land Mines | 15, 25, 35, 50 | Inner Land Mines | ×3.33 | 31.3 |
| Kill [x] in spotlight | 15, 25, 35, 50 | Spotlight | ×3.33 | 31.3 |
| Skip a total of [x] waves | 3, 5, 7, 10 | Wave Skip card | ×3.33 | 6.3 |
| Kill [x] with Death Ray | 50, 75, 100, 150 | Death Ray card | ×3.00 | 93.8 |
| Hit a boss with an energy net [x] times | 1, 2, 3, 4, 5 | Energy Net card | ×5.00 | 3 |
| Kill [x] while in Demon Mode | 40, 60, 80, 100 | Demon Mode card | ×2.50 | 70 |
| Buy [x] cards | 1 | Not all cards maxed | – | 1 |
| Change [x] skins | 1 | ≥ 1 skin bought | – | 1 |
| Participate in 1 tournament | 1 | Wed/Sat **00:00 UTC** batch only | – | 1 |

**1. The `Needs` column is a pool-size ladder** (`tools/daily-mission-goals.ps1`, cumulative): **5** rows have no gate at
all (**15.6 %** of the pool) → **6** at Tier 2 → **7** at Tier 3 → **9** at Tier 4 (**28.1 %**) → **25** once the
**16** Workshop-gated rows exist (**78.1 %**) → **30** after the **5** card-gated rows (93.8 %) → **31** with skins →
**32** with the tournament tile. So **the Workshop, not the tier, is what diversifies the pool**: half the pool (16/32)
appears as you buy Workshop upgrades, and the tier ladder itself only ever adds 4 rows.

**2. Every ladder is piecewise arithmetic with at most two distinct steps** — over the **27** multi-rung rows: **15** are
arithmetic (one step: `1,2,3,4,5` → +1; `20,35,50` → +15; `60,80,100,120` → +20) and **12** have exactly two step values
(`50,75,100,150` = +25,+25,+50; `15,25,35,50` = +10,+10,+15; `25,40,60,80` = +15,+20,+20; `3,5,7,10` = +2,+2,+3;
`60,100,150,200` = +40,+50,+50) and **0** need a third ⇒ **27/27 pass**. The two-step ladders all put the larger step at
the **top** (the tail jump) or repeat it at the bottom, so the **top rung is disproportionately expensive**.
Rung lengths: **1 × 5, 3 × 10, 4 × 14, 5 × 3** rows; **17 distinct shapes** cover all 32 rows (most common: the five
single-rung `1` rows, then `15,25,35,50` and `50,75,100,150` three times each).

**3. Fixed pay × variable work — the reroll number.** Ratios run **×2.00 … ×5.00** and **18 of the 27** multi-rung ladders
span **≥ ×3**, so for two thirds of the pool the worst draw costs **at least three times** the best one **for the same
3 gems + tier row**. Expected work = the mean column, i.e. **1.50–3.00 ×** the best case (mean/min: `Crit hits` 1.50,
`Kill [x] bosses` **3.00**). With the Vault `Free Mission Reroll` (15 keys) the rule is free: **reroll any top-rung
draw** (rung *n* of its ladder). Without it, a reroll costs **5 gems** = **1.67 missions' worth** of gems, so it only
pays for the ×5.00/×4.00 ladders (`Kill [x] bosses`, `Hit a boss with an energy net`, `Kill [x] basic enemies`).

**4. The instant five.** The **5** single-rung rows all require **one** action: `Start [x] battles`, `Buy [x] workshop
upgrades`, `Buy [x] cards`, `Change [x] skins`, `Participate in 1 tournament`. Clear them first at every 8-hour tick —
they carry the same pay as a 200-kill tile for 1–2 taps, and the last four are the *only* rows whose counters also tick
off progress you must make anyway.

**5. The weekly ledger is milestone-gated (not tier-gated)** — the printed bullets: “**Medals are only given once Events
are unlocked, and Stones once Tournaments are unlocked. Tokens are given once Guilds are unlocked. If you are in a guild,
each box also adds 5 to your guild's weekly contribution**”. With the three gates: **Tournaments T1 W60** → stones appear,
**Events T1 W70** → medals appear, **Guilds T3 W10** → tokens **and** the contribution column appear (T016). So a player
at **T1 W1–W59** does **not** get the 45/135/35 rows above — their weekly total is **coins + gems only**; the full
ledger needs **T3 W10 + a guild joined**, which is also the moment the guild chest ladder (T016) opens.
The box counter and **all seven boxes reset Monday 00:00 UTC**, independently of the 00:00/08:00/16:00 tile cadence, and
the tournament row appears **only** in the **00:00 UTC** batch on **Wednesday and Saturday** — those two tiles are
therefore the only ones whose arrival you can predict.

**6. Cell diff resolved:** fandom prints **Tier 1 = 1 shard** where the Tower Hub table above prints “–”; the two agree
once the printed rule “shards are only given once Modules unlock” (T2 W90) is applied — the value **1** is the row's
stored value, paid from T2 W90. All **24** coin cells match between the two sources, and the shard law
`5t − 15 (t ≥ 7)` re-adds with **0 failures over 18 rows**; the head is **not** arithmetic (T1→T6 steps
**+2, +2, +3, +4, +3**, then +5 forever).

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
7. Clear the **instant five** first at every tick (`Start [x] battles`, `Buy [x] workshop upgrades`, `Buy [x] cards`,
   `Change [x] skins`, `Participate in 1 tournament`) — one action each for the full pay (§The mission pool finding 4),
   then reroll any **top-rung** draw if the Vault `Free Mission Reroll` is unlocked.
8. Do the box claims **before Monday 00:00 UTC** — the counter and all seven boxes reset then (§finding 5).

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
- [ ] **Lab step is additive:** with `Daily Mission Shards` at level **10** a T10 mission pays **45** and a T18 mission
      **85**; at level **50** → **85** / **155**. Per 50 lab levels the week gains exactly **+2 100** shards.
- [ ] **Weekly coins = 106 × the tier row:** at T10 the week should land on **318 M** (42 × 3 M from missions +
      64 × 3 M from boxes); at T18 **53 B**.
- [ ] Gems/medals/stones/tokens are **tier-flat**: 311 / 135 / 45 / 35 whether you sit at T10 or T24.
- [ ] **Rev 5 (§pool, finding 1):** at **Tier 4** the pool contains **9** mission types — the 5 ungated rows
      (`bosses`, `basic enemies`, `floating gems`, `advance waves`, `start battles`) plus `fast`, `tank`, `ranged`,
      `critical hits`; count distinct tiles you can get over two days.
- [ ] **Rev 5 (finding 3):** the same mission type on two different tiles shows different goal numbers (e.g.
      `Kill [x] basic enemies` = **50** once and **200** another time) while both pay **3 gems** + the same tier row.
- [ ] **Rev 5 (finding 4):** the `Buy [x] workshop upgrades` tile completes after **one** purchase, and
      `Start [x] battles` after **one** run.
- [ ] **Rev 5 (finding 5):** the tournament tile appears **only** in the **00:00 UTC** batch on **Wednesday or
      Saturday**, and the weekly box counter is back to **0** with all seven boxes unclaimed right after **Monday
      00:00 UTC**.
- [ ] **Rev 5 (finding 5):** before **Tier 3 Wave 10** (or while guildless) a box claim pays **0 guild tokens**; after
      joining a guild the same claim pays **5** and raises your guild contribution by **5**.
- [ ] **Rev 5 (§pool, finding 2):** no ladder ever shows a goal outside its printed rung set (e.g. `Kill [x] fast
      enemies` only ever **20 / 35 / 50**, never 25).

## Falsification

If mission tier is not `max tier − 2` in your client, record the observed offset here and bump
the revision — the rest of the technique (low tier = faster counters) is independent.

- If more than **8** missions stack in the panel, the “max 8 open, overflow lost” rule changed → recount the per-tick arrivals (2 or 1).
- If a mission at T7 pays something other than **20** shards, the `15 + 5·(n − 6)` line is superseded (the
  `Daily Mission Shards` lab, **50** levels, is the likely cause) → read levels 0 and 1 of that lab and record its step,
  then rebuild the shard column as **`base(n) + step × L`** (the printed step is additive, **+1/level**; if the observed
  step were multiplicative the two would differ only from level 1 upward: L1 = 36 additive vs 35.35 multiplicative).
- If the weekly coin total is not **106 ×** the tier row, the box multipliers were re-tuned → re-add the eight box rows
  (the Total row's **×64** is the check) before changing the table.
- If a completed mission pays something other than **3 gems**, the flat part was re-versioned → record the value; the tier-scaling rows are separate and may stand.
- If the weekly box ladder shows **6** boxes again (fandom's older layout), the 7-box print is newer → the medal totals should still sum to 135; the extra box is the 5-mission opener (10 gems + 5 tokens).
- **Rev 5:** if a **higher rung pays more** (say 5 gems for `Kill 200 basic enemies` vs 3 for `Kill 50`), the
  fixed-pay/variable-work law fails ⇒ findings 3–4 collapse and the reroll rule must be rebuilt from the pay table.
- **Rev 5:** if a tile shows a goal **outside** its printed rungs (e.g. `fast enemies` = 25), the ladder print is
  superseded → record the cell, re-run `tools/daily-mission-goals.ps1` with it and re-check the two-step law.
- **Rev 5:** if a tile appears with the tournament goal on a **Mon/Tue/Thu/Fri/Sun**, the Wed/Sat-only rule is
  superseded → recount the batches; note this also shifts the expected tiles/day away from **6**.
- **Rev 5:** if the box counter **keeps** its progress across Monday 00:00 UTC, the reset law changed → recount the
  weekly tiles against the **42/week** figure that every weekly total in this doc is built on.
- **Rev 5:** if a **T1 W1–W59** account already receives stones or medals from boxes, the milestone-gate law in finding 5
  is superseded → the 45/135 rows then need the tier, not the milestone, as their parameter.

## Sources

- game-vault `Guide:Event_Guide` mission table (explicit "Tier in the mission is your maximum Tier -2" and per-mission card notes).
- Tower Hub `wiki/system/daily-missions` (last verified **2026-11-01**) — the 8-hour cadence (2/tick, 6/day, ≤ 8 open),
  **3 gems per mission** + the **24-row tier table in full** (coins 25 / 100 / 1 000 / 10 000 / 25 000 / 80 000 / 250 000 /
  500 000 / 1 M / 3 M / 5 M / 8 M / 15 M / 30 M / 75 M / 150 M / 300 M / 500 M / 750 M / 1.25 B / 2 B / 10 B / 50 B /
  **100 B**; shards – / 3 / 5 / 8 / 12 then **15 → 105** by +5), the 7-box weekly table with
  the Total row (**×64 · 185 · 135 · 45 · 35**), reroll **5 gems** (T4 W30, 20 M / 1 d 16 h lab, guaranteed different,
  free with the 15-key Vault line), shard-type Vault lock.
- Tower Hub `wiki/module/module-labs` (2026-11-01) — `Daily Mission Shards`: gate **Tier 4 Wave 70**, **50** levels,
  **+1 shard per level**, additive, "up to **50 extra shards per mission**" (the §ledger's lab step).
- Tower Hub `wiki/lab/lab-upgrades` (2026-07-29) — `Daily Mission Shards` **Max Lv 50** and `Reroll Daily Missions`
  **Max Lv 1** (the caps the §ledger's shard scaling is taken against).
- fandom `Daily Missions` (raw wikitext, via T007/T013 tables) — the 10/15/20/25/30/35 = **135** medal ladder that the
  Tower Hub Total row reproduces.
- fandom `Daily Missions` (raw wikitext, pulled **2026-11-03**) — the **32-row `List of daily missions`**
  (`Mission | Possible goals | Needs`, quoted in §The mission pool), the draw law “each mission picks one of its possible
  goals at random”, the `Rewards` prose (3 gems, tier-scaled coins/shards, the +50 shard lab, random shard type unless the
  Vault line pins it), the 24-row tier table (**Tier 1 = 1 shard**) and the 7-box `Weekly Rewards` table **with its
  Guild-contribution column** (5/box, Total **35**) and the “resets every **Monday at 00:00 UTC**” line, the three
  unlock bullets (Events → medals, Tournaments → stones, Guilds → tokens), the `Reroll Daily Mission` lab row
  (**T4 W30**, 1 level, `1d 15h 59m` / **20 000 000** coins) and the Vault table (Shard Type **10**, Free Mission Reroll
  **15**). Gate cells: fandom `Tournaments` (**T1 W60**), `Events` (**T1 W70**), `Guilds` (**T3 W10**).
  New script: `tools/daily-mission-goals.ps1`.
- `tools/gm_strings.txt` (the `global-metadata.dat` dump) — the tile model is real: `Assets\Scripts\DailyMissionActive.cs`,
  `DailyMissionBase.cs`, `DailyMissionManager.cs`, `DailyMissionTile.cs`; the guild side has
  `Assets\Scripts\Guilds\ContributionChestData.cs`, `Guilds\GuildContributionChest.cs` and the method
  `addWeeklyBoxContribution` (one call per claimed box = the printed **+5**).

- Tower Hub ``wiki/guide/beginner-s-exploration-guide`` (last verified **2026-07-29**) - the hands-off priority list,
  which prints **35 missions per week** for the weekly boxes (second source for 6's ladder), the four universal gem
  sinks (**lab slots, cards, card slots, modules**), the in-run gem sources (gems orbit the tower, plus an on-screen gem
  every **10-15 minutes** on the left edge), and the **150-gem** full Workshop respec available from **Tier 10-15**
  (distinct from the 300-gem medal respec of T009 and the 150-gem Guardian respec).