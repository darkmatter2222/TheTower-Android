param()
# Iteration 99: T020 Rev 12 in the ranked table (Packages trio on one ladder + the Wave Skip 1.1^n law).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the Utility track closes with the **Packages trio on one price ladder** (L1 **1.00 K** = **2 500 coins per ' +
        'printed pp**, the cheapest in the layer; L1-10 total **59.12 K** each, so the head of all three is **177 360** ' +
        'coins) over three different caps - `Package Chance` **60** lv / **30.00 %** / **321.28 M**, `Recovery Amount` ' +
        '**300** lv / **134.00 %** / **1.33 T**, `Max Recovery` **500** lv / **16.50x** / **15.77 T** - with the second ' +
        '10-level band **24.7x** the first, `Packages +` printed to **x7.00** at 600 lv for **441.24 s** (36 % of the ' +
        'Utility-track bill), and `Wave Skip` carrying the printed law **1.1^n** (1.21 / 1.331 / 1.611 / 2.594 at n = ' +
        '2/3/5/10) with a `10 % + 5 % x L` => **55 %** mastery lab at L9 for **1 000** stones'
$old = '**Verified** (arith., Rev 11: defense ledger 10.767 M vs 6.525 q, 13/18 value laws, Wall 1200 - 2L and 20 + 0.1L, per-point 20 310 / 23 729 / 56 461)'
$new = '**Verified** (arith., Rev 12: Packages trio 321.28 M / 1.33 T / 15.77 T on one ladder at 2 500 coins per pp, second band 24.7x, Wave Skip 1.1^n with the 55 % mastery lab)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T020]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('whole-line price ratio (**1.0043 / 1.0039 / 1.0033**)')) { $f[2] = $f[2] + $extra; $b++ }
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
Write-Output ('rev12=' + $R.Contains('(arith., Rev 12:') + ' pp=' + $R.Contains('2 500 coins per printed pp') + ' caps=' + $R.Contains('321.28 M') + ' band=' + $R.Contains('24.7x') + ' skip=' + $R.Contains('1.1^n'))
