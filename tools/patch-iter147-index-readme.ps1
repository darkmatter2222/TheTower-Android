param()
# Iteration 147: INDEX (T008 Rev 12 + the session-138 anchor) and README (T008 cells). ASCII-only literals.
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
$a1 = '**Verified (Rev 11**, arithmetic: 9/9 stone values'
$b1 = '**Verified (Rev 12**, arithmetic: **stones as the third resource of the day model** - the 27 basic lines close at ' +
  '`Sigma ln` **67.4684** and the nine UW+ trees at **25.2146** with every fitted cap equal to its printed cell, the four ' +
  'S3.1 stages priced marginally at **0.041445 / 0.022090 / 0.012283 / 0.003272** per day so the first three stages are ' +
  '**20.1 %** of the bill for **62.6 %** of the ln; the **8 865** knee package is **328.0 st/ln** against **611.8** for ' +
  'uniform-L5 depth (**1.86x**) and its xdamage quintet alone is **0.102515**/day, the nine sub-blocks re-add to ' +
  '**8 865 / 27.0281**, UW+ first-5 **24 265 st / ln 14.6013 = 0.015258**, Bot+ unlocks **0.008121**, the eight currency ' +
  'mastery unlocks **0.003691**, the 25 pure unlock rows **32 855 st** at ln 0; the merged 27-item schedule has a **six-item ' +
  'head E D F quintet knee-pkg sheet then L** invariant in both pp readings, from the **Gold** band up the quintet beats ' +
  '`E`, the income grid is **13.929 ... 2 893.929** st/day and the model re-derives T014 3.3 **49.0 / 43.5 y**, ' +
  '`tools/stone-day-ledger.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 137 (T006 Rev 42)](log/2026-11-03.md#2026-11-03---session-137-iteration-146-the-four-single-law-blocks-on-value)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 138 (T008 Rev 12)](log/2026-11-03.md#2026-11-03---session-138-iteration-147-stones-as-the-third-resource-of-the-day-model)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = '**Verified** (arith., Rev 11: the orbless acceptance test'
$d1 = '**Verified** (arith., Rev 12: **stones as the third resource** - the 27 basic lines close at `Sigma ln` ' +
  '**67.4684** and the nine UW+ trees at **25.2146**, stage densities **0.041445 / 0.022090 / 0.012283 / 0.003272** per ' +
  'day with the first three stages at **20.1 %** of the bill for **62.6 %** of the ln, the **8 865** knee package at ' +
  '**328.0 st/ln** vs **611.8** for uniform L5 depth (**1.86x**) and its xdamage quintet at **0.102515**/day, merged ' +
  'head **E D F quintet knee-pkg sheet L** invariant in both readings and the quintet beating `E` from Gold up, ' +
  'income **13.929 ... 2 893.929** st/day, `tools/stone-day-ledger.ps1`), ' + $c1

Patch 'README.md' @( $c1, $d1, '1' )
