param()
# Iteration 93: T001 Rev 5 in the ranked table (the two printed rate ladders + the cap ladder's marginal costs).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the two rate ladders are printed arithmetic (`Interest` = **0.06 % x L**, cap **L99 = 5.94 %**, ' +
         'Sum **7.36 M** coins; the lab = **1 + 0.02n**, cap **x2.98**) so both maxed = **17.70 %/wave** and L50/L50 = ' +
         '**6.00 %**; the cap ladder costs **200 -> 41.2 -> 14 -> 5.4 -> 9.2 $ of cap per 1k gems**, so buy **1-4, then 7, ' +
         'then 10-12**'
$old = '**Verified** (arith.)'
$new = '**Verified** (arith., Rev 5: 0.06 % x L and 1 + 0.02n, so 5.94 x 2.98 = 17.70 %)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T001]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('Interest % + Max Interest')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R = @($M | Where-Object { $_.StartsWith('| [T001]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev5=' + $R.Contains('(arith., Rev 5:') + ' rate=' + $R.Contains('0.06 % x L') + ' ceil=' + $R.Contains('17.70') + ' caps=' + $R.Contains('then 10-12'))
