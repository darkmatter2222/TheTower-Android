param()
# Iteration 120: patches the T019 and T012 ranked-table rows. ASCII-only anchors, flat pair array.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = '(retroactive) |'
$n1 = '(retroactive) ; the page''s own **eight block Totals rows** close four ways - free gems **19 230**, free stones ' +
  '**4 430**, paid stones **7 870**, coins **1.3436 q** - and the coin ledger is **98.6 %** the T22-24 block while ' +
  'T1-12 is **0.08 %**, so below T13 claim for **gems, stones and the lab unlocks** only |'

$o2 = '(12/12 column totals re-add) / Medium model (H038) |'
$n2 = '**Verified** (arith., Rev 4: the eight block Totals rows close four ways, the one skew is localised - paid gems ' +
  'add to **29 495** vs the grand **23 955**, the gap **5 540** being exactly the T19-21 block, and the 60-gem ' +
  'difference is one cell (`T4` **320** vs **380**); the four **card gates** are printed (**T7 W250** `Land Mine Stun`, ' +
  '**T11 W10** `Nuke`, **T14 W50** `UW Crit`, **T20 W80** `Area of Effect`), (12/12 column totals re-add) / ' +
  'Medium model (H038) |'

$o3 = 'and the save-order law (**H062**)|'
$n3 = 'and the save-order law (**H062**) ; four **card gates** double-sourced from the milestone table (**T7 W250** ' +
  '`Land Mine Stun`, **T11 W10** `Nuke`, **T14 W50** `UW Crit`, **T20 W80** `Area of Effect`)|'

$map = @($o1, $n1, $o2, $n2, $o3, $n3)
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
Write-Output ('applied=3 rows=' + $rows.Count + ' badRows=' + $bad +
  ' strayE2=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count +
  ' totals=' + $chk.Contains('1.3436 q') + ' paidGems=' + $chk.Contains('29 495') +
  ' gates=' + $chk.Contains('T20 W80') + ' conv=' + $chk.Contains('98.6 %'))
