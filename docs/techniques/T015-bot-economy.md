# T015 — Bot economy: what a medal actually buys, and the cell/coin chain

Rev: 1 (2026-11-01) · Currency: **Coins** (Golden Bot bonus), **Elite Cells** (Golden Bot+), **Coins/damage** (Amplify/Flame/Thunder)
**Value:** ★★★★ once unlocked — a maxed Golden Bot is **×8 coin bonus** from kills in range with **90 % uptime** at max labs, and **Golden Bot+ adds ×1.25 → ×2.50 to every Elite Cell** dropped in that window ([T006](T006-lab-queue-packing.md)).
**Confidence:** **Medium** — base/max stats and level counts are the fandom bot pages (transcribed from the live upgrade panel); the cost arithmetic and the uptime/activation figures below are derived. One stat is ambiguous (§5, H015).
**Ease:** 1 tap per upgrade level · **Prerequisite:** the **Event Shop** must be open (Events, T1 W70); bots are bought there, and the **Bot+** abilities only after **all five bots are owned**.

---

## 1. Cost model (the part that decides the order)

- **Unlock** price depends on how many bots you already own: **150 / 300 / 600 / 900 / 1 200** medals (cumulative 150 → 3 150) — see [T013](T013-event-medal-economy.md) §2.
- **Every upgrade line** starts at **100 medals** and rises **+40 per level**: level *n* costs `100 + 40(n−1)`, so a full line of *L* levels costs `100L + 20L(L−1)`:

| Line length | 15 | 18 | 20 | 25 | 30 |
|---|---|---|---|---|---|
| Total medals | 5 700 | 7 920 | 9 600 | 14 500 | **20 400** |

- **The budget:** ≈ **1 215 medals per 2-week event** (T013 §1). One 30-level line = **20 400 medals ≈ 17 events ≈ 34 weeks**; a fully levelled **Golden Bot** (30+15+30+20 levels) = **56 100 medals ≈ 46 events**. Bots are therefore a *multi-year* sink — spend order matters more than volume.
- **Bots are refundable**: the free once-per-event respec returns every invested medal (T013 §2), so early levels are not locked in.
- **Bot+** abilities cost **1 250 stones each** (after all five bots are owned) and their own medal line runs **+50 medals per level** (totals: Golden Bot+ 17 500, Flame Bot+ 11 500, Thunder Bot+ 11 500, Bot Bot+ 11 500, Amplify Bot+ 8 100 — **60 100** for all five).

## 2. The five bots (base → max from the upgrade lines)

| Bot | What it does | Base → max (levels) |
|---|---|---|
| **Golden Bot** | coin multiplier on enemies killed in range | Bonus **×2.0 → ×8.0** (+0.2 × 30 lv) · Duration **20 → 35 s** (+0.5 × 30) · Cooldown **120 → 75 s** (−3 × 15) · Range **20 → 60 m** (+2 × 20) |
| **Amplify Bot** | damage amplification on enemies in range | Bonus **×3.5 → ×15.5** (+0.4 × 30) · Duration 20 s (+0.5 × 30) · Cooldown 120 → 75 s (−3 × 15) · Range 25 → 61 m (+2 × 18) |
| **Flame Bot** | burn area damage (1 tick/s) + damage reduction on burned enemies | Damage **×50 → ×290** tower damage (+8 × 30) · Damage reduction **20 % → 95 %** (+3 % × 25) · Cooldown **75 → 30 s** (−3 × 15) · Range 30 → 90 m (+4 × 15) |
| **Thunder Bot** | area stun, then a lingering slow (½ effect on bosses/elites) | Linger slow from **20 %** (20 lv) · stun duration (20 lv) · Cooldown 120 → 75 s (15 lv) · Range (15 lv) |
| **Bot Bot** | multiplies the **bonus** of every other bot inside its range | Bonus **×1.05 →** (30 lv; increment ambiguous — §5) · Duration 20 s · Cooldown 120 → 75 s · Range 25 → 61 m |

Range on every bot is further **amplified by tower range** and by relics/Vault upgrades.

### Why the Cooldown line is the cheapest big multiplier

| Cooldown | Activations/hour | Window | **Uptime** |
|---|---|---|---|
| 120 s (base) | 30 | 20 s | 16.7 % |
| 75 s (medals maxed) | **48** | 35 s | 46.7 % |
| 50 s (with the cooldown lab) | **72** | 45 s (lab) | **90 %** |

The 15-level Cooldown line costs only **5 700 medals** and raises activations/hour by **1.6×**; the duration/cooldown labs then push uptime to ~90 %. So the *first* meaningful purchase on any bot is its **Cooldown** line, before its Bonus line.

