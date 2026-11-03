param()
# Iteration 119: patches the T006 and T012 ranked-table rows (Rev 26 / Rev 7). ASCII-only, flat pair array.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = '**67.6 %** of the clock|'
$n1 = '**67.6 %** of the clock ; the **Recharge family** - four T14 W60 seven-level labs share one cost/time ladder ' +
  '(**14.43 T** and **10 374 360 s = 120 d 1 h 46 m** each, **43.29 T / 360.22 d** for the three printed lines) while ' +
  'their value ladders are per-lab (**Nuke(k) = Second Wind(k+1)** on 6/6), plus the printed save order ' +
  'Death Defy - Energy Shield - Second Wind - Demon Mode - Nuke|'

$o2 = '**Verified** (arith., Rev 25: the running bill of the priced lab layers'
$n2 = '**Verified** (arith., Rev 26: the Recharge family - four T14 W60 seven-level labs on one cost/time ladder, ' +
  '**14.43 T** / **10 374 360 s** each and **43.29 T / 360.22 d** printed, with the per-lab value law ' +
  '**Nuke(k) = Second Wind(k+1)** and the printed **save-order law**), (arith., Rev 25: the running bill of the priced ' +
  'lab layers'

$o3 = '= x3.00**)|'
$n3 = '= x3.00**) ; the **Nuke** page adds the first **special-card star ladder** **25 / 35 / 45 / 55 / 65 / 80 / ' +
  '100 %** (+10 x4 then +15, +20), the corrected Recharge Sigma **14.43 T / 10 374 360 s**, and the save-order law ' +
  '(**H062**)|'

$o4 = '**Verified** (arith., Rev 6: one script re-adds'
$n4 = '**Verified** (arith., Rev 7: the nuke page - first special-card star ladder **25 ... 100 %**, the Recharge ' +
  'family Sigma **14.43 T / 10 374 360 s = 120 d 1 h 46 m** with **Nuke(k) = Second Wind(k+1)** on 6/6 steps, and the ' +
  'printed save order), (arith., Rev 6: one script re-adds'

$map = @($o1, $n1, $o2, $n2, $o3, $n3, $o4, $n4)
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
Write-Output ('applied=4 rows=' + $rows.Count + ' badRows=' + $bad +
  ' strayE2=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count +
  ' recharge=' + $chk.Contains('10 374 360 s') + ' starladder=' + $chk.Contains('25 / 35 / 45 / 55 / 65 / 80 / 100 %') +
  ' rev7=' + $chk.Contains('arith., Rev 7:') + ' rev26=' + $chk.Contains('arith., Rev 26:'))
