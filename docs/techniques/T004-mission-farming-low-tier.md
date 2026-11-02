# T004 — Farm daily/weekly missions on the lowest useful tier

Rev: 1 · Status: **Unverified**
Value: ★★★★ (missions are a top-tier Gem + Coin source at low progression) · Ease: 5 min per mission set · Prerequisite: Tier 2

## Why it works

Two facts combine:

1. A mission that says "Reach wave xx without any card equipped on tier xx" uses **max tier − 2**,
   so the listed tier is easy for you while the reward is fixed.
2. Mission counters are **counts**, not scores. Lower tiers have far lower enemy HP and much
   faster waves, so per-minute completion of "kill N enemies with Land Mines", "hit N criticals",
   "kill N bosses" goes way up.

## Steps

1. Open the **Missions** panel and read all active daily/weekly goals before starting.
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

## Reproduction checklist

- [ ] One run advanced ≥2 mission counters
- [ ] Counters completed on a tier **below** your max
- [ ] Total wall-clock per mission set < 5 min at Tier ≤ 5

## Falsification

If mission tier is not `max tier − 2` in your client, record the observed offset here and bump
the revision — the rest of the technique (low tier = faster counters) is independent.

## Sources

game-vault `Guide:Event_Guide` mission table (explicit "Tier in the mission is your maximum Tier -2" and per-mission card notes).
