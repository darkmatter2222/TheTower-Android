# H052 — Guardian chip line caps: are Ally (60, 90, 49) and Scout (16, 70, 40) the real level counts?

Status: open · Raised: 2026-11-02

**Claim.** Every Guardian chip line is priced `price(level n) = k·n` bits, so its total is `k·n(n+1)/2`
([T023 §2.1](../techniques/T023-guardian-economy.md)). Four chip totals printed by two wikis reproduce exactly under
that closed form, which lets the **unprinted caps be solved**:

| Chip | A (k) | B = Cooldown (k) | C (k) | Solved/known caps | Re-adds |
|---|---|---|---|---|---|
| Attack | 25 | 1 | 100 | 19, 90, 9 (fandom) | **13 345** ✓ |
| Bounty | 1 | 2 | 100 | 99, 60, 9 (fandom) | **13 110** ✓ |
| **Ally** | 5 | 1 | 1 | **60, 90, 49** (solved) | **14 470** ✓ |
| **Scout** | 5 | 2 | 10 | **16, 70, 40** (solved) | **13 850** ✓ |
| Fetch | 2 | 5 | 10 | 60, ≈43, ≈50 (line totals 3 660 / 4 700 / 6 120) | **14 480** ✓ |
| **Summon** | — | 2 | 100 | longest line = **71** (from “10 of 73 rows” − 2) | not printed |

Three consequences need the device:

1. **Ally's Max Recovery cap.** Under `m = 49` levels at +0.1×/level the line ends near **×6.0**, but fandom's summary
   prints ×10 (89 levels). If the panel's last Max Recovery level reads ×6.0 the solve is right; ×10 means the Cooldown or
   Recovery line owns the extra levels and the pair must be re-solved from the panel's own totals.
2. **Scout's Range cap.** Under `n = 16` levels at +0.1×/level the line ends near **×3.6** (vs the ×6 in the older summary).
3. **Summon's Cash Bonus line** should reach **≈ ×72** (71 levels at +1.0×/level, ≈ 255 600 bits) — that would make it, by
   far, the largest single bit sink in the layer and the last thing any account should buy. Its `k` is the printed
   100-bit step, so the *price* is known even though the cap is not.

**Why it matters.** The caps fix the tail cost of each line, and the tail is where the bits go: Attack's 19-level % line
alone is 4 750 of its 13 345 bits, and a 71-level Summon Cash Bonus line would be ≈ 255 600 bits — more than the other five
chips combined. The cap list is also what turns §2.2's ranking into a finite bill for the coin preset.

**Settling observation (device, no run needed).** `Guild → Guardian` → **hold** each chip (its stats + costs panel), then
read the **last** level's value and the line's own total, level by level:
1. Ally: `Max Recovery` final value = ___ × ; Recovery final value = ___ % ; Cooldown final value = ___ s;
2. Scout: `Range Bonus` final = ___ ×, `Duration` final = ___ s;
3. Summon: `Cash Bonus` final = ___ × and the panel's total bits for the chip = ___.
Record per line: `cap = ___, final value = ___, panel line total = ___`.

**Kill condition.** If a line's total is **not** `k·cap(cap+1)/2` with the panel's own `cap`, the price model has an extra
term (e.g. the first level free, which would give the 13 219 / 13 007 / 14 463 / 13 833 family — see T023 §8) and every
figure in §2.1–§2.2 must be recomputed from the panel's printed line totals.
