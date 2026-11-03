param()
# Iteration 127: adds the Rev 31 (T006) / Rev 10 (T012) clauses and the H063 row.
$u8 = New-Object System.Text.UTF8Encoding($false)

function Patch([string] $path, [string[]] $flat) {
  $txt = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
  $n = 0
  for ($i = 0; $i -lt $flat.Count; $i += 3) {
    $o = $flat[$i]; $w = $flat[$i + 1]; $expect = [int]$flat[$i + 2]
    $c = ([regex]::Matches($txt, [regex]::Escape($o))).Count
    if ($c -ne $expect) { Write-Output ($path + ' MISS[' + $i + '] [' + $o + '] count=' + $c + ' expect=' + $expect); return }
    $txt = $txt.Replace($o, $w); $n++
  }
  [System.IO.File]::WriteAllText($path, $txt, $u8)
  Write-Output ($path + ' applied=' + $n)
}

$idx31 = '**Verified (Rev 31**, arithmetic: the **Card Research category closes and the mastery block enters the bill** - ' +
  'four lines share one 7-level Recharge column (Second Wind / Demon Mode / Nuke / Missile Barrage) at **14.430 T** / ' +
  '**119.88 d** each, buy order set by the printed wave count (**9.018 8 x 10^9** coins per 100 waves saved on Second ' +
  'Wind); `Super Tower Bonus` prints **30** levels = **12.304 T** / **897.30 d** (its 10-level prefix re-adds to the ' +
  'Rev 11 print 115.95 B / 22.19 d); the **32** mastery labs at the printed **50.00 q / 562 d 12 h** each are the ' +
  "census's largest block = **1.600 Q / 18 000 d** (**24.7 %** of the priced coins for **6.2 %** of the clock) with a " +
  'constant **250 h** time step and **mirror-symmetric** coin increments; the stones re-add pins the 1 000 bucket at ' +
  '**14** cards; the priced bill is now **159/189 lines = 6.466 Q / 290 785.7 d = 84.1 %**), '
$idxAnchor = '**Verified (Rev 30**, arithmetic: the **Utility Research category priced line by line**'

$t12 = '**Verified (Rev 10**, arithmetic: the two mastery-stone bucket prints reconcile by row count - **27 500** over ' +
  '**31** rows (1 000 x13) vs **28 500** over the current **32**-row `Card Masteries` page (1 000 x14, the extra card ' +
  'being `Area of Effect` at 1 000 stones), verified by `tools/card-research-family.ps1`), '
$t12Anchor = '**Verified (Rev 9**, arithmetic: the mastery layer'

$h63 = '| H063 | [How many mastery labs does the Lab screen list - **41** Card lines (32 mastery labs) or **21** (12)? ' +
  'And does `Cells` break the shared mastery ladder?](hypotheses/H063-mastery-lab-count-and-cells-ladder.md) - decides ' +
  'the census denominator (189 vs 169) and the mastery block (1.600 Q vs 0.600 Q) | count the rows in the Lab screen''s ' +
  '**Card Research** category; read the `Cells` mastery lab level 1 (**1.10 q** if it shares the ladder) |'
$h62Tail = 'endpoint **1.50** vs **2.00** |'

$sessAnchor = '- [2026-11-03 - session 117 (T006 Rev 30)](log/2026-11-03.md#2026-11-03---session-117-iteration-126-the-utility-category-closes-and-the-interest-cap-gets-a-printed-ladder)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 118 (T006 Rev 31, T012 Rev 10, H063)](log/2026-11-03.md#2026-11-03---session-118-iteration-127-the-card-category-closes-and-32-mastery-labs-enter-the-bill)'

Patch 'docs/INDEX.md' @(
  $idxAnchor, ($idx31 + $idxAnchor), '1',
  $t12Anchor, ($t12 + $t12Anchor), '1',
  $h62Tail, ($h62Tail + "`r`n" + $h63), '1',
  $sessAnchor, $sessNew, '1'
)

$rdSum = 'coin-side block costs **1 921 559 012** coins |'
$rdSumNew = 'coin-side block costs **1 921 559 012** coins ; the **Card category closes** at **41** lines - four of them ' +
  'sharing one 7-level Recharge column at **14.430 T** / **119.88 d** each, `Super Tower Bonus` at **12.304 T** / ' +
  '**897.30 d** over its 30 printed levels, and the **32 mastery labs** at **50.00 q / 562 d 12 h** each = ' +
  '**1.600 Q / 18 000 d** |'
$rdStat = '**Verified** (arith., Rev 30: the Utility Research category'
$rdStatNew = '**Verified** (arith., Rev 31: the Card Research category - **41** lines, four sharing one 7-level Recharge ' +
  'column at **14.430 T** / **119.88 d** each (**9.018 8 x 10^9** coins per 100 waves saved on Second Wind), ' +
  '`Super Tower Bonus` = **12.304 T** / **897.30 d** on 30 levels, the **32** mastery labs at the printed **50.00 q / ' +
  '562 d 12 h** = **1.600 Q / 18 000 d** = **24.7 %** of the priced coins with a **250 h** step and mirror-symmetric ' +
  'increments, bill now **159/189 lines = 6.466 Q / 290 785.7 d = 84.1 %**), ' + $rdStat
$rd12 = '**Verified** (arith., Rev 7: the nuke page'
$rd12New = '**Verified** (arith., Rev 10: the mastery stone buckets reconcile by row count - **27 500** over **31** rows ' +
  'vs **28 500** over the current **32**-row page), ' + $rd12

Patch 'README.md' @(
  $rdSum, $rdSumNew, '1',
  $rdStat, $rdStatNew, '1',
  $rd12, $rd12New, '1'
)
