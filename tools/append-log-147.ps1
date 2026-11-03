param()
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$idx = [System.IO.File]::ReadAllText('docs/INDEX.md', [System.Text.Encoding]::UTF8)
Write-Output ('INDEX head-marker count=' + ([regex]::Matches($idx, 'stones as the third resource')).Count)
if ($txt.Contains('Session 138 (iteration 147')) { Write-Output 'log already has session 138'; return }
$entry = @'


# 2026-11-03 - Session 138 (iteration 147: stones as the third resource of the day model)

## Asked

The lab ledger priced every layer on two resources (coins at the 700 T/day anchor, queue clock at five slots). The stone
sinks had no place on that axis, so their size was only known as years-of-a-counter (T014 3.3). One item: add **stones** as
the third resource of the same model, `cost = max(Sigma coins / 700 T , Sigma clock / 5 , Sigma stones / income_st)`, price
the whole stone census on it, and merge the two schedules.

## Sources

No new fetches. Inputs: **T008 3.1** (the 27 basic lines with levels, printed `min -> max (step)` value rows and the four
budget bills), **T008 1.4 / 1.6** (the nine UW+ trees, their `Value` rows and the four family step lists), **T014 3.3**
(the total-week stone grid 177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5 F2P and the boosted column), **T008 1**
(the unlock ladders 9 705 and 14 650), **T012 2.x** (the eight currency masteries with their level-0 values), **T015 1.4**
(the five Bot+ level-0 multipliers). New script: `tools/stone-day-ledger.ps1`.

## What was established

**1. The income side.** Stone income per day = the T014 3.3 total-week row / 7: **13.929** with no tournaments
(45 boxes + 52.5 trades), **25.357** F2P at Copper 23-30 (**28.571** boosted), then **35.929 / 75.643 / 168.214 /
928.214 / 2 893.929**. The model reproduces T014 3.3's own answers from these numbers: 452 282 / 25.357 = 17 836 d =
**48.9 y** (doc 49.0) and / 28.571 = **43.4 y** (doc 43.5), so the third term is consistent with the printed ladder.

**2. The value convention that makes stone rows comparable to lab rows.** A stone purchase grants the printed **level-0**
value (the same fact T012 calls the 10 % law for masteries), so a block of n levels is `ln(v(n)/v(0))`, with
`v(n) = min + step x n` on the 22 arithmetic rows and a fitted geometric `r = (max/min)^(1/levels)` on the five xdamage
rows. Closure: the four budget bills re-add (**11 461 / 25 045 / 49 194 / 244 542**), the nine trees re-add to
**179 240**, and every fitted cap equals its printed value cell (only `Death Creep` differs, 1 100 vs printed 1 110, the
known last-cell +80). `Sigma ln` = **67.468 4** (27 basic lines) and **25.214 6** (nine UW+ trees).

**3. The stone layer is front-loaded, now with numbers.** Marginal by stage: **0.041 445 / 0.022 090 / 0.012 283 /
0.003 272** ln/day for stages 1-4, i.e. the first three stages are **20.1 %** of the bill for **62.6 %** of the layer's
ln, and the last stage is **12.7x** dearer per ln than the first. Knee-first selection also beats uniform depth: the
8 865 package carries ln **27.028 1** at **328.0 st/ln**, against 11 461 st for ln 18.732 3 (**611.8 st/ln**) if every
line is simply taken to L5 - a **1.86x** premium for the naive plan. The nine sub-blocks re-add to **8 865 / 27.028 1**,
and the densest of them is the five xdamage lines at L15 (**4 205** st, ln 17.000 2, **247.4 st/ln**, **0.102 515**/day);
the dearest cells at cap are Spotlight Angle **27 025** st/ln, GT Duration 11 133, Spotlight Bonus 10 952.

