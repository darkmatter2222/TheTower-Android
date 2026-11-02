param()
# Iteration 91: T012 Rev 3 in the ranked table (printed ladders + the mastery 10 % law).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the mastery layer is one law (**v(k) = base + (k+1) x step** over all **31** printed rows): the stone unlock is ' +
         'exactly **one tenth** of the levelled effect (30/31 rows; `Wave Skip` 2/11), **27 500 stones + Cells 1 000 = 28 500**, ' +
         'one full lab **50.00 q coins / 562.5 d** base = **71 d** of income at 700 T/day'
$old = '**Verified** (arith., Rev 2)'
$new = '**Verified** (arith., Rev 3: the 31 printed ladders + the mastery 10 % law)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T012]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('per-star columns elsewhere are per-level')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R = @($M | Where-Object { $_.StartsWith('| [T012]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev3=' + $R.Contains('(arith., Rev 3:') + ' tenth=' + $R.Contains('one tenth') + ' stones=' + $R.Contains('28 500') + ' lab=' + $R.Contains('562.5'))
