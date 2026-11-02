# T015 — Bot economy: the three exact cost formulas, and the sync-aware order

Rev: 4 (2026-11-02) — per-bot line caps + totals (§1.3): **Amplify 54 420 reproduces exactly** from `20L²+80L` with caps
(30/15/30/**18**), Bot Bot derived at **44 440** with the **19-level** Bonus line, and the **H034 count question is settled at
19** by its own value arithmetic (`1.05 + 19 × 0.05 = 2.00` ✓); plus the **reusable lab constants** (cooldown-lab block 1 =
**515.0 M** coins on all three bots; Amplify’s cooldown gate is **T5 W90**).
Rev: 3 (2026-11-02) — adds the **medal budget layer** from Tower Hub’s medals guide: the **3 150**-medal five-bot unlock
ladder (150/300/600/900/1 200), the per-event **400 medals** for theme + song (**three songs, +0.6 % coins each**), the
guide’s **5-step medal spend order**, the per-bot stat priority (**range before bonus** on Golden/Amplify, Thunder must be
maxed, Flame last) and the “**don’t unlock all five before levelling**” rule; every figure re-expressed in events at
≈ 1 215 medals/event.
Rev: 2 (2026-11-01) — three closed-form cost formulas added (each reproduces the wikis' printed totals exactly), H015
resolved (**+0.05** per Bot Bot level), the respec price corrected to **300 gems**, and the lab gates + non-respeccable
cooldown-lab footgun added.
Currency: **Coins** (Golden Bot bonus), **Elite Cells** (Golden Bot+), **Medals** (the whole bot block) · Status:
**Verified (arithmetic, Rev 3)** — 56 100 / 17 500 / 11 500 / 8 100 / **3 150** all reproduce from the formulas in §1
(56 100 = 20 400 + 5 700 + 20 400 + 9 600 from the caps 30/15/30/20); no device capture yet.

| | |
|---|---|
| **Value** | ★★★★ — Golden Bot is the cheapest coin multiplier in the game (×2.0 → ×8.0 with 90 % uptime once both labs |
| | are in), and **Golden Bot+ × Bot Bot+ multiplies every Elite Cell by up to ×6.25** on top of the Cells card, which feeds |
| | the lab-boost loop ([T006](T006-lab-queue-packing.md)). Medal flow is the binding constraint: ≈ 1 215 medals/event. |
| **Confidence** | **High** — two independent wikis (fandom raw wikitext + Tower Hub, “last verified 2026-11-01”, from a |
| | Legend account) agree on every per-level increment and on all four printed totals; the formulas below are exact. |
| | **Medium** on Bot Bot’s level *count* → **settled at 19** in Rev 4 (its own value ladder closes: ×1.05 + 19 × 0.05 = |
| | ×2.00 ✓); the three printed bot totals (56 100 / 54 420) and the five Bot+ totals all re-add. |
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

### 1.1 The medal budget (what each block costs in *events*)

Income is ≈ **1 215 medals per 2-week event** ([T013](T013-event-medal-economy.md) §1), which is the only real constraint:

| Medal sink | Medals | ÷ 1 215 = events | Weeks |
|---|---|---|---|
| Five bot **unlocks** (150 + 300 + 600 + 900 + 1 200) | **3 150** | 2.6 | ≈ 5 |
| **Theme + song** (per event, both) | **400** | 0.33 | 1 |
| **Golden Bot** four stat lines (20 400 + 5 700 + 20 400 + 9 600) | **56 100** | 46.2 | ≈ 92 |
| **Golden Bot+** (Bonus Cells, after **1 250 stones**) | **17 500** | 14.4 | ≈ 29 |
| **All five Bot+ lines** | **60 100** | 49.5 | ≈ 99 |

**Cosmetics first, then the bots.** The guide's order is: **①** older-event relics with lab-speed/coins (T018 §2–3) →
**②** **theme + song** (both = **400** medals/event; **3 songs** exist, each **+0.6 % coins**, and the theme bonus stacks into
the same permanent coin line as the guild cosmetics of T016 §4) → **③** **1–2 stone packs at most** (each extra pack is worse
value) → **④** **1 gem pack**, only before all 5 lab slots are open → **⑤** the rest into bots, in the §1.2 order.

### 1.2 Per-bot priority (the guide's levelling order, with the reason)

**Do not unlock all five bots before levelling** — a freshly unlocked bot is weak and almost all of its value is in its
levels, so unlock one, develop it, then unlock the next (Bot+ still needs **all five** unlocked, so finish the ladder later).

| Order | Bot | Line order | Why |
|---|---|---|---|
| 1 | **Golden Bot** | **Range** then **Bonus**, **cooldown only to the sync divisor** | “Range is the strongest upgrade, but keep it only a couple of levels ahead of bonus”; cooldown “gives little benefit unless chasing a GT/BH sync” (§3's divisor rule is that chase) |
| 2 | **Amplify Bot** | **Range** then **Bonus** | range “raises the chance of the boss passing through the bot's area” — the boss is where the value is |
| 3 | **Thunder Bot** | **max it or leave it** | “needs to be maxed to be useful … at low levels it can actually cause problems for some builds” |
| 4 | **Flame Bot** | last | “only invest once everything else is maxed or properly levelled” |

**The two numbers that make Range cheap:** it starts at **20 m** and each of its **20** levels adds **+2 m** (60 m from
levels alone, and all bot ranges are additionally **amplified by the tower's own range**, so `Range` workshop levels and the
Range relic/card widen the bot's coverage for free — T001/T012/T018).

### 1.3 Per-bot line caps, totals, and the reusable lab constants

Every bot line is the same arithmetic line (`cost(n) = 100 + 40(n−1)`), so a bot's whole bill is set by its four **level caps**:
`Σ = Σ (20L² + 80L)`.

| Bot | Duration | Cooldown | Bonus | Range | Four lines = |
|---|---|---|---|---|---|
| **Golden** | 30 lv (+0.5 s, 20→35 s) | 15 lv (−3 s, 120→75 s) | 30 lv (+0.2×, ×2.0→**×8.0**) | 20 lv (+2 m, 20→**60 m**) | **56 100** ✓ printed |
| **Amplify** | 30 lv (+0.5 s) | 15 lv (−3 s) | 30 lv (+0.4×, ×3.5→**×15.5**) | **18 lv** (+2 m, 25→**61 m**) | 20 400 + 5 700 + 20 400 + **7 920** = **54 420** ✓ printed |
| **Bot Bot** | 30 lv (+0.5 s) | 15 lv (−3 s) | **19 lv** (+0.05×, ×1.05→**×2.00**) | 20 lv (+2 m, 20→60 m) | 20 400 + 5 700 + **8 740** + 9 600 = **44 440** (derived) |
| Thunder / Flame | not printed | 15 lv (Flame’s cooldown starts at **75 s**) | see fandom (Flame ×1.5→…, Thunder −5 %→−25 %) | not printed | — |

Two of the three printed per-stat totals for Amplify (`20 400 / 7 920 / 5 700 / 20 400`, “together **54 420**”) and Golden’s
**56 100** reproduce from the closed form with **no free parameters**, which is what makes the derived **44 440** for Bot Bot
trustworthy — and the per-stat split is *also* a closed-form check: `20·30²+80·30 = 20 400` (Bonus/Duration),
`20·18²+80·18 = 7 920` (Range), `20·15²+80·15 = 5 700` (Cooldown). The cost tables corroborate the caps through the row
count (“Showing 10 of **31** rows” ⇒ **30** levels on every bot that lists its full ladder) and the level-1 values
(Amplify `20.5 s / 117 s / 3.9 / 27 m`; Bot Bot `20.5 s / 117 s / ×1.10 / 22 m`). Note the asymmetry the ranking depends
on: **Amplify’s Range caps at 18 levels (7 920 medals) while Golden’s caps at 20 (9 600)** ⇒ Amplify’s “range first” step
is the cheaper of the two.

**Reusable lab constants** (identical tables on every bot page): both bot labs are −1 s / +0.5 s per level with **25** and
**20** levels, and the per-level coin prices are the same series on all three pages printed so far —

| Lab line | Gate (printed) | Levels | Price ladder (first 5) | Σ of those 5 |
|---|---|---|---|---|
| `* Cooldown` (Golden) | **T5 W80** | 25 | 30 M · 60.05 M · 91.6 M · 132.15 M · 201.2 M | **515.0 M** |
| `* Cooldown` (Amplify) | **T5 W90** | 25 | same | **515.0 M** |
| `* Cooldown` (Bot Bot) | **T6 W90**¹ | 25 | same | **515.0 M** |
| `* Duration` (Golden, Amplify) | **T10 W50** | 20 | 100 B · 150 B · 225 B · 337.5 B · 506.25 B (**×1.5/lv**) | **1.32 T** |
| `* Duration` (Bot Bot) | **T6 W90**¹ | 20 | same | **1.32 T** |

¹ The Bot Bot page gates **both** of its labs at “tier 6 wave 90” (“This lab is **also** unlocked in Milestones at tier 6
wave 90”), while the Amplify page prints **T5 W90** (cooldown) / **T10 W50** (duration) — so the lab gates are **per bot**,
not one shared pair; one 2026-11-02 fetch also showed T5 W90 for Bot Bot's cooldown gate. Read your own Milestones screen.

(The 515.0 M figure is the sum of the five **printed** per-level prices; an earlier note of “519.9 M” came from a cumulative
print and is superseded.) The practical consequence: **each of the three cooldown labs costs ≈ 515 M coins for its first
5 seconds**, so buying the sync divisor on all three bots is a ≈ 1.55 B-coin decision plus 3 × 5 lab-slot hours.

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
   **Thunder (600)** → **Flame (900)** → **Bot Bot (1 200)** (Σ **3 150**; the price is the count you already own). Unlock
   **one**, level it, then unlock the next — a freshly unlocked bot is nearly worthless (§1.2).
2. Open **Golden Bot** in the panel and tap the **Cooldown** line's `+` to level 5 (**900 medals**) — that alone takes
   uptime from 16.7 % to ≈ 21 % and is the cheapest multiplier per medal in the shop.
3. Then **Bonus** to 10 (**2 800**, ×2.0 → ×4.0) and **Range** to 10 (**2 800**, 20 m → 40 m). *Two readings:* the Tower Hub
   guide puts **Range first** (“the strongest upgrade”, and it also scales with the tower's own range), keeping it only a
   couple of levels ahead of Bonus; the per-unit table of §2 favours Bonus while your kills are inside the tower's range. In
   practice: alternate them, keeping Range ≤ 2 levels ahead.
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
- [ ] The five unlock prices are **150 / 300 / 600 / 900 / 1 200** ⇒ **Σ 3 150**.
- [ ] **Theme + song** together cost **400** medals in the current event, and each of the **3** songs reads **+0.6 %** coins.
- [ ] Golden Bot's four **level-1** values read **20.5 s / 117 s / ×2.2 / 22 m** (+0.5 s, −3 s, +0.2×, +2 m per level), and
      its level-10 prices are **100 / 140 / 180 / 220 / 260 / 300 / 340 / 380 / 420 / 460** (Σ **2 800** per line).
- [ ] **Amplify Bot**’s panel total reads **54 420** medals, its **Range** line stops at **18** levels (**61 m**) and its
      Bonus at **×15.5**.
- [ ] **Bot Bot**’s Bonus reads **×1.10** at level 1 and stops at **×2.00** after **19** levels (line total **8 740**, four
      lines **44 440**).
- [ ] Any `* Cooldown` lab’s first five levels sum to **515.0 M** coins and any `* Duration` lab’s to **1.32 T**.

## 7. Falsification

- If a normal line's level 2 costs something other than **140**, the `+40` ladder changed → re-read three levels and
  rebuild §1 (the whole ranking is ratio-driven, so only the block boundaries matter).
- If Bot Bot's `Bonus` reads **+0.5** per level, Tower Hub's 19-level/×2.00 table is stale and the fandom's 30-level/×2.55
  is live → recompute §2's Bot+ rows and note it in [H015](../hypotheses/H015-bot-bot-increment.md).
- If `Bonus Cells` at level 1 is not ×1.30, the Bot+ ladder is not `50 + 50n` → record the first five prices.
- If **theme + song** do not cost **400** medals together, or a song does not read **+0.6 %**, §1.1's cosmetics row is
  re-versioned (both rotate per event) → re-read the Event Shop panel; the bot rows are unaffected.
- If **Amplify Bot**'s four-line total is not **54 420**, its Range caps at **20** not **18** (that would make the total
  **56 100**, Δ 1 680) → re-read the Range line's max level and re-sum §1.3.
- If **Bot Bot**'s Bonus line has **30** levels (not 19), the four-line total is **56 100** not **44 440**, and the value
  ladder would have to end at **×2.55**, not ×2.00 → record both printed numbers; §1.3's derivation is the check.
- If a low-level **Thunder Bot** provably does *not* disturb a build (the guide says it “can actually cause problems”), the
  “max it or skip it” rule relaxes to normal per-unit ordering (§1.2 row 3).
- If the Golden Bot cooldown reads a value that is not `120 − 3·(medal levels) − (lab levels)`, another source (module
  sub-stat, relic, Vault line) is in the sum → list them and re-derive the divisor.

## Sources

- fandom raw wikitext: `Golden Bot`, `Amplify Bot`, `Flame Bot`, `Thunder Bot`, `Bot Bot` — per-line increments/level
  counts (e.g. Golden: Bonus 30 lv +0.2, Duration 30 lv +0.5, Cooldown 15 lv −3, Range 20 lv +2; Flame cooldown starts at
  **75 s**; Amplify Bonus +0.4/lv → ×15.5), the “100 + 40/level” rule, and the five Bot+ tables with their totals
  (17 500 / 8 100 / 11 500 / 11 500 / 11 500).
- Tower Hub `wiki/bot/golden-bot` + `wiki/bot/bot-bot` (last verified 2026-11-01) — the **56 100**-medal total,
  Bot Bot's **19 levels / +0.05 / ×2.00** cap, `Maximum Power` **×1.25→×2.25 / 11 500** (now printed as “**20 levels,
  +0.05**” — closes its level count too), the lab gate waves (**T5 W80**, **T6 W90**, **T10 W50**) with per-level coin
  costs (30 M → 3.25 B; 100 B → 3.84 T at ×1.5/level), the **300-gem** bot respec that also refunds Bot+, and
  “lab levels cannot be respecced”.
- Tower Hub `wiki/bot/bot-bot` + `wiki/bot/amplify-bot` (fetched **2026-11-02**) — Bot Bot’s Bonus ladder “starts at
  **x1.05**, **19 levels**, each **+0.05**, up to **x2.00**” and Range “20 m, **20 levels**, +2 m → **60 m**” (⇒ the
  derived **44 440**); Amplify’s printed per-stat maxes **Bonus 20 400 · Range 7 920 · Cooldown 5 700 · Duration
  20 400 = 54 420**, its Range “starts at **25 m**, **18 levels**, +2 m” (→ **61 m**), the “**Showing 10 of 31 rows**”
  ⇒ 30-level corroboration, and the per-bot lab gates (Bot Bot’s two labs both at **T6 W90**). New detail lines:
  “**Gilded Sniper does not work on Bot Bot**”, the Amplify cooldown lab is “flagged in the **Footguns** section”, and
  Echoing Shot = “tower bullets within range count as several bullets; UW projectiles boosted by **1/3** of that”.
- Tower Hub `wiki/guide/medals-guide` (last verified **2026-11-01**) — the unlock ladder **150/300/600/900/1 200**, the
  “**100 medals plus 40 per level already bought**” rule, the **300-gem** once-per-event respec returning all medals incl.
  Bot+, the 5-step medal spend order (relics → theme+song → ≤ 2 stone packs → 1 gem pack → bots), the **400**-medal
  theme + song pair, the **3 songs × +0.6 %** coins, and the per-bot priority with reasons (§1.2). The `golden-bot` page also
  prints the four lines' **level-1 values** (20.5 s / 117 s / ×2.2 / 22 m) and caps (**30 / 15 / 30 / 20**), the maxed
  **×8.0 / 35 s / 75 s / 60 m**, the lab ceilings (**45 s** / **50 s**), and “all bot ranges are amplified by your tower's
  range”; plus `Gilded Sniper` counting a kill as inside Golden Bot **only while the bot is active** and the v28 change
  (bots move while active, speed no longer tied to cooldown).
- Cross-references: [T013](T013-event-medal-economy.md) (medal income), [T006](T006-lab-queue-packing.md) (what cells buy),
  [T008](T008-uw-sync-with-stones.md) §4 (the 200-s sync package the bot must divide), [T017](T017-vault-keys-priority.md)
  (respec-to-0 lines).
