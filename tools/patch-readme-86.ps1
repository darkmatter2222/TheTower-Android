param()
# Iteration 86: T024 Rev 2 in the ranked table (the ELS Reduction tier staircase).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the tier bill is one staircase - `ELS Reduction` needs level **5 x (tier - 13)** (5 at T14 ... 40 at T21, 8/8 exact) so buy the perk in blocks of five, and the same **62.40 %** panel is worth **x0.95 -> x0.60** of its skip from T14 to T21'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T024]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains('Rev 1:')) { $f[$k] = ($f[$k] -replace 'Rev 1:', 'Rev 2:') -replace 'the running-total row', 'the running-total row + the 8/8 tier staircase'; $a++ }
    if ($f[$k].Contains('rolls it per skipped wave')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R = $M | Where-Object { $_.StartsWith('| [T024]') }
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev2=' + $R.Contains('(arith., Rev 2:') + ' stair=' + $R.Contains('5 x (tier - 13)'))
