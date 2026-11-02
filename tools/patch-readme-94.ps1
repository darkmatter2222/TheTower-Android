param()
# Iteration 94: T020 Rev 8 in the ranked table (four arithmetic value laws, two price ladders, the 0.761 cash discount).
$p = 'README.md'
$L = Get-Content $p
$extra = '; all four currency lines are **value = step x level** (`Coins / Kill Bonus` = `Cash Bonus` = **1 + 0.01L**, ' +
         '`Coins / Wave` = **L + 1**, `Cash / Wave` = **4L**) capped at **L149 = x2.49 / 150 / x2.49 / 596**, so the bills are ' +
         '**19.47 M** (coin pair) vs **14.82 M** (cash pair) = **0.761** -> buy the **cash line first** (a straight 25 % ' +
         'discount per level); the last point costs **9 360x** the first (50 -> 467.98 K coins per pp), so stopping at the ' +
         'band is arithmetic, and a partial band is two printed rows apart (L41-50 = **230.04 K** / **181.25 K**)'
$old = '**Verified** (arith., Rev 7)'
$new = '**Verified** (arith., Rev 8: the four value laws, caps L149, the two price ladders, 0.761)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T020]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Trim().Length -gt 20) { $f[2] = $f[2] + $extra; $b++ }
  if ($a -ne 1 -or $b -ne 1) { Write-Output ('anchor counts rev=' + $a + ' desc=' + $b + ' f5=' + $f[5]) ; exit 1 }
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
Write-Output ('rev8=' + $R.Contains('(arith., Rev 8:') + ' laws=' + $R.Contains('4L') + ' bill=' + $R.Contains('14.82 M') + ' disc=' + $R.Contains('0.761') + ' convex=' + $R.Contains('9 360x'))
