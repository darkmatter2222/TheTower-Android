param()
# Iteration 98: T020 Rev 11 in the ranked table (defense-track ledger + the Wall closed forms).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the defense track repeats the split from **18** more lines - **9** caps for <= 5 M (**10.767 M**, their L1-10 ' +
        'pass **40 710** coins) vs **9** deep caps (**6.525 q**, `Land Mine Damage` alone 2.45 q), **13 of 18** value columns ' +
        'are `a + step x L` (`20 + 0.1 x 1800 = 200.00 %`, `1200 - 2 x 300 = 600 s`, `100 + 10 x 200 = 2100 %`), the ' +
        'per-point order is `Knockback Chance` **20 310** < `Thorn Damage` **23 729** < `Defense Percent` **56 461** << ' +
        '`Land Mine Chance` **526 156** << `Death Defy` **58.06 M**, and the 6 000-level flat-stat lines share one ' +
        'whole-line price ratio (**1.0043 / 1.0039 / 1.0033**)'
$old = '**Verified** (arith., Rev 10: attack ledger 22.88 M vs 839.30 q, prefix-sum 9/9, Coin Bonus + to L250 with the 28.6x band, per-point 1.03 / 6.17 / 157.8 B)'
$new = '**Verified** (arith., Rev 11: defense ledger 10.767 M vs 6.525 q, 13/18 value laws, Wall 1200 - 2L and 20 + 0.1L, per-point 20 310 / 23 729 / 56 461)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T020]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('< standard **+0.01** line **6.17 B**')) { $f[2] = $f[2] + $extra; $b++ }
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
Write-Output ('rev11=' + $R.Contains('(arith., Rev 11:') + ' cheap=' + $R.Contains('10.767 M') + ' deep=' + $R.Contains('6.525 q') + ' wall=' + $R.Contains('1200 - 2 x 300 = 600 s') + ' pp=' + $R.Contains('526 156'))
