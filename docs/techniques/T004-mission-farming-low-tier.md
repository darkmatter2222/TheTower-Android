# T004 — Farm daily/weekly missions on the lowest useful tier

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

**Per mission: 3 gems + a tier-scaled coin and shard payout** (shards only after Modules unlock at T2 W90):

| Tier | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| coins | 25 | 100 | 1 000 | 10 000 | 25 000 | 80 000 | 250 000 | 500 000 | 1.00 M | 3.00 M |
| shards | – | 3 | 5 | 8 | 12 | 15 | 20 | 25 | 30 | 35 |

The table continues to **24 tiers** (“Showing 10 of 24 rows”); the `Daily Mission Shards` lab raises the shard column;
the shard *type* is random unless the Vault line `Daily Mission Shard Type` (10 keys, T017) pins it.

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
needing unowned UWs/cards unless they double with an event mission ([T013](T013-event-medal-economy.md) §3).

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

## Falsification

If mission tier is not `max tier − 2` in your client, record the observed offset here and bump
the revision — the rest of the technique (low tier = faster counters) is independent.

- If more than **8** missions stack in the panel, the “max 8 open, overflow lost” rule changed → recount the per-tick arrivals (2 or 1).
- If a completed mission pays something other than **3 gems**, the flat part was re-versioned → record the value; the tier-scaling rows are separate and may stand.
- If the weekly box ladder shows **6** boxes again (fandom's older layout), the 7-box print is newer → the medal totals should still sum to 135; the extra box is the 5-mission opener (10 gems + 5 tokens).

## Sources

- game-vault `Guide:Event_Guide` mission table (explicit "Tier in the mission is your maximum Tier -2" and per-mission card notes).
- Tower Hub `wiki/system/daily-missions` (last verified **2026-11-01**) — the 8-hour cadence (2/tick, 6/day, ≤ 8 open),
  **3 gems per mission** + the 24-row tier table (coins 25 → 3.00 M by T10; shards 3 → 35), the 7-box weekly table with
  the Total row (**×64 · 185 · 135 · 45 · 35**), reroll **5 gems** (T4 W30, 20 M / 1 d 16 h lab, guaranteed different,
  free with the 15-key Vault line), shard-type Vault lock.
- fandom `Daily Missions` (raw wikitext, via T007/T013 tables) — the 10/15/20/25/30/35 = **135** medal ladder that the
  Tower Hub Total row reproduces.
