param()
# Iteration 88: T014 Rev 8 in the ranked table (the ten-band ladders + the n* = floor(P/10) ticket law).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the ten-band ladders are now printed in full (both sources agree 20/20 cells in Copper/Silver/Gold; band widths 1,1,2,2,2,2,2,3,7,8 and ...,9,6 both sum to 30) and ticket buying has one law: **n* = floor(P/10)** bought tickets (P = gems + 10 x stones) for **>= x2.00** on the gems sunk in, the second ceiling being the 72 h bracket clock - for a beginner both meet at **8 runs of wave 1,000**'
$old = '**Verified** (arith., Rev 7)'
$new = '**Verified** (arith., Rev 8: 130 ladder cells + the n* = floor(P/10) law)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T014]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('R_max = 54.4')) { $f[$k] = $f[$k] + $extra; $b++ }
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
Write-Output ('rev8=' + $R.Contains('(arith., Rev 8:') + ' law=' + $R.Contains('n* = floor(P/10)'))
