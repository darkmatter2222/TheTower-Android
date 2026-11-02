param()
# Iteration 97: T020 Rev 10 in the ranked table (attack-track ledger + Coin Bonus + to L250 + enhancement per-point order).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the **17**-line attack-track ledger splits into two price worlds - **9** caps for <= 5 M each (**22.88 M** ' +
        'together, their **L1-10** pass only **31 480** coins) vs **8** caps at B-q (**839.30 q**), `Total Cost` verified as ' +
        'a running total **9/9** (<= 0.19 %), and `Damage` is a **6 000**-level line with whole-line ratio **1.0043**; ' +
        '`Coin Bonus +` is printed to **L250** (totals 1.42 T -> 41.94 T -> 878.95 T -> 9.64 q -> ... -> 336.82 s) so the ' +
        'second 10-level band alone is **28.6x** the first at the same +10 pp, and per printed point ' +
        '`Land Mine Damage +` **1.03 B** < standard **+0.01** line **6.17 B** < `Coin Bonus +` **157.8 B**'
$old = '**Verified** (arith., Rev 9: 18-row census law, per-track bills 2.233 / 2.543 / 7.598 S, discount labs 0.50 % x n, stop level L30)'
$new = '**Verified** (arith., Rev 10: attack ledger 22.88 M vs 839.30 q, prefix-sum 9/9, Coin Bonus + to L250 with the 28.6x band, per-point 1.03 / 6.17 / 157.8 B)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T020]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('all 99 once the layer opens')) { $f[2] = $f[2] + $extra; $b++ }
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
Write-Output ('rev10=' + $R.Contains('(arith., Rev 10:') + ' ledger=' + $R.Contains('22.88 M') + ' deep=' + $R.Contains('839.30 q') + ' band=' + $R.Contains('28.6x') + ' perpoint=' + $R.Contains('157.8 B'))
