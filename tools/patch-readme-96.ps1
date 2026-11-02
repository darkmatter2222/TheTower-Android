param()
# Iteration 96: T006 Rev 18 in the ranked table (Appendix A.1 - value laws, the L1-10 cheap-tier bill, two ladder relations).
$p = 'README.md'
$L = Get-Content $p
$extra = '; appendix A.1 adds the value laws (**cap = v1 + step x (levels - 1)**, 29/29 numeric columns) and the beginner ' +
        'budget - the **18** labs whose level-1 price is <= 1 M coins cost **8.10 B coins / 462.33 d** of base slot time for ' +
        'their **first ten levels each** (~**24.8 d** of real time at 5 slots with the x3.725 stack), split **600.53 M / ' +
        '28.45 d** per L-II lab x 7 and **287.47 M / 19.07 d** per L-III lab x 6; and two new exact relations - ' +
        '**L-II - L-III = 5 h per level** (Sigma10 gap 5 h x 45 = 9.375 d vs printed 28.45 - 19.07 = 9.38 d, reading ' +
        'independent) and **a line = a family + an offset** (`Missiles Radius` - L-III = **550,000** constant, ' +
        '`Missile Amplifier` - L-II = **200,000 + 50,000n**)'
$old = '**Verified** (arith., Rev 17)'
$new = '**Verified** (arith., Rev 18: 29/29 value laws, cheap tier 8.10 B / 462.33 d for L1-10, L-II - L-III = 5 h/level)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T006]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('all nine = 244 542 stones)')) { $f[2] = $f[2] + $extra; $b++ }
  if ($a -ne 1 -or $b -ne 1) { Write-Output ('anchor counts rev=' + $a + ' desc=' + $b + ' f5=' + $f[5]); exit 1 }
  $L[$n] = ($f -join '|')
  $done++
}
Set-Content -Path $p -Value $L -Encoding utf8
$M = Get-Content $p
$bad = 0
foreach ($r in $M) {
  if ($r.StartsWith('| [T0')) {
    $cc = ($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count
    if ($cc -ne 7) { Write-Output ('BAD pipes=' + $cc); $bad++ }
  }
}
$R = @($M | Where-Object { $_.StartsWith('| [T006]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev18=' + $R.Contains('(arith., Rev 18:') + ' value=' + $R.Contains('cap = v1 + step x (levels - 1)') + ' cheap=' + $R.Contains('8.10 B coins / 462.33 d') + ' five=' + $R.Contains('5 h per level') + ' offset=' + $R.Contains('200,000 + 50,000n'))
