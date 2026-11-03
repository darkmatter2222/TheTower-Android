param()
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = 'Area of Effect`)|'
$n1 = 'Area of Effect`) ; the complete **30-cell** `Double Death Ray` ladder re-adds to **1 097.15 B** coins / ' +
  '**892.31 d** of clock, the knee is **L10** (**0.11 %** of the coins for a third of the value, **292x** cheaper per ' +
  'point than the line average) and the line is a **fifth clock shape** (cost tail **1.208**, time tail **1.13**|'

$o2 = 'and the printed save order), (arith., Rev 6: one script re-adds'
$n2 = 'and the printed save order), (arith., Rev 8: all **30** `Double Death Ray` cells transcribed - **1 251.25 M** ' +
  '(0.11 %) / **90.22 B** (8.22 %) / **1 005.68 B** (91.66 %) by decade and **492.7 h / 3 864.8 h / 17 058 h**, with ' +
  'the per-point law **0.125 125 B** vs **36.572 B** vs **100.57 B** and a monotone-decaying ratio tail), (arith., ' +
  'Rev 6: one script re-adds'

$map = @($o1, $n1, $o2, $n2)
for ($i = 0; $i -lt $map.Length; $i += 2) {
  $c = ([regex]::Matches($txt, [regex]::Escape($map[$i]))).Count
  if ($c -ne 1) { Write-Output ('pair ' + ($i / 2 + 1) + ' count=' + $c); exit 1 }
  $txt = $txt.Replace($map[$i], $map[$i + 1])
}
[System.IO.File]::WriteAllText('README.md', $txt, $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('applied=2 rows=' + $rows.Count + ' badRows=' + $bad +
  ' strayE2=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count +
  ' sum=' + $chk.Contains('892.31 d') + ' knee=' + $chk.Contains('292x') + ' rev8=' + $chk.Contains('arith., Rev 8:'))
