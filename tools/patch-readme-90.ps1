param()
# Iteration 90: T014 Rev 9 in the ranked table (the per-league closed forms + H057).
$p = 'README.md'
$L = Get-Content $p
$extra = '; a bracket is predictable from its league number (k = 1 Copper .. 6 Legend): conditions counted by **active(k) = (k-1) + [k>=3] + [k>=4]** = 0/1/3/5/6/7, bosses every **11-k** waves, only **1/15/105/455/1820/6188** configurations to learn (Gold = 105), and skip **x0.9544/0.9088/0.8632/0.7720** at maxed BC labs (labs buy x1.06..x1.544 of effective skip); heat at wave 200 is only **level 4 of 19**'
$old = '**Verified** (arith., Rev 8: 130 ladder cells + the n* = floor(P/10) law)'
$new = '**Verified** (arith., Rev 9: the ladders, n* = floor(P/10), and the four per-league laws)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T014]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('8 runs of wave 1,000**')) { $f[$k] = $f[$k] + $extra; $b++ }
  }
  if ($a -ne 1 -or $b -ne 1) { Write-Output ('anchor counts rev=' + $a + ' desc=' + $b); exit 1 }
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
$R = $M | Where-Object { $_.StartsWith('| [T014]') }
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev9=' + $R.Contains('(arith., Rev 9:') + ' active=' + $R.Contains('active(k)') + ' heat=' + $R.Contains('level 4 of 19'))
