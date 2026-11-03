param()
# Appends the session-140 log entry (iteration 149). ASCII-only literals. Run ONCE.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
if ($txt.Contains('Session 140 (iteration 149')) { Write-Output 'already appended'; return }
$entry = @'


# 2026-11-03 - Session 140 (iteration 149: the medal unit is per week and the sheet is 2450 days)

## Asked

The weekly form of the budget sheet (the follow-up item of session 139) put the medal leg in **weeks** and the day form in
**days**, and the two disagreed by exactly a factor of seven: T013 2.4 prints **607.5** as the per-**week** F2P flow
(`1 215` medals per 2-week event) while T006 Rev 37-42 and T025 Rev 7 divided by **607.5 as a per-day** figure. One item:
decide the unit from the prints that do not depend on the model, and re-issue every number that moves.

## Sources

No new fetches. The three closures are all internal: T013 1's own table ("**Total F2P = 1 215** ... **about 87/day**") and
T013 2.4 ("per week **607.5 / 677.5 / 1 080 / 1 150**"), T015 3.4 (the sheet is **212 660** medals over **445 taps** =
**175.0 events**, about **350 weeks**), and the arithmetic `212 660/1 215 = 175.03` events `x 2 weeks = 350.06 weeks`
`x 7 = 2 450.4` days. New scripts: `tools/medal-unit-fix.ps1`, `tools/weekly-plan-table.ps1`; corrected scripts:
`tools/lab-day-density.ps1` (divides by `607.5/7` now), `tools/five-resource-ledger.ps1`.

## What was established

**1. The unit is per week, and three independent prints agree.** `607.5` per week `= 86.786` per day (F2P), `1 080 =`
**154.286** (boosted), `677.5 = 96.786` (with the two `Fetch` passes) and `1 150 = 164.286` (both). The whole 445-tap sheet
is therefore **2 450.4 d = 350.06 weeks = 6.71 years** F2P, **1 378.4 d = 3.78 y** boosted, **2 197.2 d = 6.02 y** with
`Fetch`, **1 294.5 d = 3.55 y** boosted plus `Fetch`. The check that kills the alternative reading: the daily reading needs
`212 660/350.06 =` **607.5 medals per day**, i.e. **8 505** per event, against the printed **1 215**.

**2. The two densities re-issued.** Sheet `17.7550/2 450.4 =` **0.007 246**/day (was 0.050 720) and the cosmetic par
`0.029559/(1 000/86.786) =` **0.002 565**/day (was 0.017 957; boosted **0.004 561**). Per-block table: **0.014 853 /
0.013 951 / 0.012 145 / 0.011 302 / 0.007 944** for the five blocks. The medal-to-lab ratio falls from 14.6x to
`0.007 246/0.003 481 =` **2.082x** (exactly the factor seven divided out of the numerator), and the par now sits **below**
`O` (0.003 481) rather than above it, so the par became the clean `C`/`P` cut-line and Rev 41's "layer A straddles the par"
is an artefact (A is **7.07x / 6.81x** the par under the two readings).

**3. The merged schedules move, the head does not contain the sheet any more.** Reading R, 18 rows: `E D F L Q A B J H M K
sheet O G B2 par C P` with the sheet **12th** and the par **16th**; reading P: `E D F L A Q M J sheet K H G O par B B2 C P`
with **9th** and **14th**. The invariant head is **E > D > F > L > Q**. In T008's 28-item stone-inclusive list the head is
**E D F xdamage-quintet knee-package** then `L`, with the sheet **18th** and the par **24th**. Every stone row is untouched
because those divide by the stone income.

**4. The plan model: a one-year core plus a six-and-a-half-year tail.** The core set (gem framework + the 8 865-stone knee
package + four slots to L50 + the five cheap lab layers) costs `max(legs) =` **499.5 d** with nothing boosted (clock binds),
**392.3 d** with the x3.725 stack (shards), **349.6 d** also with `Daily Mission Shards` at L50 (stones bind at the Copper
bottom) and **263.2 d** from the **Copper 13-15** band upward (gems bind). Adding the bot sheet makes every state medal-bound
at **2 450.4 d**, and because medals and lab clock are different counters the two flows are **parallel**, so the joint cost
is the `max` (**2 450.4 d**) and not the sum (**2 800.0**). The sheet leg is **band-independent** (350.06 weeks in every
league), which is what makes it usable as a calendar.

**5. Two-regime sensitivity.** While the sheet is not on the list, stones bind and **+1 stone/day = 13.3 d** saved,
**+5/day = 57.5 d**, and the whole 97.5/week box-plus-trade flow lands the stone leg on **225.6 d** so the plan stops at the
gem leg's **263.2 d** (**86.4 d** saved). With the sheet on, medals bind and **+10/50/100 per week = 39.7 / 186.3 / 346.3 d**
saved; the free `Fetch` pair (+70/week) is worth **253.2 d** and the Event Boost (+472.5/week) **1 072.0 d**; every other
counter is worth **0 d** until it becomes the slowest leg.

**6. The weekly self-service form** (§1.6 of T025): read four counters, do four divisions, take the `max` - at the Copper
bottom `114 500/3 045 = 37.6`, `8 865/177.5 = 49.9`, `82 380/1 470 = 56.0`, `212 660/607.5 = 350.06` weeks. Per-band leg
table and the whole-census week column **4 638.8 / 2 548.1 / 1 798.3 / 854.2 / 384.1 / 69.6 / 22.3** included; crossovers
**25.3 / 158.2 / 384.2 / 8 070.6** stones per week.

## Verdict

**T006 Rev 43** (the unit note plus the re-issued Rev 37 table, the Rev 38 row and finding 3, the Rev 39/40/41/42 schedules,
the 5 checklist items, 4 new falsification bullets, Rev line, Sources); **T008 Rev 13** (the merged 28-item schedule and the
head count, Rev line); **T025 Rev 8** (two medal rows in the day table, the core-set and full-set plan tables, the
two-regime sensitivity table, the new section 1.6 in weeks, three checklist items, three falsification bullets, Rev line,
two Sources bullets). INDEX: three rows bumped plus the session-140 anchor; README: three confidence cells.

## Skews

* **52-week vs 365-day**: the weekly table prints **49.9 weeks** for the knee-package leg while the day table prints
  **349.6 d** (`49.9 x 7 = 349.3`), a 0.3-day convention skew, and the same convention is behind the 87.50 vs 87.7 y Vault
  row and the 5 730 vs 5 940 shard shortfall.
* The sheet's rank differs between the two schedules by construction (12th of 18 in the lab-only list, 18th of 28 in the
  stone-inclusive list) - not an inconsistency: the extra nine stone rows interleave.
* T013 1's "about 87/day" is itself a rounded print (`1 215/14 = 86.79`), so the model keeps **86.786** as the exact value.

## Next open question

Device list unchanged: **H069** first, then **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**,
**H062**, **H061**, the player's coin `income/day`, and the three session-138 reads. Paper: (a) the `I` and `N` per-line
value columns (18 lab lines) to close the lab census; (b) a *gem and shard* two-resource ledger in the same `max()` form
(both legs are currently single-resource); (c) the milestone stone cells (**4 430** free / **7 870** paid) as a lump-sum
fourth income term against the 2 450.4-day sheet calendar.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
