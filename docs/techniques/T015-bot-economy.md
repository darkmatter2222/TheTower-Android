# T015 — Bot economy: the three exact cost formulas, and the sync-aware order

Rev: 2 (2026-11-01) — three closed-form cost formulas added (each reproduces the wikis' printed totals exactly), H015
resolved (**+0.05** per Bot Bot level), the respec price corrected to **300 gems**, and the lab gates + non-respeccable
cooldown-lab footgun added.
Currency: **Coins** (Golden Bot bonus), **Elite Cells** (Golden Bot+), **Medals** (the whole bot block) · Status:
**Unverified** on device, but **model-checked**: 56 100 / 17 500 / 11 500 / 8 100 all reproduced from the formulas in §1.

| | |
|---|---|
| **Value** | ★★★★ — Golden Bot is the cheapest coin multiplier in the game (×2.0 → ×8.0 with 90 % uptime once both labs |
| | are in), and **Golden Bot+ × Bot Bot+ multiplies every Elite Cell by up to ×6.25** on top of the Cells card, which feeds |
| | the lab-boost loop ([T006](T006-lab-queue-packing.md)). Medal flow is the binding constraint: ≈ 1 215 medals/event. |
| **Confidence** | **High** — two independent wikis (fandom raw wikitext + Tower Hub, “last verified 2026-11-01”, from a |
| | Legend account) agree on every per-level increment and on all four printed totals; the formulas below are exact. |
| | **Medium** on Bot Bot's level *count* (19 vs 30 — §6, the increment itself is settled). |
| **Ease** | 1 tap per level in the Event Shop's bot panel · **Prerequisite:** Events open (T1 W70); Bot+ needs **all five** |
| | bots; the cooldown labs come from Milestones at **T5 W80** (Golden) and **T6 W90** (Bot Bot). |

---

## 1. The three closed-form cost formulas (all reproduce the printed totals)

| Line type | per-level cost | Σ to level *L* | reproduces |
|---|---|---|---|
| **any normal bot stat line** | `100 + 40(n−1)` | `20L² + 80L` | Golden Bot's four lines = **56 100** (20 400 + 5 700 + 20 400 + 9 600) ✓ |
| **standard Bot+ line** (Bonus Cells, Maximum Power, Wild Fire, Titan Shock) | `50 + 50n` | `25L² + 75L` | 25 levels ⇒ **17 500** ✓ · 20 levels ⇒ **11 500** ✓ |
| **Echoing Shot (Amplify Bot+)** | `100 + 200(n−1)` | `100L²` | 9 levels ⇒ **8 100** ✓ |

Every bot line is therefore: **1 level = 100**, 2 = 140, 3 = 180 … (normal), and Bot+ levels 100, 150, 200, 250 … .
Bot+ unlocks cost **1 250 stones each** ⇒ **6 250 stones** for all five, and the five Bot+ lines together are
**60 100 medals** ≈ 50 events ≈ **100 weeks**.

## 2. The knee table (medals per unit, by block of 5–10 levels)

Same 4×-worse-per-block shape as the UW stone lines (T008 §3) — finish a block, then stop:

| Line | block 1 | block 2 | block 3 | block 4 | block 5 |
|---|---|---|---|---|---|
| **Cooldown** (−3 s/lv, 15 lv) | L1–5 = **900** (60 medals/s) | L6–10 = 1 900 (127) | L11–15 = 2 900 (193) | — | — |
| **Bonus** (+0.2×/lv, 30 lv) | L1–10 = **2 800** (1 400 /×1) | L11–20 = 6 800 (3 400) | L21–30 = 10 800 (5 400) | — | — |
| **Duration** (+0.5 s/lv, 30 lv) | L1–10 = **2 800** (280 /s) | L11–20 = 6 800 (680) | L21–30 = 10 800 (1 080) | — | — |
| **Range** (+2 m/lv, 20 lv) | L1–10 = **2 800** (140 /m) | L11–20 = 6 800 (340) | — | — | — |
| **Bot+ cell/power lines** (+0.05/lv) | L1–5 = **1 000** (×1.25→1.50) | L6–10 = 2 250 (→1.75) | L11–15 = 3 500 (→2.00) | L16–20 = 4 750 (→2.25) | L21–25 = 6 000 (→2.50) |
| **Echoing Shot** (+1 bullet/lv) | L1–5 = **2 500** (500 /bullet) | L6–9 = 5 600 (1 400) | — | — | — |

At ≈ **1 215 medals per 2-week event** (T013 §1): Golden Bot's Cooldown line = 5 700 ≈ 4.7 events; its full 56 100 ≈ 46
events; Bonus Cells to ×2.00 = 6 750 ≈ 5.6 events; all five Bot+ lines = 60 100 ≈ 50 events.

## 3. Uptime and the sync window (this is what actually multiplies coins)

| Golden Bot state | Cooldown | Duration | Activations/h | **Uptime** |
|---|---|---|---|---|
| base | 120 s | 20 s | 30 | 16.7 % |
| Cooldown line 15 + Duration line 30 | 75 s | 35 s | 48 | 46.7 % |
| + both labs (−25 s, +10 s) | **50 s** | **45 s** | 72 | **90 %** |

The two labs are **Milestone-gated**: `Golden Bot Cooldown` at **T5 W80** (25 levels, −1 s each, first levels 30 M /
60.05 M / 91.6 M / 132.15 M / 201.2 M coins) and `Golden Bot Duration` at **T10 W50** (20 levels, +0.5 s each,
100 B → 150 B → 225 B → 337.5 B → 506.25 B, i.e. **×1.5 per level**). Bot Bot's pair (`Cooldown`, `Duration`) unlocks at
**T6 W90** with the same shape.

**Sync rule (ties into T008 §4):** with the coin trio at GT 200 / BH 100 / DW 200, set Golden Bot's cooldown to a
**divisor of 200**: **100 s** = 5 medal levels (900 medals) + 5 lab levels (519.9 M coins) ⇒ fires twice per GT cycle and
is always inside it; the fully-maxed **50 s** (= 15 + 25) is the other clean divisor. Avoid the in-between values —
75 s vs 200 s only re-aligns every 600 s.

⚠️ **Footgun:** the bot **cooldown labs cannot be respecced** (Tower Hub), so the sync target must be chosen *before*
researching level 1. The medal lines *are* respeccable, for **300 gems** (T022 §2's respec list; the Vault reduces it to 0,
T017), and the refund covers Bot+ levels too — re-unlocking Bot+ after a respec costs no stones again.

## 4. What each Bot+ ability is worth

| Bot+ (1 250 stones) | Levels | Effect at 0 → max | Why it ranks |
|---|---|---|---|
| **Golden Bot+ — Bonus Cells** | 25 (17 500 m) | ×1.25 → **×2.50** cells | directly multiplies Elite Cells → lab boosts (T006) |
| **Bot Bot+ — Maximum Power** | 20 (11 500 m) | ×1.25 → **×2.25** to *other* Bot+ | multiplies the line above ⇒ ≈ **×5.6** cells together |
| **Amplify Bot+ — Echoing Shot** | 9 (8 100 m) | 3 → **12** bullets | near-linear damage (UW projectiles get ⅓) |
| **Flame Bot+ — Wild Fire** | 20 (11 500 m) | ×1.5 → ×3.5 | damage-on-burn |
| **Thunder Bot+ — Titan Shock** | 20 (11 500 m) | −5 % → −25 % enemy attack speed (× digits of enemy mass) | permanent, so it is run-independent |

## 5. Steps (UI only)

1. Home → **Events** → **Event Shop** → the bot entries; unlock in this order: **Golden Bot (150)** → **Amplify (300)** →
   **Thunder (600)** → **Flame (900)** → **Bot Bot (1 200)** (the price is the count you already own).
2. Open **Golden Bot** in the panel and tap the **Cooldown** line's `+` to level 5 (**900 medals**) — that alone takes
   uptime from 16.7 % to ≈ 21 % and is the cheapest multiplier per medal in the shop.
3. Then **Bonus** to 10 (**2 800**, ×2.0 → ×4.0) before touching **Range** (Range is the cheapest *per level* but the
   least useful while your kills are inside the tower's range anyway).
4. When the **`Golden Bot Cooldown`** lab appears (Milestones T5 W80), decide the target first (§3): take **5 lab levels**
   to land on exactly **100 s** — not 8, not 12 (non-divisors break the sync).
5. Research **`Golden Bot Duration`** at T10 W50 (its first 5 levels cost 100 B → 506.25 B coins, so it is a late-tier
   purchase; each level is +0.5 s and it is what pushes uptime to 90 %).
6. After **all five bots**: **Bot+** panel → buy **Golden Bot+** (1 250 stones) and take it to level 15 (**×2.00**, 6 750
   medals) — the block table says level 16+ costs 24 %–75 % more per +0.05; then **Bot Bot+** to level 10 (**×1.75**).
7. Take the **300-gem bot respec** only inside an event, and only to move medals from `Range`/`Duration` into
   `Cooldown`/`Bonus` — the refund returns Bot+ levels too, so a Bot+ re-unlock costs no stones.
8. Do **not** research bot cooldown lab levels past your sync divisor “because the lab is cheap” — those levels are
   permanent and are the one bot purchase the respec cannot undo.

## 6. Reproduction checklist

- [ ] Bot unlock prices read **150 / 300 / 600 / 900 / 1 200**; the first upgrade level of any line reads **100**, the
      second **140**, the third **180** (formula `100 + 40(n−1)`).
- [ ] Golden Bot's four lines at max read **×8.0 / 35 s / 75 s / 60 m** and the panel's total spent is **56 100** medals.
- [ ] `Bonus Cells` reads **×1.25** at level 0, **×1.30** at level 1 (**+0.05** per level), and **×2.50** at 25 — the line
      total is **17 500** medals (this is also the H015 read: 0.05, not 0.5).
- [ ] `Maximum Power` caps at **×2.25** (20 levels, 11 500 medals).
- [ ] With 5 cooldown-lab levels + 5 medal levels, Golden Bot's cooldown reads exactly **100 s**.
- [ ] The respec costs **300 gems** and the medal counter returns in full.

## 7. Falsification

- If a normal line's level 2 costs something other than **140**, the `+40` ladder changed → re-read three levels and
  rebuild §1 (the whole ranking is ratio-driven, so only the block boundaries matter).
- If Bot Bot's `Bonus` reads **+0.5** per level, Tower Hub's 19-level/×2.00 table is stale and the fandom's 30-level/×2.55
  is live → recompute §2's Bot+ rows and note it in [H015](../hypotheses/H015-bot-bot-increment.md).
- If `Bonus Cells` at level 1 is not ×1.30, the Bot+ ladder is not `50 + 50n` → record the first five prices.
- If the Golden Bot cooldown reads a value that is not `120 − 3·(medal levels) − (lab levels)`, another source (module
  sub-stat, relic, Vault line) is in the sum → list them and re-derive the divisor.

## Sources

- fandom raw wikitext: `Golden Bot`, `Amplify Bot`, `Flame Bot`, `Thunder Bot`, `Bot Bot` — per-line increments/level
  counts (e.g. Golden: Bonus 30 lv +0.2, Duration 30 lv +0.5, Cooldown 15 lv −3, Range 20 lv +2; Flame cooldown starts at
  **75 s**; Amplify Bonus +0.4/lv → ×15.5), the “100 + 40/level” rule, and the five Bot+ tables with their totals
  (17 500 / 8 100 / 11 500 / 11 500 / 11 500).
- Tower Hub `wiki/bot/golden-bot` + `wiki/bot/bot-bot` (last verified 2026-11-01) — the **56 100**-medal total,
  Bot Bot's **19 levels / +0.05 / ×2.00** cap, `Maximum Power` **×1.25→×2.25 / 11 500**, the lab gate waves
  (**T5 W80**, **T6 W90**, **T10 W50**) with per-level coin costs (30 M → 3.25 B; 100 B → 3.84 T at ×1.5/level), the
  **300-gem** bot respec that also refunds Bot+, and “lab levels cannot be respecced”.
- Cross-references: [T013](T013-event-medal-economy.md) (medal income), [T006](T006-lab-queue-packing.md) (what cells buy),
  [T008](T008-uw-sync-with-stones.md) §4 (the 200-s sync package the bot must divide), [T017](T017-vault-keys-priority.md)
  (respec-to-0 lines).
