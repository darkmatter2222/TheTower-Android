param()
# Iteration 85: T002 Rev 4 in the ranked table (the wave clock).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the wave clock: 26 s length + 9 s cooldown = 35 s per wave at x1 (102.86 waves/h; x3 = 308.57, x5 = 514.29, x6.25 = 642.86), tournaments halve the cooldown = x1.1475 waves'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T002]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains('Rev 3')) { $f[$k] = $f[$k] -replace 'Rev 3', 'Rev 4'; $a++ }
    if ($f[$k].Contains('Range lab 1x-4x')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R2 = $M | Where-Object { $_.StartsWith('| [T002]') }
$o = 0; $c = 0
foreach ($ch in $R2.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev4=' + $R2.Contains('(arith., Rev 4)') + ' clock=' + $R2.Contains('35 s per wave at x1'))