**4. The other stone rows.** UW+ first-5 **24 265** st for ln 14.601 3 (**0.015 258**/day, 1 661.8 st/ln) and its tail
154 975 st for 10.613 3 (0.001 737); inside the block `Charged Mine` 754 st/ln is the densest tree and `Cover Fire`
5 098 the dearest. Bot+ unlocks 6 250 st, ln 2.001 7 (**0.008 121**); the eight currency mastery unlocks 7 000 st, ln
0.325 7 in the `ln(1+pp)` form or 1.018 8 counting `Free Upgrades` as one step (**0.001 180 ... 0.003 691**); the pure
unlock rows (9 UW slots + 9 UW+ unlocks + 4 assist slots + Synchronicity) are **32 855** st at ln 0 by the ledger
convention, or ln **17.328 7** = **0.013 374**/day if each is worth one step. Whole stone census **491 387** st =
**19 378.6 d = 53.1 y** at the Copper-bottom income (492 887 on the 6 000-stone Synchronicity print - the same two prints
T008 1 already logs).

**5. The merged 27-item schedule, and its invariant head.** Reading R: `E 0.452374 > D 0.116339 > F 0.114946 > xdamage
quintet 0.102515 > knee pkg 0.077310 > sheet 0.050720 > L 0.033768 > Q 0.025603 > S1b 0.022090 > A 0.018143 > par
0.017957 > UW+ first-5 0.015258 > B 0.014480 > J 0.014128 > S1c 0.012283 > H 0.011422 > M 0.011315 > K 0.009941 > Bot+
0.008121 > masteries 0.003691 > O 0.003481 > G 0.003412 > B2 0.003387 > S1d 0.003272 > S2b 0.001737 > C 0.000020 > P
0.000006 > unlock rows 0`. The head is now **six items** (`E D F quintet knee-pkg sheet`, then `L`) and identical under
the pp reading. Because the stone rows scale linearly with the band while the lab rows do not, the two schedules cross:
the quintet's density is **0.056 3 / 0.102 5 / 0.145 3 / 0.305 8 / 0.680 1 / 3.752 6 / 11.699 7** at the seven incomes,
so **without tournaments** the whole stone layer drops below `L`, and **from the Gold band up** the quintet outranks `E`
and becomes the first purchase of the entire ledger.

## Verdict

**T008 Rev 12**: new section "3.2 The stone layer on the day scale - stones as the third resource" (the model + income
grid with the T014 cross-check, the level-0 value convention, the four-stage marginal table, the nine ranked sub-blocks,
the UW+/unlock rows, the merged 27-item schedule, the band-scaling row), 3 checklist items, 4 falsification bullets, Rev
line + Sources bullet. INDEX T008 row to Rev 12 + session-138 anchor; README T008 confidence cell to Rev 12.

## Skews

* `Death Creep` fitted cap **1 100** vs printed **1 110** (the one `+80` last step) - 0.9 % of that tree, 0.04 % of the layer.
* Synchronicity **4 500** (T015, 3 x 1 500) vs **6 000** (T008 1, 1 500 + 3 x 1 500): the census is 491 387 or 492 887 st.
* The five xdamage rows use a fitted ratio between the two printed cells, so their intermediate values are model, not print.
* `Free Upgrades` (1 -> 10, a count not a multiplier) is the one mastery row without a `ln(1 + pp)` value; both conventions
  are printed (0.3257 / 1.0188) and the row does not change rank either way.

## Next open question

Device list unchanged: **H069** first (the presets row, one tap), then **H063**, **H065**, **H064**, **H014**, **H066**,
**H067**, **H068**, **H062**, **H061**, plus the coin `income/day` counter. New device reads from this pass: the first three
cells of one `x damage` column and of one UW+ tree (they settle the fitted-ratio note), and whether a freshly unlocked UW+
ability reads its level-0 value or **0** (settles the 25 unlock rows worth 32 855 st). Paper: (a) re-transcribe the `I` and
`N` value columns (18 lab lines) to close the lab census; (b) the same three-resource merge for the gem and shard ledgers
(T025 prints their bills 114 500 / 82 380 against 435 gems and 1 470-3 570 shards per week); (c) the milestone stone cells
(4 430 free / 7 870 paid) as a lump-sum fourth term in `income_st`.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
