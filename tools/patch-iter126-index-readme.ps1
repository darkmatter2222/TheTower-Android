param()
# Iteration 126: adds the Rev 30 (Utility category) clauses to INDEX and README.
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

$idxNew = '**Verified (Rev 30**, arithmetic: the **Utility Research category priced line by line** - 12 lines / 611 levels, ' +
  'the four workshop-increment lines sharing the **head-40** 99-level column at **111 696 509** coins / **1 444.98 d** each ' +
  '(57 cost cells differ from the head-30 column by **+570 coins** in total), `Interest` = the Labs Coin Discount ladder at ' +
  'head 50 (delta **40 670**), `Max Interest` cap 50 -> 15 000 USD for **2 304 140** coins = **154.1 coins per dollar of cap**, ' +
  'the three Recovery Package lines sharing one 20-level column (**2.968 19 T** / **263.34 d**) whose times are the exact ' +
  '20-level prefix of the enemy-stat ladder (0 differing cells) and whose prices obey enemy(n) = Recovery(n) + 10 + 25(n-1) ' +
  '(0 of 20), a fourth **humped** clock shape (1.1503 -> 1.1909 -> 1.1726), the seven-line coin-side block at ' +
  '**1 921 559 012** coins = **1.37 y** of five-slot boosted clock; the priced bill is now ' +
  '**121/169 lines = 4.866 Q / 270 725.1 d = 71.6 %**), '
$idxOld = '**Verified (Rev 29**,'

$rdSumOld = 'holds **93.29 %** of the layer coins |'
$rdSumNew = 'holds **93.29 %** of the layer coins ; the **Utility category closes** at 12 lines / 611 levels - four ' +
  'workshop-increment lines on one head-40 column at **111 696 509** / **1 444.98 d** each, `Max Interest` buys the ' +
  'interest cap $50 -> **$15 000** for **2 304 140** coins (**154.1 coins per dollar**), the three `Recovery Package` ' +
  'lines share one 20-level column whose times are the enemy-stat ladder''s 20-level prefix, and the whole 7-line ' +
  'coin-side block costs **1 921 559 012** coins |'
$rdStatOld = '**Verified** (arith., Rev 29: the Defense Research category'
$rdStatNew = '**Verified** (arith., Rev 30: the Utility Research category - 12 lines / 611 levels, four lines on the ' +
  'head-40 99-level column at **111 696 509** / **1 444.98 d** each with only +570 coins separating it from the head-30 ' +
  'column, `Interest` = the Labs Coin Discount ladder at head 50 (delta 40 670), `Max Interest` = **154.1 coins per ' +
  'dollar of interest cap**, three identical Recovery Package columns (2.968 19 T / 263.34 d each) with the 20-level ' +
  'enemy-stat time prefix and price law enemy(n) = Recovery(n) + 10 + 25(n-1), a **humped** clock shape 1.1503 -> ' +
  '1.1909 -> 1.1726, coin-side block **1 921 559 012** coins = 1.37 y boosted five-slot, bill now ' +
  '**121/169 lines = 4.866 Q / 270 725.1 d = 71.6 %**), (arith., Rev 29: the Defense Research category'

Patch 'docs/INDEX.md' @(
  $idxOld, ($idxNew + $idxOld), '1',
  'the priced bill is now **111/169 lines = 4.866 Q / 260 639.7 d = 65.7 %**)',
  'the priced bill is now **111/169 lines = 4.866 Q / 260 639.7 d = 65.7 %**)', '1'
)
Patch 'README.md' @(
  $rdSumOld, $rdSumNew, '1',
  $rdStatOld, $rdStatNew, '1'
)
