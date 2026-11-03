param()
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'README.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$c1 = '**Verified** (arith., Rev 11: the orbless acceptance test'
$d1 = '**Verified** (arith., Rev 12: **stones as the third resource** - the 27 basic lines close at `Sigma ln` ' +
  '**67.4684** and the nine UW+ trees at **25.2146**, stage densities **0.041445 / 0.022090 / 0.012283 / 0.003272** per ' +
  'day with the first three stages at **20.1 %** of the bill for **62.6 %** of the ln, the **8 865** knee package at ' +
  '**328.0 st/ln** vs **611.8** for uniform L5 depth (**1.86x**) and its xdamage quintet at **0.102515**/day, merged ' +
  'head **E D F quintet knee-pkg sheet L** invariant in both readings and the quintet beating `E` from Gold up, ' +
  'income **13.929 ... 2 893.929** st/day, `tools/stone-day-ledger.ps1`), ' + $c1
$c = ([regex]::Matches($txt, [regex]::Escape($c1))).Count
if ($c -ne 1) { Write-Output ('MISS count=' + $c); return }
$txt = $txt.Replace($c1, $d1)
[System.IO.File]::WriteAllText($p, $txt, $u8)
Write-Output ($p + ' applied')
$i = ([regex]::Matches([System.IO.File]::ReadAllText('docs/INDEX.md', [System.Text.Encoding]::UTF8), 'Rev 12')).Count
$j = ([regex]::Matches([System.IO.File]::ReadAllText('docs/INDEX.md', [System.Text.Encoding]::UTF8), 'session 138')).Count
Write-Output ('INDEX Rev12-occurrences=' + $i + ' ; session138=' + $j)
