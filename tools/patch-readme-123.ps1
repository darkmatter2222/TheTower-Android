param()
# Iteration 123: patches the T006 ranked-table row (Main Research category priced).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = 'Demon Mode - Nuke|'
$n1 = 'Demon Mode - Nuke ; the **Main Research category is now priced line by line** - four lines share one 99-level ' +
  'column (**111 695 939** coins / **1 444.98 d** each), `Enhancement Coin Discount` is one exact geometric ladder ' +
  '(**1.00 B x 1.30^(n-1)**, **1 555 x n** min clock) at **826.445 q** = **20.46 %** of the priced census, ' +
  '`Buy multiplier` completes for **562 500** coins / **89.8 h** |'

$o2 = '**Verified** (arith., Rev 26: the Recharge family'
$n2 = '**Verified** (arith., Rev 27: the Main Research category - Starting Cash plus the three Workshop Discount lines ' +
  'share one 99-level column at **111 695 939** coins / **1 444.98 d** each (**446 783 756** / **5 779.9 d** for the ' +
  'block), `Enhancement Coin Discount` **1.00 B x 1.30^(n-1)** with **826.445 q** = **20.46 %** of the priced census on ' +
  'an arithmetic **1 555 n** min clock, `Labs Coin Discount` **472 509 506 / 2 751 d** (0.011 % = the 3-s.f. print), ' +
  '`Buy multiplier` **562 500** coins / **89.8 h**), (arith., Rev 26: the Recharge family'

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
  ' shared=' + $chk.Contains('111 695 939') + ' ecd=' + $chk.Contains('826.445 q') +
  ' buy=' + $chk.Contains('562 500') + ' rev27=' + $chk.Contains('arith., Rev 27:'))
