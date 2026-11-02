# H052 — Guardian chip line caps: do the two remaining Summon lines cap at ≤ 72 levels, and is Cash Bonus exactly 72?

Status: **narrowed 2026-11-02 (Rev 3 of T023)** · Raised: 2026-11-02

**What is settled.** Tower Hub's `wiki/system/chips` page (verified 2026-11-01) prints the **per-row price grid** for all
six chips: the **level-1 row costs 0 bits** (that row is the chip's base state) and each ladder then climbs arithmetically
— plain `0,k,2k…`, offset `0,2k,3k…`, or the odd `0,1,3,5…` on the Summon/Scout Cooldown. Reading each line's cap off its
own **value** ladder (+1 %, −1 s, +0.1×, +1 s per row) and summing the printed ladders reproduces **five of five printed
chip totals** ([T023 §2.1](../techniques/T023-guardian-economy.md)):

| Chip | Printed price ladder per line (level 1 → 10) | Cap (levels) ⇒ value | Σ line | Chip total |
|---|---|---|---|---|
| **Attack** | `0,25…` · `0,1…` · `0,100…` | 20 (%→20 %) · 91 (120→30 s) · 10 | 4 750 · 4 095 · 4 500 | **13 345** ✓ |
| **Ally** | `0,10,15…` · `0,1…` · `0,1…` | 50 (→50 %) · 91 (120→30 s) · 90 (→×10) | 6 370 · 4 095 · 4 005 | **14 470** ✓ |
| **Bounty** | `0,1…` · `0,2…` · `0,100…` | 100 (→×2) · 61 (120→60 s) · 10 | 4 950 · 3 660 · 4 500 | **13 110** ✓ |
| **Fetch** | `0,2…` · `0,20,25…` · `0,10,15…` | 61 (120→60 s) · 41 (→50 %) · 49 (→50 %) | 3 660 · 4 700 · 6 120 | **14 480** ✓ |
| **Scout** | `0,1,3…` · `0,10,15…` · `0,10…` | 71 (105→35 s) · **21 (→×4.0)** · **40 (→44 s)** | 4 900 · 1 150 · 7 800 | **13 850** ✓ |

That also retires the two Rev-2 *solves*: Ally's Max Recovery reaches **×10** (90 levels, 4 005 bits) and Scout's Range
**×4.0** (21 levels) — the values the older summary rows printed, now with a Σ that closes.

**Still open (the claim).** **Summon's** total is not printed. Its row count (73) ⇒ the longest line has **72 paid
levels**, and only the `k = 100` **Cash Bonus** line can be that long ⇒ **×72.00** and `100·T(71) =` **255 600 bits** for
that line alone. The two short lines are unresolved: Cooldown starts at **140 s** and falls 1 s/level (so its cap is
somewhere between 69 s and 140 s) and Duration starts at **5 s** and rises 1 s/level. The `rows` law bounds both at
**≤ 72 levels** ⇒ the chip's bill is **255 600 + ≤ 5 041 + ≤ 25 915 ⇒ ≈ 256 k–287 k bits**.

**Why it matters.** Summon's Cash Bonus is by far the largest single sink in the layer (≈ 89 % of the chip, more than the
other five chips' 69 255 bits combined), and the *early* levels are cheap: 10 levels cost 4 500 bits for **×10** cash.
So the buy order is "the first 10–20 levels of that line, then stop", and the bill for the whole layer only matters if a
player intends to finish it.

**Settling observation (device, no run needed).** `Guild → Guardian` → **hold** the **Summon** chip and read:
1. `Cash Bonus` final level = ___ (⇒ ×___) and that line's total = ___ bits — the direct test of the 72-level/255 600 figure;
2. `Cooldown` final = ___ s (⇒ levels = 141 − seconds) and its total = ___ bits; `Duration` final = ___ s (⇒ levels =
   ___) and its total = ___ bits;
3. the chip's total = ___ bits (compare against 256 000…287 000).

**Kill condition.** If `Cash Bonus` caps at something other than **72** levels, the `rows = longest line + 2` rule is
wrong for this page → recount from the panel and re-derive the other five caps from the row counts (T023 §2.1's rule
would then need a per-page constant). If a line's total is not the sum of its printed ladder with the panel's own cap, the
price model has an extra term and every figure in T023 §2.1–§2.2 must be recomputed from the panel's line totals.
