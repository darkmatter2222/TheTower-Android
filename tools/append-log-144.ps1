param()
# Appends the session-135 log entry (iteration 144) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 135 (iteration 144: four more lab layers priced on value)

## Asked

Rev 39 made seven layers value-complete; ten were still cost-side. One item: sum the printed value laws for the four
category layers whose per-line laws are already transcribed in this doc - **Q** (the twelve named Module labs), **J**
(Defense), **H** (Main) and **K** (Utility) - merge them into one schedule with the Rev 39 layers, the medal sheet and the
par, and say which parts of the order are stable.

## Sources

No new fetches. Inputs: the §Module named labs table (Rev 35: 12 lines, **254** levels, **0.718 3 Q**, **5 341.4 d**, the
value laws `+0.10 pp x n`, `+1 shard x n`, `-1 % x n`, `+20 % x n`, `+1 ban x n`), the §Defense Research table (Rev 29),
§Main Research (Rev 27), §Utility Research (Rev 30), the §cap table for the level itemisations, and the Rev 37 layer-`O`
figure. New script: `tools/lab-value-layers-2.ps1`.

## What was established

**1. Four new `Sigma ln` values** (reading R, the raw pp reading): `Q` **27.351 3** (12 lines), `J` **42.529 0** (15),
`H` **38.390 5** (15), `K` **20.051 6** (10) - densities **0.025 603**, **0.014 128**, **0.011 422**, **0.009 941** per
calendar day at five slots, and `x3.725` those with the stack. Per line they are **2.279 / 2.835 / 2.559 / 2.005** - `J`
is the second-highest per-line average in the tree, behind `F` (2.996) and ahead of `E` (2.303).

**2. The merged schedule (11 of 18 rows, 106 of 197 lines, `Sigma ln` 193.565, 14 877.4 calendar days).** Reading R:
`E 0.452374 > D 0.116339 > F 0.114946 > sheet 0.050720 > L 0.033768 > Q 0.025603 > par 0.017957 > J 0.014128 >
H 0.011422 > M 0.011315 > K 0.009941 > O 0.003481 > G 0.003412`. Reading P (pp laws as 1 + pp): `... L > par > Q 0.014562 >
M 0.011315 > J 0.008155 > K 0.005625 > H 0.004099 > O > G`. **Stable in both:** the head `E D F sheet L` and the tail
`O > G`. **Unstable:** the `J / H / K` middle block (40 lines), which is the pp-convention residual - the one modelling
choice left in the lab ledger.

**3. Two layers are one line deep, now quantified per coin.** `Q`: the four `* Effect Bans` labs take **99.70 %** of the
coins for **21.27 %** of the `ln`, so the other eleven lines - `Reroll Shards` (`ln 4.605` for 13.327 9 T), `Daily Mission
Shards` (3.912 for 4.500 02 T), the two `* Cost` twins, the drop lines and `Shatter Shards` - are **1 216x** better per
coin. `H`: `Enhancement Coin Discount` is **100 %** of the coins (8.264 45e17 of 8.264 5e17) for **12.00 %** of the `ln`;
the other fourteen lines cost **3.536 09e13** coins between them and are **171 464x** better per coin. Practical form: buy
every line of those layers except the one big line, then let the big line run last and unboosted.

**4. Two print corrections.** (a) **Defense is 655 levels, not 635**: the §cap table itemises
`100+100+100+50+20+20+35+20+10+50+20+30+20+10+60+10 = 655` and layer `J` = 645 (655 - `Garlic Thorns` 10), while the
Rev-29 `Sigma 16 lines` row printed 635 - short by exactly one 20-level line. Both places corrected in the doc.
(b) **the presets row is H069**: with `Presets` = 5 levels layer `H` is `Sigma ln 38.3905 -> 0.011422`, with the cap
table's 1-level `Card Presets` it is **36.7811 -> 0.010943**; `M` sits at **0.011315**, so that single cell decides whether
`H` or `M` comes first - and the category level total (712 vs 716) is a one-tap discriminator. Also `K` re-adds exactly:
571 + the two 20-level Level Skip lines = the printed **611** ✓, and `Q` re-adds to **254** levels and **0.718 3 Q** ✓.

## Verdict

**T006 Rev 40**: new section "Four more layers on the value side (`Q`, `J`, `H`, `K`), and the merged schedule" (the two
readings defined, the four-layer table, the two schedules, the two per-coin asymmetries, the two print corrections), 3
checklist items, 3 falsification bullets, Rev line + Sources bullet. The §Defense Research `Sigma 16 lines` cell changed
**635 -> 655** with an inline note. **New hypothesis H069** (presets line 5 or 1 level, with the 712/716 discriminator).
INDEX: T006 row to Rev 40, the H069 row, session-135 anchor; README: T006 description + confidence cells.

## Next open question

Device list: **H069** (new, one tap: the Main category row count and the presets cap), then **H063**, **H065**, **H064**,
**H014**, **H066**, **H067**, **H068**, **H062**, **H061**, plus the coin `income/day` counter. Paper candidates:
(a) the remaining value layers `A` (39 UW tables), `B`, `B2`, `C`, `I`, `N`, `P` - `I` and `N` need their per-line laws
re-transcribed (only the column shapes are in the doc), `A` has its laws in Appendix A.1; (b) the **stone** side of the day
scale (Bot+ 6 250 st vs UW sync 910 st, T014 3.3); (c) the same ledger for the non-lab currencies of T010.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
