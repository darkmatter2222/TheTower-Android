param()
# Appends the session-122 log entry (iteration 131) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 122 (iteration 131: the named module labs close the census on two master ladders)

## Asked

Rev 34 left six unpriced lines, all in the Module category. One item: price every named lab of `Module Labs/<name>` end
to end, test whether the four ban labs share ladders, and close the Appendix B census.

## Sources

fandom, raw wikitext via `api.php?action=parse&page=X&prop=wikitext&format=json`. Slugs: `Module Labs/Common Drop Chance`,
`Rare Drop Chance`, `Reroll Shards`, `Daily Mission Shards`, `Module Shard Cost`, `Module Coin Cost`, `Unmerge Module`,
`Cannon Effect Bans`, `Armor Effect Bans`, `Generator Effect Bans`, `Core Effect Bans` + `Lab/Shatter Shards` (the tabber
`Module Labs` is only an 856-byte `{{:...}}` shell, and `Shatter Shards` is not under that prefix).
`Lab Category/Module Research` prints **15** rows: the 12 named + 2 assist + `Primary Module Bonus` (30). None of the
per-line pages prints a `Total`. New script: `tools/module-named-family.ps1`.

## What was established

**1. The level counts re-add to the census: 10+10+100+50+30+30+1+5+4+4+3+7 = 254** (the Module row's "12 lines, Sigma
254" exactly), and the twelve lines cost **0.7183 Q = 718 342.1 T** for **7 691 681 min = 5 341.4 d**. Per line: Common
Drop Chance **19.882 B / 59.74 d**, Rare **28.4254 T / 110.09 d**, Reroll **13.3279 T / 485.45 d**, Daily
**4.50002 T / 249.59 d**, Shard Cost **35.6142 T / 314.19 d**, Coin Cost **35.6257 T / 314.19 d**, Unmerge **10 M / 2 d**,
Shatter **2.06356 q / 1 472.85 d**, Cannon = Armor **55.0505 q / 495.83 d** each, Generator **50.505 q / 429.17 d**,
Core **555.555 q / 912.50 d**.

**2. Two master ladders carry all 18 ban levels.** Costs = the 8 values `50 B, 500 B, 5 T, 50 T, 500 T, 5 q, 50 q,
500 q` (ratio **10.0000** each step); times = the 8 values `24 000, 54 000, 90 000, 132 000, 180 000, 234 000, 294 000,
360 000 min`, whose differences are the **100-h arithmetic** series 30 000 / 36 000 / 42 000 / 48 000 / 54 000 / 60 000 /
66 000 min and whose head is `24 000 min = 400 h` - the same unit as `Battle Condition Reduction`. Subsequences:
Cannon = Armor = **{2,4,6,7}**, Generator = **{3,5,7}**, Core = **{1,3,4,5,6,7,8}**; the cost and time index sets are
identical for three labs and differ in exactly one cell (`Generator` L2: cost 500 T = index 5, time 162d 12h = index 6),
so the columns are indexed independently.

**3. Twins and near-twins.** `Cannon` = `Armor` with **0/4** differing cells in both columns. The two Cost lines share
one **time** column (**0/30** differ) but **18/30 cost cells differ**, Sigma delta **-11.53 B** - the shard version is
cheaper at every level from 2, so it is bought first.

**4. Four new clock shapes, none of them the x1.15 law**: Reroll **x1.0255-1.0268** over eleven steps (the most stable
column in the doc), Daily rising **1.0260 -> 1.0448**, Common approx. x1.075, Rare approx. x1.050. Cost tails: Reroll
approx. 1.028, Daily approx. 1.064, Common/Rare decay to **1.4582 / 1.5041** (approaching the family law from above);
Shatter's four ratios **8.7 / 2.6345 / 2.3881 / 2.1741** reproduce T010's printed pair exactly.

**5. Per-point prices.** Common Drop Chance **1.9882 x 10^10** coins per +1.00 pp vs Rare **2.8425 x 10^13** for the
same printed effect = **x1 430**; Daily **9.0000 x 10^10** per +1 shard (cheapest of the four), Reroll 1.3328 x 10^11,
Shatter 4.1271 x 10^14 per +20 %. The four in-band cheap buys - Reroll L1-10 **2 200 410 000** / 15.64 d, Daily L1-10
**5 960 700 000** / 15.95 d, Common all ten levels **19 882 000 000** / 59.74 d, Unmerge **10 000 000** / 2 d - cost
**28 053 110 000** coins (28.05 B) for **93.33 d** of one slot = 0.0012 % of the bill.

**6. The census is closed.** Appendix B gains row `Q`; the rows now sum to **197** for **191 distinct** census lines
(layer `C` carries 8 rows where the Module category prints 2, so +6) and **no line is unpriced -> 191/191 = 100 %**. Bill
**2 314.7693 Q / 497 359.8 d** = **3 306 813 d = 9 053.56 y** of coin income at 700 T/day vs **1 361.7 y** single-slot
clock (272.3 y five slots, 73.1 y stacked) -> **coins bind x6.65** (x33.3 five-slot); layer `Q` moved the bill by only
+0.03 % coins / +1.07 % clock.

**7. Two source skews.** Re-adding Reroll L1-10 from the fandom cells gives **2 200 410 000** vs the Rev-11 print
**2 240 400 402** (1.8 %; the 15.64-d time Sigma agrees to 3 min), and Daily L10 prints **2.1 B** vs T010's **2.19 B**.

## Verdict

**T006 Rev 35** (new "The twelve named Module labs" section: 11-row table + 7 findings + 4 checklist items + 2
falsification notes + 1 Sources bullet; Appendix B row `Q` + the Sigma row at 191 distinct / 100 %, the income paragraph
restated for the closed bill, fact 1 rewritten as a closed census, the Rev-34 finding 7 annotated as closed) +
**T010 Rev 10** (the twelve lines' sums, the two ban master ladders, the twin/shared-column results, the x1 430 per-pp
gap and the two print skews). INDEX and README rows bumped; validator clean after the log anchor.

## Next open question

The census is priced; what remains are device reads: **H063** (mastery-lab count - also settles 191 vs 189), **H064**
(BC ceiling 58.5 / 80 / 54.4 %), **H062**, **H061**, the `Bot Bot` and `Boss` gate prints, then the gate-cell reads.
Also open: the `Primary Module Bonus` row (30 levels) that the census does not count - it needs its own page slug.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
