param()
# Iteration 95: T020 Rev 9 in the ranked table (18-row census law + per-track bills + the discount labs' stop level).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the enhancement layer is one law (**At max = 1 + step x Max**, 18/18, step +0.01 except `Land Mine Damage +` ' +
         '+0.06 => x37) with a printed bill per track (**Attack 2.233 S / Defense 2.543 S / Utility 7.598 S = 12.374 S**, ' +
         'so Utility is 61 % of the whole coin sink) and **2.52 - 996.67 s of coins per multiplier unit** across it; the ' +
         'three `Workshop ... Discount` labs share the `Starting Cash` ladder (30 -> 4 190 609, Sum **111 682 359**) at ' +
         '**0.50 % x n** (L99 = -49.50 %), and each level is bought while **price(n) <= 0.005 x remaining bill** ' +
         '=> stop at **L30** (1.23 M coins for -15.00 %), all 99 once the layer opens'
$old = '**Verified** (arith., Rev 8: the four value laws, caps L149, the two price ladders, 0.761)'
$new = '**Verified** (arith., Rev 9: 18-row census law, per-track bills 2.233 / 2.543 / 7.598 S, discount labs 0.50 % x n, stop level L30)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T020]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('two printed rows apart')) { $f[2] = $f[2] + $extra; $b++ }
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
$R = @($M | Where-Object { $_.StartsWith('| [T020]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev9=' + $R.Contains('(arith., Rev 9:') + ' census=' + $R.Contains('At max = 1 + step x Max') + ' tracks=' + $R.Contains('7.598 S') + ' disc=' + $R.Contains('111 682 359') + ' stop=' + $R.Contains('stop at **L30**'))
