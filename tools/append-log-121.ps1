param()
# Appends the session-112 log entry (iteration 121) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 112 (iteration 121: the Double Death Ray lab is transcribed in full and gets a fifth clock shape)

## Asked

T012 2.3 item 3 priced the `Double Death Ray` lab from its two endpoints plus the printed sums. The page's own data block
carries all **30** rows. One item: transcribe every cell, re-add both columns, and classify the ladder's shape.

## Sources

`wiki/card/death-ray` (last verified 2026-11-01, 1 data table), re-pulled 2026-11-03; the table is
`Level | Time | Cost | Value` with **30** rows, L1 **2 500 000** / **0d 1h 0m** / **1 %** to L30 **205.13B** /
**116d 12h 29m** / **30 %**. Gate prose: “unlocked through Milestones at tier 3, wave 300 … The lab has 30 levels”.
Mechanics prose: cannot kill bosses, no effect inside a protector radius, **Ray / Scatter / Vampire** elites immune,
max-level rotation over 180 degrees, mastery pierces protector shields partially and unlocks `Enhanced Ray Mastery`.
Binary: `Assets\Scripts\DeathRay.cs`, `DeathRayController.cs`, enum rows `|DeathRay` and `|DeathRayController`; the dump
has **no** `Mastery` string at all (grep on `tools/gm_strings.txt`, case-insensitive). New script:
`tools/death-ray-lab.ps1`.

## What was established

**1. Both columns re-add exactly, so the ladder is now fully validated.** Sum of the 30 printed costs = **1 097.15 B**
(the doc's figure to the last digit); sum of the 30 printed times = **1 284 930 min = 21 415.5 h = 892.31 d**. Value
column is `v(n) = n` (1 % to 30 %), so the cap is **30 %** second-beam chance.

**2. The convexity is extreme and the knee is L10.** By decade the coins are **1 251.25 M (0.11 %) / 90.22 B (8.22 %) /
1 005.68 B (91.66 %)** and the clock **492.7 h (2.3 %) / 3 864.8 h (18.0 %) / 17 058 h (79.7 %)**. Per point of value:
**0.125 125 B/pp** for L1-10, **36.572 B/pp** for the whole line, **100.57 B/pp** for L21-30 ⇒ **292x** cheaper per point
at L1-10 than the line average and **804x** than the last decade. Ten of thirty levels - a third of the value - cost
0.11 % of the bill, so the stop-the-lab rule bites at **L10** (or L20 at the latest). On five slots the L21-30 block alone
is **142 d** of queue, or **38 d** with the x3.725 stack.

**3. A fifth clock shape.** The per-level ratios decay monotonically in both columns: cost **1.237** (L9 to L10) down to
**1.192** (L29 to L30), last-five average **1.208**; time **1.230** down to **1.122**, last-five average **1.13** - with an
irregular head (time jumps x9.35 then x1.913). That is neither the **x1.5 / x1.15** main family (T006's Law A) nor the
**x2.25 / n x t1** echo family: it is a hand-set ladder whose ratio decays, the signature of a two-term price/time
formula. Practical rule unchanged: read the cells, do not extrapolate a ratio.

**4. One new lab name and a beam immunity list.** `Enhanced Ray Mastery` is granted by the card's mastery, not by a
milestone - the first case here where **a mastery purchase adds a Lab-panel line**, so T006's 169-line census is a
+1-line event after that purchase. The beam ignores bosses, protector-shielded enemies and the three elite types
(`Ray`, `Scatter`, `Vampire`), which is why it never replaces orb damage in a boss wave's coin budget.

## Next open question

`Enhanced Ray Mastery` has no printed ladder anywhere yet (the card page names it without a table): its level count, cost
ladder and value law are the cheapest remaining card-layer reads, and the mastery-lab census needs it to keep its line
count honest. Device list unchanged: H062, H061, then the 15 `Main Research` level-1 prices.

## Verdict

**T012 Rev 8** (2.3 item 3 rebuilt with the 30-cell table and the three consequences, item 9 added, two checklist items,
two falsification notes, one Sources bullet); INDEX and README rows bumped (25 rows, 0 bad). **Next:** hunt the
`Enhanced Ray Mastery` ladder (`wiki/lab/*`, then the lab-category pages), or the device pass.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
