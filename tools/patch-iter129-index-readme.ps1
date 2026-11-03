param()
# Iteration 129: prepends the Rev 33 (T006) / Rev 7 (T015) clauses and adds the session-120 anchor.
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

$idxT6 = '**Verified (Rev 32**, arithmetic: the **Perk Research category closes**'
$idxT6New = '**Verified (Rev 33**, arithmetic: the **Bot Research category closes on two shared columns** - five ' +
  '`* Cooldown` labs print one identical 25-level column (**1.808 T** / **576.67 d** each) and four `* Duration`/`Linger` ' +
  'labs one identical 20-level column (**664.838 T** / **853.69 d** each), 0 differing cells both times; the duration ' +
  'column prints the family law undistorted (x1.5000 costs, **x1.1500 on all 19 time steps**, max dev 2.740 x 10^-5) and ' +
  'T015''s closed form t1(1.15^n-1)/0.15 gives **1 229 323 min** vs the printed re-add **1 229 315 min** (delta 8 min); ' +
  '`Linger Time` = the duration ladder **+3.00 on 20/20 cells**; category **10 lines / 210 levels = 3.2355 q** for ' +
  '**6 605.8 d**, with the five cooldowns at 0.28 % of the coins for 43.65 % of the clock (cheapest per queue-day in the ' +
  'table, **3.136 x 10^9** coins/day vs **1.843 x 10^12** for Burn Stack); the census gains the two `Bot Bot` lines ' +
  '(**191 lines / Sigma 5 017**), bill now **178/191 lines = 6.4735 Q / 480 565.4 d = 93.2 %**), ' + $idxT6

$idxT15 = '**Verified (Rev 6**, arithmetic) |'
$idxT15New = '**Verified (Rev 7**, arithmetic: the full per-level bot lab tables - two shared columns (5 Cooldown / 4 ' +
  'Duration, 0 differing cells), the 1.15 time law reproducing on all 19 steps and its closed form within **8 min** of ' +
  'the printed 1 229 315-min re-add, `Linger Time` = duration +3.00 on 20/20 cells, and the **515.0 M / 1.32 T / 567.06 T** ' +
  'prints all re-adding), ' + $idxT15

$sessAnchor = '- [2026-11-03 - session 119 (T006 Rev 32)](log/2026-11-03.md#2026-11-03---session-119-iteration-128-the-perk-category-closes-as-a-clock-only-layer)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 120 (T006 Rev 33, T015 Rev 7)](log/2026-11-03.md#2026-11-03---session-120-iteration-129-the-bot-category-closes-on-two-shared-columns)'

Patch 'docs/INDEX.md' @(
  $idxT6, $idxT6New, '1',
  $idxT15, $idxT15New, '1',
  $sessAnchor, $sessNew, '1'
)

$rdSum = ' = 37.3 % of the bill |'
$rdSumNew = ' = 37.3 % of the bill ; the **Bot category closes** on two shared columns - five Cooldown labs at ' +
  '**1.808 T** / **576.67 d** each and four Duration labs at **664.838 T** / **853.69 d** each (0 differing cells), ' +
  '10 lines / 210 levels = **3.235 5 q** for **6 605.8 d** |'
$rdT6 = '**Verified** (arith., Rev 32: the Perk Research category'
$rdT6New = '**Verified** (arith., Rev 33: the Bot Research category - **two shared columns** (five Cooldown labs on one ' +
  '25-level column at **1.808 T** / **576.67 d**, four Duration/Linger labs on one 20-level column at **664.838 T** / ' +
  '**853.69 d**, 0 differing cells), the family law printed undistorted (x1.5000 / **x1.1500 on all 19 steps**, max dev ' +
  '2.740 x 10^-5) with T015''s closed form within **8 min** of the 1 229 315-min re-add, `Linger Time` = duration **+3.00** ' +
  'on 20/20 cells, category **10 lines / 210 levels = 3.2355 q** for **6 605.8 d**, census +2 lines = ' +
  '**191 / Sigma 5 017**, bill now **178/191 = 6.4735 Q / 480 565.4 d = 93.2 %**), ' + $rdT6
$rdT15 = '**Verified** (arith.) | Event Shop (T1 W70) |'
$rdT15New = '**Verified** (arith., Rev 7: the per-level bot lab tables reproduce **515.0 M**, **1.32 T** and ' +
  '**567.06 T** exactly, the 1.15 time law holds on all 19 steps, and `Linger Time` is the duration ladder +3.00), ' +
  '(arith.) | Event Shop (T1 W70) |'

Patch 'README.md' @(
  $rdSum, $rdSumNew, '1',
  $rdT6, $rdT6New, '1',
  $rdT15, $rdT15New, '1'
)
