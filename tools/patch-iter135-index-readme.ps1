param()
# Iteration 135: INDEX + README rows for T013 Rev 7, T014 Rev 11, T025 Rev 6 + the session-126 anchor.
# ASCII-only literals. README keeps 6 columns / 7 pipes per row.
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
$a1 = '**Verified (Rev 6**, arithmetic: the ladder + the 21/21 milestone-skin laws + the 83/58/44 bucket table at +95.2 pp)'
$b1 = '**Verified (Rev 7**, arithmetic: the **medal budget closes the trade ladder** - the cheapest n-trade plan is the ' +
  'level one, **cost(n) = 3C(q) + r c(q+1)** for **n = 3q + r**, so **1 215 / 1 355 / 2 160 / 2 300** medals buy ' +
  '**13 / 14 / 17 / 18** trades = **1 950 / 2 100 / 2 550 / 2 700** gem-equivalents (residuals **65 / 30 / 200 / 110**) ' +
  'against **7 / 7 / 9 / 10** all-in on one line; **1 215 = 945 + 2 x 135** (**607.5/week**, boosted **2 160** = ' +
  '**1 080/week**), relic gates as mission counts **8 / 16** F2P and **4 / 8** boosted, the bot ladder Sigma **3 150** is ' +
  'double-sourced, and **a = 3.5** F2P / **5.0** boosted pins T014 3.3, `tools/medal-weekly-ledger.ps1`), ' +
  '**Verified (Rev 6**, arithmetic: the ladder + the 21/21 milestone-skin laws + the 83/58/44 bucket table at +95.2 pp)'

$a2 = '**Verified (Rev 10**, arithmetic: the **band ladder in one formula**'
$b2 = '**Verified (Rev 11**, arithmetic: **a is pinned by the medal budget** (T013 2.4) - all-in on the stone line buys ' +
  '**7** trades per F2P event (**105** stones, **a = 3.5**/week) and **10** boosted (**150**, **a = 5.0**), so the total ' +
  'week reads **177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** F2P = **49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43 y** ' +
  'against **200 / 274 / 552 / 1 200 / 6 520 / 20 280** boosted = **43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43 y**; the level ' +
  'plan is **a = 2.5-3.0**, ' + $a2

$a3 = '**Verified (Rev 5**, arithmetic: the band ladder is now T014 3.3'
$b3 = '**Verified (Rev 6**, arithmetic: the **medal budget pins a** (**7** all-in stone trades F2P = **105** stones, ' +
  '**10** boosted = **150**) so the ledger reads **177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** per week = ' +
  '**49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43 years** without the pass and **200 / 274 / 552 / 1 200 / 6 520 / 20 280** = ' +
  '**43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43** with it, `tools/medal-weekly-ledger.ps1`), ' +
  '**Verified (Rev 5**, arithmetic: the band ladder is now T014 3.3'

$a4 = '- [2026-11-03 - session 125 (T014 Rev 10, T025 Rev 5, H066)](log/2026-11-03.md#2026-11-03---session-125-iteration-134-the-stone-band-ladder-closes-on-one-formula)'
$b4 = $a4 + "`r`n" +
  '- [2026-11-03 - session 126 (T013 Rev 7, T014 Rev 11, T025 Rev 6)](log/2026-11-03.md#2026-11-03---session-126-iteration-135-the-medal-budget-closes-the-trade-ladder)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1', $a3, $b3, '1', $a4, $b4, '1' )

# ---------- README ----------
$c1 = '**Verified** (arith., Rev 6: the 21/21 skin laws + the 83/58/44 bucket table)'
$d1 = '**Verified** (arith., Rev 7: the **medal budget closes the ladder** - **13 / 14 / 17 / 18** trades for ' +
  '**1 215 / 1 355 / 2 160 / 2 300** medals = **1 950 / 2 100 / 2 550 / 2 700** gem-equivalents versus **7 / 7 / 9 / 10** ' +
  'all-in on one line; **a = 3.5** F2P / **5.0** boosted), (arith., Rev 6: the 21/21 skin laws + the 83/58/44 bucket table)'

$c2 = 'the free leg is one law: milestone skins arrive at'
$d2 = 'the ladder is **per line**, so buy level: **13** trades for **1 150** of the **1 215** F2P medals ' +
  '(**1 950** gem-equivalents, **65** left over) where all-in on stones buys **7** = **105** stones; the stone line ' +
  'therefore gives **a = 3.5** trades/week F2P and **5.0** boosted (T014 3.3); ' + $c2

$c3 = '**Verified** (arith., Rev 10: the **band ladder in one formula**'
$d3 = '**Verified** (arith., Rev 11: **a pinned by the medal budget** - **7** all-in stone trades per F2P event ' +
  '(**105** stones, **a = 3.5**/week) and **10** boosted (**150**, **a = 5.0**), so the total week is ' +
  '**177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** (**49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43 y**) F2P and ' +
  '**200 / 274 / 552 / 1 200 / 6 520 / 20 280** (**43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43** y) boosted), ' + $c3

$c4 = '**Verified** (arith., Rev 5: the band ladder closes on one formula'
$d4 = '**Verified** (arith., Rev 6: **a = 3.5 F2P / 5.0 boosted** from the medal budget, the total week reading ' +
  '**177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** = **49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43 y** without the ' +
  'pass and **200 / 274 / 552 / 1 200 / 6 520 / 20 280** = **43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43** with it), ' + $c4

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1', $c3, $d3, '1', $c4, $d4, '1' )
