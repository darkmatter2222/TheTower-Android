param()
# Appends the session-141 log entry (iteration 150). ASCII-only literals. Run ONCE.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
if ($txt.Contains('Session 141 (iteration 150')) { Write-Output 'already appended'; return }
$entry = @'


# 2026-11-03 - Session 141 (iteration 150: lump-sum income joins the max model)

## Asked

Session 140 closed with the plan model built entirely from **flows** (per-day or per-week counters), while the paper list
carried item (c): does the **milestone ladder** (T019, claim-once cells: 19 230 free gems / 4 430 free stones, 29 495 paid
gems / 7 870 paid stones) behave like a fourth income term, and how much of the 2 450.4-day sheet calendar or the
349.6-day core-set calendar can it actually remove. One item: put the lump-sums into the same max() model and find out which
legs they can move at all.

## Sources

No new fetches - all four inputs are already transcribed in this repo: T019 2.1 (the page's own eight block **Totals** rows,
closed four ways in Rev 4), T025 1.5 and 1.6 (the five-resource day model and its weekly form), T008 3.2 (the **8 865**-stone
knee package and the 452 282-stone census), T013 2.4 (the per-week medal flows). Conversions kept as in T025: 435 gems/day,
1 stone = 10 ge, 1 shard = 0.6 ge, stones 25.3571/day at the Copper bottom. New scripts: `tools/lump-sum-ledger.ps1`
(all figures, raw output in `tools/out-lump-150.txt`), plus the mechanical `tools/tail-rows-150.ps1` and
`tools/check-iter150.ps1`.

## What was established

**1. A lump-sum enters one way and can only touch priced legs.** `leg = max(0, bill - lump) / income`. Of the five legs only
the **gem** bill (114 500 ge) and the **stone** bills (8 865 knee / 452 282 census) have a counter that a milestone cell pays
in; the **clock** leg (499.5 raw / 134.1 d stacked) and the **medal** leg (2 450.4 d) have no lump source at all. That is why
in states A and B the plan length is exactly **499.5 d** and **392.3 d** with or without claiming anything - the lumps are
real but not binding there.

**2. The eight 3-tier blocks on the calendar scale.** Free / paid ge and the day count: **920 / 2 425 = 3 345 ge = 7.7 d**,
1 845 / 3 990 = 5 835 = **13.4**, 2 730 / 6 510 = 9 240 = **21.2**, 4 640 / 8 725 = 13 365 = **30.7**, 11 825 / 18 985 =
30 810 = **70.8**, 13 415 / 22 045 = 35 460 = **81.5**, 13 760 / 22 390 = 36 150 = **83.1**, 14 395 / 23 125 = 37 520 =
**86.3**; Sigma **63 530 + 108 195 = 171 725 ge = 394.8 d**. The free ladder's seven ratios are 2.0054 / 1.4797 / 1.6996 /
**2.5485** / 1.1345 / 1.0257 / 1.0461 - one real step at T13 and then saturation. In log space the identity
`Sigma ln = ln(14 395/920) = 2.750 263` closes, and it splits **34.0 %** for the T13 block, **92.8 %** through T15,
**7.2 %** for T16-24. Milestones are a *Tier-13* ladder with a long flat tail.

**3. What a sub-T11 account can hold.** Free track T1-12 = **4 735 gems + 540 stones = 10 135 ge = 23.3 d** of gem income;
with the four Premium passes **12 585 gems + 1 920 stones = 31 785 ge = 73.1 d**, the passes alone being **21 650 ge = 49.8 d
= 2.14x** the whole free track for four taps. Against one year of flow (**297 318.4 ge**: 158 775 gems + 92 553.4 ge of
stones + 45 990 ge of shards) that is **3.41 %** and **10.69 %**; the whole 24-tier ladder on both tracks is **57.8 %** of a
single idle year.

**4. The lump-adjusted plan table (state C, Copper bottom).** Bills only **349.6 d** (stones bind) -> free T1-12 **328.3** ->
plus passes **273.9** -> whole free ladder **219.0** (gems take over the binding) -> plus the paid column **161.5 d** (the
shard fleet binds, the knee leg reaching **0** because 12 300 > 8 865). Total **188.1 d** removed; inside the sub-T12 window
alone it is **21.3 d** (free) or **75.7 d** (with passes). The knee leg hands the binding to gems once stone lumps exceed
**2 924** (1 920 with the passes falls short of it, 4 430 for the whole free ladder passes it).

**5. Knee vs census, one line each.** The 12 300-stone ladder is **1.39x** the 8 865 knee package - that package is free
before any weekly flow is counted - but only **2.7 %** of the 452 282 census, which shortens the census leg from
**17 836.5 d** to **17 351.4 d** (**485.1 d**). At the Copper bottom a stone cell is worth `10/435 =` **0.023 d** and the 540
free stones of T1-12 are **12.4 d**, so claim-once stones are a *knee* instrument and the census is a *flow* problem.

## Verdict

**T019 Rev 5** (new 2.2: the block table in ge and days, the ladder law with its log-space shares, the T1-12 window, the
five-row plan table, three rules; three checklist items, three falsification bullets, Rev line, Sources bullet);
**T025 Rev 9** (new 1.7: the same five-row table with the finding that only two of five legs are movable, the 171 725 ge
ladder against the 297 318.4 ge year, the 1.39x / 2.7 % knee-and-census line; two checklist items, one falsification bullet,
Rev line, Sources bullet). INDEX: two rows bumped plus the session-141 anchor; README: two confidence cells. Validator clean
after the edits (612/0/0 links, 25 rows, 0 bad).

## Skews

* **block basis vs per-tier basis** again: the T1-12 free window is **10 135 ge** here and **10 075 ge** on the per-tier rows
  (23.3 vs 23.2 d) - the 60-gem `T4` cell of T019 2.1 finding 4. The legs of the plan table use the block basis; the
  difference is 0.1 d.
* The paid column keeps Rev 4's reading **29 495** gems (the grand row's 23 955 is 5 540 short, exactly the T19-21 column);
  if the 23 955 print turns out to be the live one, the last plan row's gem leg moves from **151.2** to
  `(114 500 - 43 185)/435 =` **163.9 d** and the binding stays the shard fleet at **161.5 d**, so the plan length is
  unchanged to one decimal.
* The 52-week convention is not used here: the year of flow is **365** days (297 318.4 ge); on a 52-week convention it would
  be 293 232.6 ge and the ladder's share would read 58.6 % instead of 57.8 %.

## Next open question

Device list unchanged: **H069** first, then **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**,
**H062**, **H061**, the player's coin `income/day`, and the three session-138 reads. Paper: (a) the `I` and `N` per-line
value columns (18 lab lines) to close the lab census; (b) a *gem and shard* two-resource ledger in the same max() form;
(c) the remaining **lump pools** other than milestones (achievements, guild first-time bonuses, the Vault) - the 161.5-day
floor of the state-C table is only a floor if no other claim-once source exists, so each new pool is one more subtraction
from the two priced bills.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
