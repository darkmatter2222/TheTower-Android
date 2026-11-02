# T023 — Guardian economy: the bit price model, the Fetch droptable, and the sync layer

Rev: 5 (2026-11-02) — **bit income now has a printed ladder** (`wiki/currency/bits`, 2026-11-01): chest
`100/250/500/750 → 10/25/50/100` = **185/week** (Σ ✓) ⇒ **1 480/season** + store **75** ⇒ **1 555/season = 194.4/week**,
which prices Ally's 14 470 at **9.3 seasons** and the five-chip bill at **44.5 seasons**; the site's own “71 weeks” line
implies 203.8/week, so the ≈ 5 % skew between the two prints is recorded rather than resolved.
Rev: 4 (2026-11-02) — the **per-row grid is now double-sourced**: `wiki/system/guardian` (2026-11-01) prints the same six
tables with the **same row counts (92 / 92 / 101 / 62 / 73 / 72)** and the same ladders, so the `rows = levels + 2` rule and
every cap rest on two independent prints; it also prints Bounty's multiplier column as **`×0.01 … ×0.10`** (the increment
form), confirming the ① reconciliation, and restates the two facts that drive §3 (**Find is rolled first**, **skins
+0.6 % coins**) plus the slot table (2nd **200**, 3rd **300**, 4th **TBD**). Neither page prints a total for **Summon**,
so its bill stays a derivation (H052).
Rev: 3 (2026-11-02) — the **whole per-row price grid is now printed** (Tower Hub `wiki/system/chips`, 2026-11-01, tables
“as of v29.1.2”) and it settles the fencepost: **level 1 costs 0 bits** (that row *is* the chip's base state) and the
ladder then runs arithmetically. With that law + the caps read off the *value* ladders, **five of five printed chip
totals re-add** (§2.1: Attack 13 345 = 4 750 + 4 095 + 4 500, Bounty 13 110, Ally 14 470 = 6 370 + 4 095 + 4 005,
Scout 13 850 = 4 900 + 1 150 + 7 800 unique solution, Fetch 14 480). The table rule becomes **`rows = longest line's
level count + 1`** (header), which is confirmed on five chips and pins **Summon's Cash Bonus at 72 levels = 255 600 bits**;
adds the printed Fetch roll order (“Find is rolled first; Double Find only applies after a successful find”) ⇒ **1 080
item-units/day** at max, and per-line first-10 sums (§2.2).
Rev: 2 (2026-11-02) — the **per-level bit price model is confirmed by a third source and now reproduces four of four
printed chip totals exactly** (Attack 13 345, Bounty 13 110, Ally 14 470, Scout 13 850 — §2.1), which yields the **level
caps of every line** and a **bits-per-point ranking** (§2.2); adds the printed value ladders (steps per level), the
`rows = cap + 2` table rule (⇒ **Summon's longest line = 71 levels**), and the targeting/proc rules.
Rev: 1 (2026-11-02) · Currency: **Bits** (spent) → **Gems, Medals, Module Shards, Coins** (Fetch) + **Coins/Cash** (Bounty, Summon)
**Value:** ★★★★ — Fetch is the only *daily-capped multi-currency drip* after the ad icon (20 gems + 10 medals + ≈ 29 shards
/day at max, with **coins and shards uncapped**), Bounty is a **×2 coin multiplier** that multiplies with every other coin
bonus, and the whole layer costs **69 255 bits** for the five chips whose totals are printed, plus **≈ 256 k** for Summon
(its Cash Bonus line alone is 255 600) — one-time, permanent, and independent of gems.
**Confidence:** **High** — **Verified (arithmetic, Rev 3)**: the **printed per-row ladders** (§2.1) re-add **five of five**
printed chip totals exactly (Attack 13 345 · Bounty 13 110 · Ally 14 470 · Scout 13 850 · Fetch 14 480), the `rows` rule now
closes on the value ladders on five chips, Fetch's droptable sums to **exactly 100.0 %** ✓ and its expected column re-adds
to the **1 080** item-units the roll order implies. Only Summon's two short line caps are still solved-from-the-row-count →
[H052](../hypotheses/H052-guardian-chip-line-caps.md); the per-day flow still wants a device log
([H040](../hypotheses/H040-fetch-procs-offline.md)/[H041](../hypotheses/H041-fetch-cap-semantics.md)).
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

Printed chip totals (all five on the page or in the per-chip guides): **Fetch 14 480** (= 3 660 + 4 700 + 6 120), **Bounty
13 110**, **Attack 13 345**, **Ally 14 470** — the page states it twice, “fully upgrading Ally costs 14 470 bits … roughly
**71 weeks** of saving” ⇒ ≈ **204 bits/week** at that stage — and **Scout 13 850**; Summon's total is not printed (§2.1
derives ≈ 256 k–287 k). Five-chip bill **69 255 bits**.

**Bit income (printed ladder, `wiki/currency/bits`, 2026-11-01).** The Guild Weekly chest pays `100 → 10`, `250 → 25`,
`500 → 50`, `750 → 100` bits = **185/week** at max contribution (Σ ✓) ⇒ **740** per four-week month and **1 480** per
eight-week season (`185 × 8` ✓), plus the Guild Store's three lines **25 + 50 + 75 tokens → 25 bits each** = **75 bits**
per season ⇒ **1 555 bits/season = 194.4/week**. Against the bills: Ally **14 470 ⇒ 9.3 seasons**, the five-chip bill
**69 255 ⇒ 44.5 seasons**. The site's own “**71 weeks**” statement for Ally implies **203.8 bits/week** — a ≈ 5 % skew
against the printed **194.4** (the store's 75 bits plus rounding cover most of it), so both prints are kept (§2; T022 §1.1).

**Knee-first, as everywhere else:** the *first* row of a line is free and the next rows are 1–2 bits, so a fresh `k = 1`
line's first 10 levels cost **45 bits** (§2.2) — cheap multipliers that get buried under the 90-level cooldown tail. Take every line's **first 10–20 levels** on every
chip before deepening any one line.

### 2.1 The price model, transcribed row by row: five of five printed totals reproduce

Tower Hub prints the **whole per-row grid** (values *and* bit prices, ten rows per line, “as of v29.1.2”), and the grid
settles the fencepost that Rev 2 left open: **the level-1 row of every line costs 0 bits** — that row *is* the chip's
base state — and the ladder then climbs arithmetically. So `price(level 1) = 0` and the first **paid** level is the
table's second row. Writing `n` for the number of *paid* levels, a line's total is the sum of its printed ladder — the
`k·n(n+1)/2` form of §2 for the plain ladders, with the two printed offsets below. Reading the caps off the **value**
ladders (each row adds exactly one step) and adding:

| Chip | Line 1 (printed prices L1→L10) | Line 2 — Cooldown | Line 3 | Paid levels (1, 2, 3) | Total | Printed |
|---|---|---|---|---|---|---|
| **Attack** | % · `0,25,50,…,225` (+1 %/lv → 20 %) | `0,1,…,9` (120→30 s) | Targets · `0,100,…,900` (1→10) | 19, 90, 9 | 4 750 + 4 095 + 4 500 = **13 345** | 13 345 ✓ |
| **Ally** | Recovery · `0,10,15,…,50` (1 %→50 %) | `0,1,…,9` (120→30 s) | Max Rec. · `0,1,…,9` (×1.1→×10) | **49, 90, 89** | 6 370 + 4 095 + 4 005 = **14 470** | 14 470 ✓ |
| **Bounty** | Multiplier · `0,1,…,9` (×1.01→×2) | `0,2,…,18` (120→60 s) | Targets · `0,100,…,900` | 99, 60, 9 | 4 950 + 3 660 + 4 500 = **13 110** | 13 110 ✓ |
| **Fetch** | Cooldown · `0,2,…,18` (120→60 s) | Find · `0,20,25,…,60` (10 %→50 %) | Double · `0,10,15,…,50` (2 %→50 %) | 60, 40, 48 | 3 660 + 4 700 + 6 120 = **14 480** | 14 480 ✓ |
| **Scout** | Cooldown · `0,1,3,…,17` (105→35 s) | Range · `0,10,15,…,50` (×2.0→×4.0) | Duration · `0,10,20,…,90` (5→44 s) | **70, 20, 39** | 4 900 + 1 150 + 7 800 = **13 850** | 13 850 ✓ |
| **Summon** | Cooldown · `0,1,3,…,17` (140 s −1/lv) | Duration · `0,15,25,…,95` (5 s +1/lv) | Cash Bonus · `0,100,…,900` (×1→×72) | ≤70, ≤70, **71** | 255 600 + ≤ 30 956 ⇒ **≈ 256 k–287 k** | not printed → H052 |

Three ladder shapes appear, all read straight off the print: a **plain** ladder `0, k, 2k, 3k…` (price = `k·n` for the
*n*-th paid level ⇒ Σ = `k·n(n+1)/2`) and a **`+k`-offset** ladder `0, 2k, 3k…` (Ally Recovery, Fetch Find and Double
Find, Scout Range — the first paid row is already `2k` or `20`/`10`), plus the **odd** ladder `0,1,3,5…` on the
Summon/Scout Cooldown (Σ = `n²` for the plain 1,3,5… series; 4 900 for 70 paid levels). Every total above is the sum of
the three printed ladders with caps taken from the value steps, and **five of five printed chip totals re-add exactly** —
the price model is no longer a fit, it is transcribed. Two consequences: **Ally's Max Recovery tops out at ×10** (89 paid
levels, not the 49 implied by Rev 2's solve) and **Scout's Range ends at ×4.0** (20 paid levels).

**Table rule (`rows = longest line's paid levels + 2`).** The site prints “Showing 10 of N rows”, and **two independent
tables give the same six counts — 92 / 92 / 101 / 62 / 73 / 72** (`wiki/system/chips` and `wiki/system/guardian`, both
2026-11-01). One row is one level
plus a header, so **paid levels = N − 2** for the longest line — and this now *closes* on the value ladders rather than
being assumed: Attack/Ally 92 ⇒ 90 = Cooldown 120→30 ✓; Bounty 101 ⇒ 99 = Multiplier ×1.01→×2.00 ✓; Fetch 62 ⇒ 60 =
Cooldown 120→60 ✓; Scout 72 ⇒ 70 = Cooldown 105→35 ✓. Therefore **Summon's 73 rows ⇒ 72 paid levels** on its longest
line, which its Cooldown (140 − 71 = 69 s) cannot reach ⇒ it is the **Cash Bonus** line: `0,100,…` ⇒ **×72.0** and
`100·T(71) = ` **255 600 bits** for that one line, i.e. ≈ 89 % of the chip's cost and the single most expensive line in
the layer (H052 keeps the two remaining Summon caps). **Neither of the two pages prints a chip total other than Ally's
14 470**, so the other four totals come from the guide/fandom line totals and Summon's remains a pure derivation.

### 2.2 The bits-per-point ranking (the actual buy order)

**First-10 sums come straight off the printed ladders** (cumulative bits for levels 1→10). Three shapes: a plain
`0,k,2k…` ladder totals **`k·45`**, a `+k`-offset ladder (`0,2k,3k…`) totals **`k·54`**, and the odd ladder
`0,1,3,5…` totals **81**. Printed values: Attack **1 125 / 45 / 4 500** (% · CD · Targets), Ally **270 / 45 / 45**, Bounty
**45 / 90 / 4 500**, Fetch **90 / 360 / 270** (CD · Find · Double), Summon **81 / 495 / 4 500**, Scout **81 / 270 / 450**.
*(The fandom per-level columns start at the first paid row, so their first-10 totals run one `k` ahead — 55 vs 45 — and
that one-row offset is exactly what separates the two §8 readings.)*

| Rank | Chip → line | ladder | Value per level | First 10 levels | Why it ranks here |
|---|---|---|---|---|---|
| 1 | **Bounty → Multiplier** | `0,1,…` | +0.01 (≈ +1 %) coins on tagged kills | **45 bits** | cheapest × in the layer, multiplies the T008 window |
| 1 | **Attack / Ally → Cooldown**, **Ally → Max Recovery** | `0,1,…` | −1 s / +0.1× | **45 bits** | same price tier, not currency lines |
| 3 | **Fetch / Bounty → Cooldown** | `0,2,…` | −1 s (120 → 60 s = 1 440 procs/day) | **90 bits** | ×2 on *every* row of the droptable |
| 3 | **Summon / Scout → Cooldown** | `0,1,3,…` | −1 s | **81 bits** | the odd ladder is cheaper than the `k = 2` one |
| 5 | **Summon → Duration**, **Scout → Duration** | `0,15,25…` / `0,10,…` | +1 s | **495 / 450 bits** | longer cash window (Summon) / distance window |
| 7 | **Fetch → Find Chance** | `0,20,25…` | +1 % find (all 5 currency rows) | **360 bits** | ≈ +12 gems-equivalent/day per +1 % (§3's model) |
| 7 | **Ally → Recovery**, **Attack → %**, **Scout → Range** | `0,10,15…` / `0,25…` | +1 % / +0.1× | **270 / 1 125 / 270** | Attack's `k = 25` ladder is the priciest of the three |
| 9 | **Fetch → Double Find** | `0,10,15…` | +1 % double | **270 bits** | lands *after* the caps bind |
| 10 | **Bounty/Attack → Targets, Summon → Cash Bonus** | `0,100,…` | +1 target / +1.0× cash | **4 500 bits** | the 100-bit lines — last, on every chip |

**So the order is:** every `k = 1` line on the chips you use → Fetch's Cooldown → Find Chance → the `k = 2`/odd proc lines →
the **100-bit** Targets/Cash Bonus lines only once the cheap ones are exhausted. Same conclusion as §3's rule of thumb, now
priced: the whole `k ≤ 10` layer of the **coin preset** is ≈ **24 600 bits** — Bounty Multiplier 4 950 + Cooldown 3 660
(**8 610**), Fetch's three lines (**14 480**), Summon's Cooldown + Duration (≤ **6 000**, caps pending H052) — and it
contains every high-value point in the layer.

**Two print reconciliations (same line, two display formats).** ① Bounty's multiplier prints **`×1.01` on the Chips page**
but **`0.01` in the Guardian page's base column** — these agree: one prints the total multiplier (`1 + 0.01`), the other the
increment, so level 1 = **+1 %** coins and level 10 = **×1.10**. ② The Chips-page droptable prints (2026-11-01) **0.4 / 0.1** for the
two module rows and re-adds to **100.0 %** exactly, while the fandom print (0.4 / 0.1) sums to **exactly 100.0 %** ✓ ⇒ §3's table stays
authoritative. (The earlier print's **0.45 / 0.12** variant summed to 100.07 %; the 2026-11-01 refresh removed the skew, so
the droptable now stands on two identical prints.)

**Proc rules that change the numbers** (Chips page): a chip only reaches enemies inside a **limited range** and **wastes the
activation** if none are in range; chips **ignore Target Priority** entirely; **Attack** takes the lowest-remaining-HP-%
targets (as of v29.1.2) and halves damage vs bosses; **Ally** packages are a *separate item type* and do **not** trigger
package effects such as the Galaxy Compressor module. Practical consequence: keep the chip windows inside a populated tower
range (§6 step 4), and do not expect Target Priority to steer the Guardian.

## 3. Fetch — the currency engine (droptable, caps, and the expected flow)

Per **successful find** (`Chips/Fetch`; the column sums to **100.0 %** ✓). The page now also prints the **roll order**:
“**Find Chance is rolled first; Double Find Chance only comes into play after a successful find**” — so a find yields 1
item, plus a second copy of the *same* row with the Double Find probability:

| Item | Chance | Daily cap | Expected/day at max chip (1 080 item-units) |
|---|---|---|---|
| **Coins** | 86.5 % | — | 934.2 coin rolls (uncapped) |
| **Gems** | 4 % | **20** | 43.2 ⇒ **capped at 20** |
| **Medal** | 2 % | **10** | 21.6 ⇒ **capped at 10** |
| **Reroll Shard** | 3 % | — | **32.4** |
| **Cannon / Armor / Generator / Core Shard** | **1 %** each | — | **10.8** each (**43.2** for the four) |
| **Common Module** | 0.4 % | **5** | 4.32 ⇒ within cap |
| **Rare Module** | 0.1 % | **2** | 1.08 ⇒ within cap |

The expected column re-adds to **1 080.0** ✓ (= the item-unit total, the arithmetic check on the table). Derivation:
max chip = cooldown **60 s** ⇒ **1 440 procs/day**, Find **50 %** ⇒ **720 finds**, Double Find **50 %** applied only to
finds ⇒ **720 × 1.5 = 1 080 item-units**. So the **gems and medals caps bind** (20 + 10/day, ≈ 64 % and 46 % of the raw
expectation lost) while **shards and coins never cap**: Fetch is ≈ **20 gems + 10 medals + ≈ 76 shard-units + ≈ 934 coin
rolls per day** — the shard flow alone can exceed T010's reroll-shard income, which is the point of the chip.

**Upgrade order (from the price model + the caps):** **Find Chance → Cooldown → Double Find.** Find Chance is +1 %/level
for **360 bits** across its first 10 levels (printed ladder `0, 20, 25, … 60`; the only line that raises *every* row of the table), the Cooldown halves the cycle to 60 s for 3 660 bits,
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
   costs; level **Find Chance** to L10 (printed `0, 20, 25, 30, … 60` ⇒ **360 bits**), then **Cooldown** to L10 (`0, 2, 4, …
   18` ⇒ **90 bits**).
3. Buy **Bounty** (200 tokens) → equip slot 2 (**200 bits**) → level its **Multiplier** line (printed `0,1,2,…` ⇒ the
   first 20 levels cost **190 bits** and read **×1.20**) — the cheapest × in the layer.
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
      120→111 s / ×1.1→×2.0; Bounty ×1.01→×1.10 / 120→111 s / 1→10; Fetch 120→111 s / 10→19 % / 2→11 %; Summon 140→131 s /
      5→14 s / ×1.00→×10.00; Scout 105→96 s / ×2.0→×2.9 / 5→14 s.
- [ ] The per-level **bit** steps are the printed ladders (`§2.1`): plain `0,k,2k…` on Attack %-Targets, Bounty
      Multiplier-Cooldown, Fetch Cooldown, Ally Cooldown-MaxRec, Scout Duration; offset `0,2k,3k…` on **Ally Recovery,
      Fetch Find (0,20,25…), Fetch Double Find (0,10,15…), Scout Range**; odd `0,1,3,5…` on **Summon and Scout Cooldown**.
      Expected **level-10 cumulative**: 45 (k=1) / 90 (k=2) / 81 (odd) / 1 125 (Attack %) / 270 (offset k=5) / 360 (Fetch
      Find) / 4 500 (the 100-bit lines).
- [ ] Each chip's total reads **13 345 / 13 110 / 14 470 / 13 850 / 14 480** bits (§2.1), and the caps read: Ally
      **50 / 91 / 90** levels, Scout **71 / 21 / 40**, Bounty **100 / 61 / 10**, Fetch **61 / 41 / 49**, Attack
      **20 / 91 / 10** ([H052](../hypotheses/H052-guardian-chip-line-caps.md) keeps only Summon's two short lines).
- [ ] **Summon's Cash Bonus caps at 72 levels** (⇒ ×72.00 and **255 600 bits** for that line; the panel's line total is
      the check on the `rows = levels + 2` rule) and its Cooldown starts at **140 s** (not 40 s).

## 8. Falsification

- **Price-model fencepost (settled by the per-row print, still worth one device read).** Rev 2 had two candidate readings;
  the 2026-11-01 grid decides: **the level-1 row reads 0 bits** and the ladder climbs from there, which is exactly the
  arithmetic that re-adds all five printed chip totals (§2.1). The device test is now trivial — open a chip's upgrade
  panel and read the **first row's** price: **0** confirms §2.1; **`k`** (25 on Attack %, 1 on Bounty Multiplier) means the
  site's rows are off by one and every §2.2 first-10 figure rises by `k`, while the chip totals stay as printed.
- If the Ally/Scout caps are not (50, 91, 90) / (71, 21, 40) levels — i.e. Ally Max Recovery does not reach **×10**, or
  Scout Range does not reach **×4.0** — the value-ladder caps are wrong → record the three caps per chip (H052); the
  printed chip totals do not depend on the solve, but the per-line Σ in §2.1 does.
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
- Tower Hub `wiki/system/guardian` (last verified **2026-11-01**, 9 data tables) — the **second copy of all six per-row
  grids** with the **identical** row counts (Ally **92**, Attack **92**, Fetch **62**, Bounty **101**, Summon **73**,
  Scout **72**) and the same ladders/prices as the Chips page, which is what makes the `rows` rule and the caps two-source
  facts; the six-chip **base table** (`Ally 120 s / 1 % / 1`, `Attack 120 s / 1 % / 1`, `Bounty 120 s / ×0.01 / 1`,
  `Fetch 120 s / 10 % / 2 %`, `Summon 140 s / 5 s / ×1.00`, `Scout 105 s / ×2.0 / 5 s`) with the per-chip **source column**
  (Ally/Attack = Base, Bounty/Fetch = **Guild Shop 200 Tokens**, Summon = **Season 5**, Scout = **Season 7**); the slot
  table **2nd 200 / 3rd 300 / 4th TBD** bits; Bounty's multiplier column printed in **increment form `×0.01 … ×0.10`**
  (the Chips page prints the total form `×1.01 … ×1.10` — same ladder, §2.2 ①); Summon's rows (Cooldown 140→131 s on the
  odd ladder, Duration 5→14 s at `0,15,25…`, Cash Bonus `0,100…900` ⇒ ×10.0 by level 10) with **no chip total printed**;
  and the two “Good to know” laws restated (**Find first, Double only after a find**; **Guardian skins +0.6 % coins**).
- Tower Hub `wiki/system/chips` (same date, tables “as of v29.1.2”) — the **per-chip price law** (“every level adds a fixed step, and each level costs a fixed number of bits more than the one before”)
  and the first-10 ladders used in §2.1/§2.2 (Attack `25`/`1`/`100`, Ally `5`/`1`/`1`, Bounty `1`/`2`/`100`, Fetch
  `2`/`5`/`10`, Summon `2`/`2`/`100`, Scout `5`/`2`/`10`); the row counts **92 / 92 / 101 / 62 / 73 / 72**; the
  “**14 470** bits ≈ **71 weeks** of saving” statement for Ally (⇒ ≈ 204 bits/week of income at that stage); the chip
  **proc/targeting rules** (limited range, activation wasted if nothing is in range, Target Priority ignored, Attack picks
  lowest-HP-% as of v29.1.2, Ally packages are a separate item type that ignores Galaxy Compressor); the base-value table
  (Ally 120 s/1 %/×1.1, Attack 120 s/1 %/1, Bounty 120 s/×0.01/1, Fetch 120 s/10 %/2 %, Summon 140 s/5 s/×1.00, Scout
  105 s/×2.0/5 s); slot 2 = **200** / slot 3 = **300** bits (4th “TBD”); the chip sources (**Bounty/Fetch 200 tokens**,
  Summon = Season 5, Scout = Season 7); the 24 h Fetch caps restated (20 gems / 10 medals / 5 common + 2 rare modules);
  “**Guardian skins add +0.6 % coins**”; the Fetch droptable with **0.4 / 0.1** module rows (Σ = 100.0 % ✓) and the printed
  **roll order** (“Find Chance is rolled first; Double Find Chance only comes into play after a successful find”); the
  **full per-row price grids** used in §2.1 (level-1 row = **0 bits**; plain `0,k,2k…` ladders, the offset `0,2k,3k…` ladders
  on Ally Recovery / Fetch Find / Fetch Double / Scout Range, and the **odd** `0,1,3,5…` Cooldown ladders on Summon and
  Scout); the value ladders for the first 10 rows of every line (Attack 1→10 % · Ally 1→10 % and ×1.1→×2.0 · Bounty
  ×1.01→×1.10 · Fetch 120→111 s / 10→19 % / 2→11 % · Summon **140→131 s** / 5→14 s / ×1.0→×10.0 · Scout 105→96 s /
  ×2.0→×2.9 / 5→14 s); “fully upgrading **Ally** costs **14 470** bits ≈ **71 weeks** of saving”; slot 2 = 200 / slot 3 =
  300 bits restated in “Good to know”; and Summon’s printed behaviour (**2 enemies/s** from the Basic/Tank/Ranged/Fast
  types, the cash bonus pays for *every* kill during the activation, summoned enemies do not gain Ultimate status **except**
  summoned Basics, and the Season-5 description was corrected after a Discord report).
- `tools/gm_strings.txt` — `Assets\Scripts\Guilds\GuardianChips.cs`, `Guilds\GuardianPresetsUI.cs`,
  `Assets\Scripts\GuardianPresetData.cs` (a preset is its own data object ⇒ per-preset chip levels),
  `Assets\Scripts\RespecGuardianUI.cs` (the dedicated respec screen), `SummonPortal.cs` + `SummonPortalManager.cs`,
  `ScoutPingVfx.cs`, and the UI string `Fetch Ability` — i.e. presets and the Guardian respec are first-class systems,
  which is what §5's bit-refund mechanic rests on.
- Cross-references: [T016](T016-guild-tokens-bits.md) (where bits and tokens come from), [T017](T017-vault-keys-priority.md)
  (respec-to-0 and the preset node), [T008](T008-uw-sync-with-stones.md)/[T015](T015-bot-economy.md) (the windows Bounty
  and Summon sync into), [T010](T010-module-merge-chain.md) (what the shards are spent on),
  [T022](T022-free-currency-census-paid-ladder.md) §1 (the daily gem budget this adds to).
