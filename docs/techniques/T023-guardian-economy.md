# T023 — Guardian economy: the bit price model, the Fetch droptable, and the sync layer

Rev: 2 (2026-11-02) — the **per-level bit price model is confirmed by a third source and now reproduces four of four
printed chip totals exactly** (Attack 13 345, Bounty 13 110, Ally 14 470, Scout 13 850 — §2.1), which yields the **level
caps of every line** and a **bits-per-point ranking** (§2.2); adds the printed value ladders (steps per level), the
`rows = cap + 2` table rule (⇒ **Summon's longest line = 71 levels**), and the targeting/proc rules.
Rev: 1 (2026-11-02) · Currency: **Bits** (spent) → **Gems, Medals, Module Shards, Coins** (Fetch) + **Coins/Cash** (Bounty, Summon)
**Value:** ★★★★ — Fetch is the only *daily-capped multi-currency drip* after the ad icon (20 gems + 10 medals + ≈ 29 shards
/day at max, with **coins and shards uncapped**), Bounty is a **×2 coin multiplier** that multiplies with every other coin
bonus, and the whole layer costs ≈ **80 k bits** — one-time, permanent, and independent of gems.
**Confidence:** **High** — **Verified (arithmetic, Rev 2)**: the closed form `k·n(n+1)/2` reproduces **four of four** printed
chip totals exactly (Attack 13 345, Bounty 13 110, Ally 14 470, Scout 13 850) plus Fetch's three line totals, and the price
law is stated independently by Tower Hub ("each level costs a fixed number of bits more than the one before"). Fetch's
droptable sums to exactly **100.0 %** ✓. The per-day expectations in §3 are still a model (Medium) until a device log —
see [H040](../hypotheses/H040-fetch-procs-offline.md); the solved line caps are
[H052](../hypotheses/H052-guardian-chip-line-caps.md).
**Ease:** 1 tap per level + 1 tap per day for the claims · **Prerequisite:** a **Guild** (T3 W10, T016) — the Guardian and
its chips only appear while you are in one — then **200 bits**.

---

## 1. What bits buy (the whole bill)

| Purchase | Bits | Where in the UI |
|---|---|---|
| Unlock the Guardian (comes with **1 slot** + **Ally** and **Attack** chips) | **200** | `Guild` → `Guardian` |
| **2nd chip slot** | **200** | `Guardian` → slot `+` |
| **3rd chip slot** | **300** | same (cap = **3** equipped chips) |
| Each of the 4 buyable chips (Bounty, Fetch, Summon, Scout) | **200 tokens** each | `Guild` → `Guild Store` (Summon = Season 5, Scout = Season 7) |
| A chip's three upgrade lines | see §2 | `Guardian` → **hold** a chip (its stats + costs) → tap to level |
| Skins | tokens | `Guild Store`; **each owned Guardian skin = +0.6 % coins**, permanent |

**Two UI facts that cost tempo if unknown:** chips **cannot be equipped, unequipped or upgraded during a run** (do it in the
menu between runs), and leaving the guild hides the Guardian — you keep the chips, but it stops fighting until you re-join.

## 2. The bit price model (closed forms, all reproduced)

Every upgrade line is arithmetically priced, so a line's total is `n` levels of its per-step:

| Line type | Cost per level | Σ to max | Reproduced from |
|---|---|---|---|
| **Multiplier / stat-1** (Bounty ×1.01→×2, Attack %, Ally %) | **1 bit/level** | `n(n+1)/2` — Bounty 99 lv = **4 950** ✓ | fandom `Chips/Steal` |
| **Cooldown** (120 s → 60/30 s) | **2 bits/level** | `n(n+1)` — 60 lv = **3 660** ✓ (Fetch's is the same) | both chip tables |
| **Targets** (1 → 10) | **100 bits/level** | `100·n(n+1)/2` — 9 lv = **4 500** ✓ | both chip tables |
| **Find Chance** (Fetch, 10 % → 50 %, 40 lv) | 20 then 5-bit steps from 25 | **4 700** ✓ | `Chips/Fetch` |
| **Double Find** (Fetch, 2 % → 50 %, 48 lv) | 10 then 5-bit steps from 15 | **6 120** ✓ | `Chips/Fetch` |

Printed chip totals: **Fetch 14 480** (= 3 660 + 4 700 + 6 120, derived from the ✓ line totals), **Bounty 13 110** ✓ (two
sources), **Attack 13 345**, **Ally 14 470**, **Scout 13 850**; Summon's total is not printed. Budget ≈ **80 k bits** for
the six-chip set.

**Knee-first, as everywhere else:** the *first* levels of a line are 1–2 bits, so a fresh line's first 10 levels are ≤ 55
bits — cheap multipliers that get buried under the 90-level cooldown tail. Take every line's **first 10–20 levels** on every
chip before deepening any one line.

### 2.1 The price model, closed: four of four printed totals reproduce

Tower Hub's chip pages state the law explicitly: “**every level adds a fixed step, and each level costs a fixed number of
bits more than the one before**” ⇒ a line's level-*n* price is `k·n` bits and its total to the cap is **`k·n(n+1)/2`**
(the same closed form as §2's rows, now with a third independent source). With that, the four printed chip totals
re-add **exactly**:

| Chip | Line A (`k`) | Line B — Cooldown (`k`) | Line C (`k`) | Levels (A, B, C) | Total | Printed |
|---|---|---|---|---|---|---|
| **Attack** | % (`25`) | −1 s/lv (`1`) | Targets (`100`) | 19, 90, 9 | 4 750 + 4 095 + 4 500 = **13 345** | 13 345 ✓ |
| **Bounty** | Multiplier (`1`) | −1 s/lv (`2`) | Targets (`100`) | 99, 60, 9 | 4 950 + 3 660 + 4 500 = **13 110** | 13 110 ✓ |
| **Ally** | Recovery (`5`) | −1 s/lv (`1`) | Max Recovery (`1`) | **60, 90, 49** | 9 150 + 4 095 + 1 225 = **14 470** | 14 470 ✓ |
| **Scout** | Range (`5`) | −1 s/lv (`2`) | Duration (`10`) | **16, 70, 40** | 680 + 4 970 + 8 200 = **13 850** | 13 850 ✓ |
| **Fetch** | Cooldown (`2`) | Find (`5`) | Double Find (`10`) | 60, ≈43, ≈50 | **14 480** ✓ (§2's line totals) | 14 480 ✓ |
| **Summon** | Cooldown (`2`) | Duration (`2`) | Cash Bonus (`100`) | see below | not printed → H052 | — |

The two new ones (Ally, Scout) are **solved** rather than printed: the Cooldown cap is pinned by its own value ladder
(Ally 120→30 s = 90 levels, Scout 105→35 s = 70), and the remaining two caps are the integer pair that closes the printed
total (Ally: `5·n(n+1)/2 + m(m+1)/2 = 10 375` ⇒ `n = 60, m = 49`; Scout: `5·n(n+1)/2 + 10·m(m+1)/2 = 8 880` ⇒ `n = 16,
m = 40`, and the neighbouring `n` leave non-pronic remainders ⇒ unique). Those caps imply **Ally Max Recovery tops out
near ×6.0** and **Scout Range near ×3.6** rather than the ×10 / ×6 of the older summary rows →
[H052](../hypotheses/H052-guardian-chip-line-caps.md).

**Table rule (`rows = cap + 2`).** Tower Hub prints “Showing 10 of N rows”, and `N − 2` is the longest line's level count on
every chip whose caps are known: Attack/Ally 92 ⇒ 90 ✓, Bounty 101 ⇒ 99 ✓, Fetch 62 ⇒ 60 ✓, Scout 72 ⇒ 70 ✓. Applying it to
**Summon (73 rows) ⇒ its longest line has 71 levels** — more than its 40 s Cooldown can hold, so that is the **Cash Bonus**
line: **×1.00 → ≈ ×72** at `k = 100` ⇒ ≈ **255 600 bits** for that one line (H052).

### 2.2 The bits-per-point ranking (the actual buy order)

**Σ of the first 10 levels of a line = `k · 55`** (the closed form `Σ k·n`). Two of the printed ladders start one step high
— fandom prices Fetch's first Find level at **20** and Double Find's at **10** rather than at `k`, so their first-10 sums are
**425** and **550** bits (§6 steps 2–3); the ranking below is unaffected.

| Rank | Chip → line | `k` | Value per level | First 10 levels | Why it ranks here |
|---|---|---|---|---|---|
| 1 | **Bounty → Multiplier** | 1 | +0.01 (≈ +1 %) coins on tagged kills | **55 bits** | cheapest × in the layer, multiplies the T008 window |
| 1 | **Ally → Max Recovery / Attack → Cooldown / Bounty → Cooldown** | 1 | +0.1× / −1 s / −1 s | **55 bits** | same price tier, not currency lines |
| 3 | **Fetch → Cooldown** | 2 | −1 s (120 → 60 s = 1 440 procs/day) | **110 bits** | ×2 on *every* row of the droptable |
| 3 | **Summon → Cooldown / Duration** | 2 | −1 s / +1 s | **110 bits** | more procs, longer cash window |
| 5 | **Fetch → Find Chance** | 5 | +1 % find (all 5 currency rows) | **275 bits** | ≈ +12 gems-equivalent/day per +1 % (§3's model) |
| 5 | **Ally → Recovery / Scout → Range** | 5 | +1 % / +0.1× | **275 bits** | survival lines |
| 7 | **Fetch → Double Find / Scout → Duration** | 10 | +1 % / +1 s | **550 bits** | Double Find lands *after* the caps bind |
| 8 | **Bounty/Attack → Targets, Summon → Cash Bonus** | 100 | +1 target / +1.0× cash | **5 500 bits** | the 100-bit lines — last, on every chip |

**So the order is:** every `k = 1` line on the chips you use → Fetch's Cooldown → Find Chance → the `k = 2` proc lines →
the **100-bit** Targets/Cash Bonus lines only once the cheap ones are exhausted. Same conclusion as §3's rule of thumb, now
priced: the whole `k ≤ 10` layer of the **coin preset** is ≈ **24 600 bits** — Bounty Multiplier 4 950 + Cooldown 3 660
(**8 610**), Fetch's three lines (**14 480**, all three are `k ≤ 10`), Summon's Cooldown + Duration (≈ **1 500**, caps
pending H052) — and it contains every high-value point in the layer.

**Two print reconciliations (same line, two display formats).** ① Bounty's multiplier prints **`×1.01` on the Chips page**
but **`0.01` in the Guardian page's base column** — these agree: one prints the total multiplier (`1 + 0.01`), the other the
increment, so level 1 = **+1 %** coins and level 10 = **×1.10**. ② The Chips-page droptable prints **0.45 / 0.12** for the
two module rows and sums to **100.07 %**, while the fandom print (0.4 / 0.1) sums to **exactly 100.0 %** ✓ ⇒ §3's table stays
authoritative.

**Proc rules that change the numbers** (Chips page): a chip only reaches enemies inside a **limited range** and **wastes the
activation** if none are in range; chips **ignore Target Priority** entirely; **Attack** takes the lowest-remaining-HP-%
targets (as of v29.1.2) and halves damage vs bosses; **Ally** packages are a *separate item type* and do **not** trigger
package effects such as the Galaxy Compressor module. Practical consequence: keep the chip windows inside a populated tower
range (§6 step 4), and do not expect Target Priority to steer the Guardian.

## 3. Fetch — the currency engine (droptable, caps, and the expected flow)

Per **successful find** (`Chips/Fetch`; the column sums to **100.0 %** ✓):

| Item | Chance | Daily cap | Expected/day, single-count (uncapped rows ×1.5 with double-find) |
|---|---|---|---|
| **Coins** | 86.5 % | — | uncapped |
| **Gems** | 4 % | **20** | 720 × 0.04 = 28.8 ⇒ **capped at 20** |
| **Medal** | 2 % | **10** | 14.4 ⇒ **capped at 10** |
| **Reroll Shard** | 3 % | — | ≈ 21.6 |
| **Cannon / Armor / Generator / Core Shard** | **1 %** each | — | ≈ 7.2 each (≈ 28.8 for the 4) |
| **Common Module** | 0.4 % | **5** | 2.9 ⇒ within cap |
| **Rare Module** | 0.1 % | **2** | 0.7 ⇒ within cap |

Max chip = find chance **50 %**, double-find **50 %**, cooldown **60 s** ⇒ **1 440 procs/day × 0.50 = 720 finds**; the
half of them that double (×2) lift the **uncapped** rows by **×1.5** (≈ 32 reroll shards, ≈ 43 type shards) but not the two
capped ones. The model says the **gems and medals caps bind** (20 + 10/day) while **shards and coins never cap**, so Fetch
alone is ≈ **20 gems + 10 medals + ≈ 75 shard-units/day** — i.e. the shard flow can exceed T010's reroll-shard income, which
is the point of the chip.

**Upgrade order (from the price model + the caps):** **Find Chance → Cooldown → Double Find.** Find Chance is +1 %/level
for ≤ 55 bits (the only line that raises *every* row of the table), the Cooldown halves the cycle to 60 s for 3 660 bits,
and Double Find only multiplies an already-capped payout — Tower Hub's rule of thumb (1 level of Double Find per 4–5
standard levels) matches the cap analysis. Fetch needs **no UW sync** (it gains nothing from UW bonuses).

## 4. Bounty and Summon — the sync layer (coin/cash, not combat)

* **Bounty** = **×1.01 → ×2** on tagged non-common enemies, and the bounty amount is computed from **all coin multipliers
  active on the target when it dies** (Golden Tower, Black Hole, Death Wave, Golden Bot, Spotlight — T008/T015). So its
  value is `bounty × whatever the window multiplier is`: fire it **inside** the **200-s GT / 100-s BH / 200-s DW** window
  (T008 §3's sync package), never between windows. Cooldown 120 → 60 s, targets 1 → 10.
* **Summon** = a portal spawning **2 enemies/s** for a duration, plus a **global cash multiplier** while active
  (base: 140 s cooldown, 5 s duration, ×1.00 cash). Sync it **onto Golden Tower**: GT multiplies cash as well as coins, the
  two cash bonuses stack, and kills during GT feed **Golden Combo (GT+)** — the same window as Bounty.
* **Attack** = execute (a % of the target's *missing* HP, half vs bosses) — pick it for wave-clear speed, not for currency.
  **Ally** = recovery packages that push HP above the normal cap (eHP builds; value falls off late). **Scout** = range
  bonus for distance-scaled damage (×2 → ×6, 105 s → 35 s, 13 850 bits) — a combat-only chip.

## 5. Presets and the bit-refund trick

| Mechanic | Value |
|---|---|
| `Presets` lab **level 5** | unlocks **2** Guardian presets (each keeps its **own** chip levels, slots, equipped chips, skin) |
| Vault `Guardian Presets` node | **+3** presets (5 total) **and removes the once-per-week respec limit** (T017) |
| **Switching a preset** | costs or **refunds the difference in bits** — so a 3-chip ↔ 1-chip preset swap returns bits to spend elsewhere |
| Guardian respec | **150 gems**, 1/week → **100 → 51 → 0** with the Vault nodes; refunds the chip/slot bits of the current preset, chips stay unlocked, the **200 unlock bits are not refunded** |

Practical use: keep a **coin preset** (Bounty + Summon + Fetch, all synced to the 200-s window) and a **clear preset**
(Attack + Ally + Scout). Swapping is free-to-cheap because of the bit refund, and the respec being **0 gems** at the third
Vault node means a mis-levelled chip line is never a real loss.

## 6. Steps (UI only)

1. `Guild` → `Guardian` → tap the **200-bit** unlock. Stay in a guild (§1).
2. Tap **Fetch** (after buying it in `Guild Store` for 200 tokens) to equip it in slot 1; **hold** it to see the upgrade
   costs; level **Find Chance** to L10 (20 + 25 + 30 + … + 65 = **425 bits**), then **Cooldown** to L10 (2+4+…+20 = **110 bits**).
3. Buy **Bounty** (200 tokens) → equip slot 2 (**200 bits**) → level its **Multiplier** line 1 bit/level (first 20 levels =
   **210 bits** for ×1.21) — the cheapest × in the layer.
4. Start a run with the coin multipliers you have (T008's windows); confirm in the run's stats screen that the bounty
   tag is visible on tagged enemies.
5. Claim the **daily** Fetch flow once per day and log the counters (§7) — the caps are per **24 h**; note whether the
   counter you see is 20 gems or fewer (H040/H041).
6. When `Presets` lab L5 is up, make the two presets of §5 and swap them by the run type (coin farm vs tier push).

## 7. Reproduction checklist

- [ ] `Guild → Guardian` unlock reads **200 bits**; the 2nd slot **200** and the 3rd **300**.
- [ ] `Guild Store` shows the buyable chips at **200 tokens** each.
- [ ] Holding the **Bounty** chip shows **1 bit** per Multiplier level (×1.01 → ×2, 99 levels) and **100 bits** per Targets
      level; the line totals are **4 950** and **4 500**.
- [ ] Holding **Fetch** shows **2 bits/level** on Cooldown (total **3 660**), **4 700** on Find Chance, **6 120** on
      Double Find ⇒ chip total **14 480**.
- [ ] A day of Fetch yields **20 gems and 10 medals** and then stops paying those two, while shards/coins keep coming.
- [ ] Switching from a 3-chip preset to a 1-chip preset **increases** the bit counter by the refunded difference.
- [ ] With the third Vault respec node owned, the respec button reads **0** gems and can be used twice in one week.
- [ ] The **value** ladders read as printed for the first 10 levels: Attack 1→10 % / 120→111 s / 1→10 targets; Ally 1→10 % /
      120→111 s / ×1.1→×2.0; Bounty ×1.01→×1.10 / 120→111 s / 1→10; Fetch 120→111 s / 10→19 % / 2→11 %; Summon 40→31 s /
      5→14 s / ×1.00→×10.00; Scout 105→96 s / ×2.0→×2.9 / 5→14 s.
- [ ] The per-level **bit** steps are `k` = **1** (Bounty Multiplier, Ally/Attack/Bounty Cooldown+MaxRec), **2** (Fetch/
      Summon/Scout Cooldown, Summon Duration), **5** (Ally Recovery, Fetch Find, Scout Range), **10** (Fetch Double Find,
      Scout Duration), **100** (Targets, Summon Cash Bonus) ⇒ the *level-10 cumulative* should read **55**, **110**, **275**,
      **550**, **5 500** bits, except where the ladder's first printed price is above `k` (Fetch Find **425**, Fetch Double
      Find **550**, Bounty Multiplier **55**).
- [ ] Each chip's total reads **13 345 / 13 110 / 14 470 / 13 850 / 14 480** bits (§2.1) — and the Ally/Scout caps are
      ≈ 60 / 90 / 49 and 16 / 70 / 40 levels ([H052](../hypotheses/H052-guardian-chip-line-caps.md)).

## 8. Falsification

- **Price-model fencepost (the one test that separates the two readings).** §2.1 uses `price(level n) = k·n`. If instead the
  **first level of every line is free** (`k·(n−1)`), the same caps give **Attack 13 219 · Bounty 13 007 · Ally 14 463 ·
  Scout 13 833** instead of 13 345 / 13 110 / 14 470 / 13 850. So: read a chip's total in its panel — the **13 345**-family
  means the model here is right, the **13 219**-family means level 1 is free and every `k·55` figure in §2.2 must drop by
  `k`.
- If the Ally/Scout caps are not ≈ (60, 90, 49) / (16, 70, 40) levels, the two *solved* rows of §2.1 are provisional —
  record the three caps per chip (H052); the printed totals themselves do not depend on the solve.
- If a line's per-level price is not **1** (multiplier) / **2** (cooldown) / **100** (targets), the tables are
  re-versioned → re-read the first 10 levels of each line and rebuild §2's Σ column from the panel.
- If the day's Fetch output exceeds **20 gems**, the cap counts **procs** rather than items (or resets at another hour
  than 00:00 UTC) → log taps vs the gem-counter delta ([H041](../hypotheses/H041-fetch-cap-semantics.md)).
- If the shard counters do not move overnight, Fetch's cooldown does **not** advance offline ⇒ the §3 expectations only
  apply to uptime and the 1 440-proc/day model is wrong ([H040](../hypotheses/H040-fetch-procs-offline.md)).
- If a Guardian skin's bonus and a tower skin's bonus are the same line (+0.4 % vs +0.6 % per skin), §1's skin row is a
  duplicate count → read the coin-multiplier breakdown with one skin of each type owned (T016 §4).

## Sources

- fandom `Guardian` (raw wikitext) — the **200-bit** unlock, **1 slot** + Ally/Attack as base chips, slot 2 = **200** /
  slot 3 = **300** bits (max 3), the chip table (base values: Ally 120 s/1 %/×1.10, Attack 120 s/1 %/1 target, Bounty
  120 s/×1.01/1, Fetch 120 s/10 %/2 %, Summon 140 s/5 s/×1.00, Scout 105 s/×2/5 s), chip sources
  (Bounty/Fetch **200 tokens**, Summon Season 5, Scout Season 7), “chips cannot be equipped/unequipped/upgraded during a
  run”, “the Guardian only appears when you are in a guild”, **presets** (`Presets` L5 = 2, Vault +3 = 5, switching costs or
  refunds the bit difference), **respec** 150 → 100 → 51 → 0 gems with the Vault nodes + the once-per-week limit, and
  **skins = +0.6 % coins each**.
- fandom `Chips/Fetch` (raw wikitext) — the **droptable** with chances and **daily caps** (gems 4 %/20, medal 2 %/10,
  reroll shard 3 %, the four type shards 1 % each, common module 0.4 %/5, rare module 0.1 %/2, coins 86.5 %) and the
  per-level prices with printed line totals **3 660 / 4 700 / 6 120** (all re-added ✓).
- fandom `Chips/Steal` (= Bounty, raw wikitext) — the “bounty = all active coin multipliers × the chip's multiplier”
  rule, and the per-level prices with printed totals **4 950 / 3 660 / 4 500** (all re-added ✓).
- Tower Hub `wiki/guide/guardian-guide` (last verified **2026-11-01**) — the per-chip max tables (Ally 1 %→50 %/49 lv,
  Max Recovery ×1.1→×10/89, Cooldown 120→30/90 = **14 470** bits; Attack 1 %→20 %/19, CD/90, Targets/9 = **13 345**;
  Bounty ×1.01→×2/99, CD 120→60/60, Targets 1→10/9 = **13 110**; Scout = **13 850**), the Fetch caps restated
  (**20 gems / 10 medals / 5 common + 2 rare modules per 24 h, coins and shards uncapped**), Fetch's cooldown costing
  **2 extra bits per level** vs the norm, the Fetch upgrade order, the Ally/Attack boss note (half damage), the Summon↔GT
  cash-stacking advice, and “summoned enemies cannot become Ultimate from a Battle Condition”.
- Tower Hub `wiki/system/chips` + `wiki/system/guardian` (both last verified **2026-11-01**, tables “as of v29.1.2”) — the
  per-chip price law (“every level adds a fixed step, and each level costs a fixed number of bits more than the one before”)
  and the first-10 ladders used in §2.1/§2.2 (Attack `25`/`1`/`100`, Ally `5`/`1`/`1`, Bounty `1`/`2`/`100`, Fetch
  `2`/`5`/`10`, Summon `2`/`2`/`100`, Scout `5`/`2`/`10`); the row counts **92 / 92 / 101 / 62 / 73 / 72**; the
  “**14 470** bits ≈ **71 weeks** of saving” statement for Ally (⇒ ≈ 204 bits/week of income at that stage); the chip
  **proc/targeting rules** (limited range, activation wasted if nothing is in range, Target Priority ignored, Attack picks
  lowest-HP-% as of v29.1.2, Ally packages are a separate item type that ignores Galaxy Compressor); the base-value table
  (Ally 120 s/1 %/×1.1, Attack 120 s/1 %/1, Bounty 120 s/×0.01/1, Fetch 120 s/10 %/2 %, Summon 140 s/5 s/×1.00, Scout
  105 s/×2.0/5 s); slot 2 = **200** / slot 3 = **300** bits (4th “TBD”); the chip sources (**Bounty/Fetch 200 tokens**,
  Summon = Season 5, Scout = Season 7); the 24 h Fetch caps restated (20 gems / 10 medals / 5 common + 2 rare modules);
  “**Guardian skins add +0.6 % coins**”; and the Fetch droptable print with 0.45/0.12 module rows.
- `tools/gm_strings.txt` — `Assets\Scripts\Guilds\GuardianChips.cs`, `Guilds\GuardianPresetsUI.cs`,
  `Assets\Scripts\GuardianPresetData.cs` (a preset is its own data object ⇒ per-preset chip levels),
  `Assets\Scripts\RespecGuardianUI.cs` (the dedicated respec screen), `SummonPortal.cs` + `SummonPortalManager.cs`,
  `ScoutPingVfx.cs`, and the UI string `Fetch Ability` — i.e. presets and the Guardian respec are first-class systems,
  which is what §5's bit-refund mechanic rests on.
- Cross-references: [T016](T016-guild-tokens-bits.md) (where bits and tokens come from), [T017](T017-vault-keys-priority.md)
  (respec-to-0 and the preset node), [T008](T008-uw-sync-with-stones.md)/[T015](T015-bot-economy.md) (the windows Bounty
  and Summon sync into), [T010](T010-module-merge-chain.md) (what the shards are spent on),
  [T022](T022-free-currency-census-paid-ladder.md) §1 (the daily gem budget this adds to).
