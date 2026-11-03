param()
# Iteration 134: T014 Rev 10 + T025 Rev 5 clauses, the H066 row, and the session-125 anchor.
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
$a1 = '| T014 | [Tournament tickets & league ladder](techniques/T014-tournament-tickets.md) | Gems, Stones, Keys | **Verified (Rev 9**, arithmetic:'
$b1 = '| T014 | [Tournament tickets & league ladder](techniques/T014-tournament-tickets.md) | Gems, Stones, Keys | ' +
  '**Verified (Rev 10**, arithmetic: the **band ladder in one formula** - `stones/week = 2tS = 2S(S + floor(G/10) + 2)` ' +
  'with `t = 2 + floor((G + 10S)/10)`; identity on **70/70** band cells and the six ladder rows re-add **6/6** ' +
  '(80 / 154 / 432 / 1 080 / 6 400 / 20 160), so the logged "does not fit 45 + k x 1st place" skew is closed; ' +
  '**placement is quadratic** (exponents **1.89-2.04**; Copper 5 -> 20 pay = 80 -> 1 280 = **x16 = 4^2**); the clock ' +
  'branch `runs(W) = 8 498 / W` puts a **stop-wave** on every row (**1 062 / 773 / 472 / 315 / 133 / 76**, thresholds are ' +
  '**H066**); the **total** week is `2tS + 45 + 15a` = **200 / 274 / 552 / 1 200 / 6 520 / 20 280** (the added terms are ' +
  '**60 %** of the Copper-bottom week and **0.59 %** at Champion 16-24); on the fandom print the two skewed rows are ' +
  '**7 200 / 26 400**, `tools/stones-band-closed-form.ps1`), ' + $a1.Substring($a1.IndexOf('**Verified (Rev 9**'))

$a2 = '| T025 | [Years-to-max ledger (income vs every sink)](techniques/T025-years-to-max-ledger.md) | all (budget sheet) | **Verified (Rev 4**, arithmetic:'
$b2 = '| T025 | [Years-to-max ledger (income vs every sink)](techniques/T025-years-to-max-ledger.md) | all (budget sheet) | ' +
  '**Verified (Rev 5**, arithmetic: the band ladder is now T014 3.3**s closed form (**70/70** identity, **6/6** rows) ' +
  'and the ledger carries a **total-week** column - **+ 45** box stones and **+ 75** trade stones give ' +
  '**200 / 274 / 552 / 1 200 / 6 520 / 20 280** per week and **43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43 years** to ' +
  '**452 282**, `tools/stones-band-closed-form.ps1`), ' + $a2.Substring($a2.IndexOf('**Verified (Rev 4**'))

$a3 = 'then level 2 (**0.5 Q**, `21d 14h 22m`), and count the labs (**4**?) |'
$b3 = $a3 + "`r`n" +
  '| H066 | [What wave/score puts you in which tournament band?](hypotheses/H066-score-to-band-thresholds.md) - all ' +
  '**70** band cells are priced but the score that produces each band is never printed; it is the last unknown of the ' +
  'stone model (T014 3.3**s clock branch) | finish one bracket at three stop-waves (about **250 / 750 / 1 500**) and ' +
  'record the (wave, band) pairs on the **Tournament** screen, then repeat after a promotion |'

$a4 = '- [2026-11-03 - session 124 (T004 Rev 5)](log/2026-11-03.md#2026-11-03---session-124-iteration-133-the-mission-pool-is-printed---32-rows-and-17-ladder-shapes)'
$b4 = $a4 + "`r`n" +
  '- [2026-11-03 - session 125 (T014 Rev 10, T025 Rev 5, H066)](log/2026-11-03.md#2026-11-03---session-125-iteration-134-the-stone-band-ladder-closes-on-one-formula)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1', $a3, $b3, '1', $a4, $b4, '1' )

# ---------- README ----------
$c1 = '**Verified** (arith., Rev 9: the ladders, n* = floor(P/10), and the four per-league laws)'
$d1 = '**Verified** (arith., Rev 10: the **band ladder in one formula** `stones/week = 2tS = 2S(S + floor(G/10) + 2)`, ' +
  'identity **70/70** cells and the six rows re-add **6/6**; **placement is quadratic** (exponents 1.89-2.04); the clock ' +
  'branch `runs(W) = 8 498 / W` gives every row a **stop-wave** (1 062 / 773 / 472 / 315 / 133 / 76); the **total** week ' +
  '`2tS + 45 + 15a` = **200 / 274 / 552 / 1 200 / 6 520 / 20 280**), (arith., Rev 9: the ladders, n* = floor(P/10), ' +
  'and the four per-league laws)'
$c2 = '**Verified** (arith., Rev 4: the 27-line + nine-page closure,'
$d2 = '**Verified** (arith., Rev 5: the band ladder closes on one formula (**70/70** identity) and the ledger gains a ' +
  '**total-week** column (**+ 45** boxes, **+ 75** trades) = **200 / 274 / 552 / 1 200 / 6 520 / 20 280** per week = ' +
  '**43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43 y** to **452 282**), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