## 3. The currency chains (why the order is Golden → Bot Bot → Bot+)

1. **Coins:** `kills in range × Golden Bot bonus (×2…×8) × Bot Bot multiplier × (Golden Tower UW window, T008)`. These multiply each other, so overlapping windows are the whole game: get the cooldown/duration lines until Golden Bot is up whenever Golden Tower is up.
2. **Elite Cells:** `Golden Bot+ (Bonus Cells) ×1.25 → ×2.50` for elites killed inside the Golden Bot window, then **Bot Bot+ (Maximum Power) ×1.25 → ×2.50** multiplies that again — potentially **×6.25 cells**, on top of the Cells card and the Elite Balance mastery. Cells buy lab boosts at 30 cells/skipped-hour (T006), so this is a compounding loop.
3. **Damage/push:** Amplify Bot+ **Echoing Shot** makes bullets in range count as **3 → 12** (UW projectiles get ⅓ of that), which is a near-linear damage increase; Flame Bot+ **Wild Fire** ×1.5 → ×3.5; Thunder Bot+ **Titan Shock** −5 % → −25 % enemy attack speed permanently, multiplied by the number of digits in the enemy's mass.

## 4. Steps (UI only)

1. Home screen → **Events** → **Event Shop** → the **Bots** section (the shop lists the bots; the panel shows the 150/300/600/900/1 200 unlock price).
2. Unlock **Golden Bot** first (150 medals, the cheapest slot).
3. Tap it → the upgrade list appears (4 lines with their level counts). Level the **Cooldown** line to 15 (5 700 medals), then the **Bonus** line as far as the medal budget allows (+0.2 ×-bonus per level), leave **Range** last.
4. Repeat for **Amplify Bot** (its Cooldown line first as well), then Thunder/Flame/Bot Bot as medals accumulate.
5. Once **all five** are owned, the **Bot+** abilities appear: buy **Golden Bot+ (Bonus Cells)** first for 1 250 stones — it is the Elite-Cell multiplier that feeds T006's lab boosts — then **Bot Bot+ (Maximum Power)** to multiply it.
6. Save the **Bots → Synchronicity** view (the panel that lists each bot's cooldown/duration) to check window overlap against Golden Tower; use **Bot presets** (`BotPresetsUI`) if you run different bot sets for farming vs pushing.
7. Remember the free **respec** (once per event) if you want to move medals from a weak line to a strong one — the refund is the whole reason early bot levels are risk-free.

## 5. Reproduction checklist

- [ ] The 1st bot unlock reads **150** medals, the 2nd **300**, the 5th **1 200**.
- [ ] Upgrade level 1 of any line costs **100** medals and level 2 costs **140**.
- [ ] Golden Bot's Bonus line reads **×2.0** at level 0 and **+0.2** per level.
- [ ] Golden Bot Cooldown reaches **75 s** at medal level 15 and **50 s** after the cooldown lab.
- [ ] Elite kills inside the Golden Bot window show the cell multiplier from Bot+ (**×1.25** at level 0, **×2.50** at 1 300 medals).
- [ ] The respec returns the invested medals in the same event.

## 6. Falsification

- If an upgrade line's 2nd level does not cost **140**, the +40 increment is stale → recompute §1's line totals from the panel.
- If **Bot Bot**'s bonus jumps by **0.5** (not 0.05) per level it would reach ×16 at level 30, which is out of line with every other bot's cap — see [H015](../hypotheses/H015-bot-bot-increment.md); read level 1 in the panel to fix the increment.
- If Golden Bot's max bonus is not **×8.0**, note the value and re-derive the coin chain in §3.
- If Bot+ abilities appear before all five bots are owned, the “all bots first” gate is wrong and the 1 250-stone purchase can be prioritised earlier.

## Sources

- fandom `Golden Bot`, `Amplify Bot`, `Flame Bot`, `Thunder Bot`, `Bot Bot` (raw wikitext) — per-bot stat lines with level counts and per-level increments, the “100 medals +40/level” rule, the 1 250-stone Bot+ gate, and the Bot+ medal ladders (17 500 / 11 500 / 11 500 / 11 500 / 8 100).
- fandom `Currency/Elite Cells` — Golden Bot+ / Bot Bot+ listed as cell-flow upgrades.
- `tools/gm_strings.txt` — `Assets\Scripts\Bot.cs`, `BotDescriptionPanel.cs`, `BotPresetsUI.cs`, `Bots.cs`, `UserBotData`; panel strings `Bots`, `Synchronicity`.
