param()
# Appends the session-139 log entry (iteration 148). ASCII-only literals. Run ONCE.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
if ($txt.Contains('Session 139 (iteration 148')) { Write-Output 'already appended'; return }
$entry = @'


# 2026-11-03 - Session 139 (iteration 148: the whole sheet on one scale, five resources)

## Asked

T025 1 lists nine currencies with a printed bill and a printed income each, in different units (days, weeks, seasons,
years), so the sheet could not be read as one ranked list, and there was no rule for what a *joint* plan costs once a
player consumes several counters at once. One item: put every bill on the **calendar**, state the combination rule as the
same `max()` model the lab and stone ledgers use, and check it against the printed gem-equivalent exchange rates.

## Sources

No new fetches. Inputs: T025 1's own bill/income pairs (gem framework **114 500** = 4 900 + 58 400 + 51 200 at
**435/day**; four-slot fleet **82 380 / 94 380 / 1 864 380** at **1 470** or **3 570 per week**; bot sheet
**212 660** at **607.5/day**; Guild Store **1 225** at **185/wk**; `Ally` **14 470** at **1 555/season**; Vault
**73 000** at **16/wk**; cells **2.4968e7** at **1 000/day**; coins **3 243.8393 Q** at **700 T/day**; clock
**497 359.8 slot-days** at 5 slots), T014 3.3's total-week stone grid, T013 2.4-2.5 (the **150-identity** and the unit
table **1 st = 10 ge / 1 shard = 0.6 ge**), T008 3.2 (the **8 865**-stone knee package), T006 Rev 38 (the five cheap
layers at **2 497.5 slot-days** and the **x3.725** stack). New script: `tools/five-resource-ledger.ps1`.

## What was established

**1. One column for nine currencies.** Day costs: Guild Store **46.4**, gem framework **263.2** (318.1 at the 8-h claim
rate), four slots to L50 **161.5** with the shard lab and **392.3** without, bot sheet **350.1**, L101 fleet **185.1**,
`Ally` **521.1**, the five cheap lab layers **499.5** raw / **134.1** stacked, stone census **32 471.5** with no
tournaments and **17 836.5 / 12 588.4 / 5 979.2 / 2 688.7 / 487.3 / 156.3** by band, Vault **31 937.5**, cells
**24 968.0**, coins **4 634 056.1**, clock **99 472.0**. The stone rows reproduce T014 3.3's printed year column
(49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43) from the same incomes; the deltas are only the 52-week vs 365-day convention.

**2. The gem-equivalent cross-check works and is redundant in the good way.** With **1 st = 10 ge** and
**1 shard = 0.6 ge** the three beginner flows are **435 / 253.57 / 126 ge/day** (306 with the shard lab at L50), and the
stone leg computed in ge (**4 522 820 / 253.57 = 17 836**) equals the leg computed in stones
(**452 282 / 25.357 = 17 836**) - the rates cancel, so the ge column is a consistency check on the max() model rather
than a second model. Ranking by ge/day gives **shards < stones < gems** in supply: the scarcest currency of a beginner is
**module shards**, at 126 ge/day, even though its nominal counter (1 470/wk) looks the largest.

**3. A joint plan costs its slowest leg.** Three states of the same beginner set (framework + 8 865 stone package + four
slots to L50 + the 445-tap sheet + the five cheap lab layers): **499.5 d = 1.37 y** with nothing boosted (bound by
clock), **392.3 d = 1.07 y** with the x3.725 stack (bound by shards), **350.1 d = 0.96 y** also with
`Daily Mission Shards` at L50 (bound by medals). So the first-year set *is* inside one calendar year once the two lab
multipliers are in, and its last binding leg is the medal flow - the arithmetic reason the T015 445-tap sheet is the
year-one schedule. The near-tie of the medal (350.1) and stone (349.6) legs means the two fill each other's gaps.

**4. Only the binding leg's income matters.** +1 stone/day takes the stone census from 17 836.5 to 17 159.8 d
(**676.7 d = 1.85 y** saved), +5/day saves 2 937.8 d, and the whole box+trade flow (97.5/wk = 13.9286/day) saves
**6 323.9 d = 17.33 y**; +1 of any non-binding counter (gems, shards, medals - 263.2 / 392.3 / 350.1 d) saves **0 d**.
The shard-stone crossover is `452 282 / 392.3 = 1 152.9 st/day =` **8 070/wk**, which re-derives T013 2.5's **8 071**
from an independent direction.

**5. Two convention skews logged.** The **5 940**-shard shortfall is the 52-week print (`1 470 x 52 = 76 440`), against
**5 730** on a 365-day year (76 650); the Vault's **87.7 y** is **87.50 y** = 31 937.5 d on 365-day years (4 562.5
weeks). Neither changes an ordering.

## Verdict

**T025 Rev 7**: new section "1.5 The whole sheet on one scale - five resources, the ge cross-check, and the
binding-resource law" (the 17-row day table, the ge cross-check, the three-plan table with its maxima and binding legs,
the sensitivity table, the convention note), 4 checklist items, 4 falsification bullets, Rev line + Sources bullet.
INDEX T025 row to Rev 7 + session-139 anchor; README T025 confidence cell gets the Rev 7 segment.

## Skews

* 52-week vs 365-day convention: 48.87 vs 49.0 y, 87.50 vs 87.7 y, 5 730 vs 5 940 shards (all logged, none material).
* The gem framework is quoted at **435/day** (24-h claims) as the primary and 360/day as the alternative; the two differ
  by 55 d on that leg only, and it is never the binding one.
* The plan's medal-vs-stone binding is a **0.5 d** decision (350.1 vs 349.6), so the binding label is the fragile part
  of finding 3, not the plan length.

## Next open question

Device list unchanged: **H069** first, then **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**,
**H062**, **H061**, plus the coin `income/day` counter and the three new reads logged in session 138 (the first cells of
one xdamage column and one UW+ tree, and whether a fresh UW+ ability reads its level-0 value or 0). Paper: (a) the `I`
and `N` per-line value columns (18 lab lines) to close the lab census; (b) a *weekly* version of this sheet - the five
resources per week at each band, so a player can read their own counters into the max() model in three divisions;
(c) the guild/Vault/bits legs joined to the same plan (46.4 / 31 937.5 / 521.1 d) to see which of them is worth putting
inside the first year at all.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
