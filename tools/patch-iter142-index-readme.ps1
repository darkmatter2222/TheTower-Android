param()
# Iteration 142: INDEX (T006 Rev 38 + the session-133 anchor) and README (T006 cells). ASCII-only literals.
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

# ---------- INDEX ----------
$a1 = '**Verified (Rev 37**, arithmetic'
$b1 = '**Verified (Rev 38**, arithmetic: the **whole lab tree on the calendar** - all **seventeen** priced layers plus the ' +
  '445-tap medal sheet in **one** cost queue, `cost = max(Sigma coins/700 T, Sigma clock/slots)`; the totals re-add ' +
  '(**4 634 055.8** coin-days, **99 471.9** calendar days at 5 slots = **26 703.9 d = 73.1 y** with the stack) and the ' +
  'queue runs **E D F G L -> medal sheet -> Q O K J B H M A B2 I N -> C P**; the five layers above the sheet are ' +
  '**12 of 191 lines** and **0.50 %** of the clock = **134.1 d** with the stack, so they fit **inside** the **350.06 d** ' +
  'of the medal sheet (the year-one plan), layers **C** and **P** carry **99.81 %** of the coin bill, and the flip ' +
  'incomes put **A (663.6 T)** and **Q (672.4 T)** within 6 % of the anchor, `tools/lab-tree-day-ledger.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 132 (T006 Rev 37)](log/2026-11-03.md#2026-11-03---session-132-iteration-141-the-joint-medal-and-lab-queue)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 133 (T006 Rev 38)](log/2026-11-03.md#2026-11-03---session-133-iteration-142-the-lab-tree-on-the-calendar)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = '(crossovers **15.68 B / 3.894 T / 9.217 T** per day)'
$d1 = '(crossovers **15.68 B / 3.894 T / 9.217 T** per day); all 17 lab layers plus the sheet in one cost queue - the first ' +
  'five layers are 12 lines and **134 d** with the stack, which fits inside the **350 d** medal sheet'

$c2 = '**Verified** (arith., Rev 37: the **joint medal/lab queue**'
$d2 = '**Verified** (arith., Rev 38: the **whole lab tree on the calendar** - `max(Sigma coins/700 T, Sigma clock/slots)` ' +
  'orders all 17 layers with the medal sheet, the totals re-add (**4 634 055.8** coin-days, **99 471.9** days at 5 slots, ' +
  '**26 703.9** with the stack), **C** + **P** are **99.81 %** of the coin bill, `tools/lab-tree-day-ledger.ps1`), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
