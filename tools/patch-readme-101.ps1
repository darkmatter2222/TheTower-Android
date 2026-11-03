param()
# Iteration 101: T008 Rev 10 in the ranked table (index page's three consolidated UW+ rows = 42/42 family cells,
# the 27/27 value-range second source + the levels law, and the printed 9705 Total).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the same page now prices the whole plus layer in **three printed rows** whose 14-cell ladders are ' +
        '**cell-for-cell the four families** (sums 23 800 / 20 070 / 19 050 against headers 23 800 / 18 570 / 19 050, so ' +
        'the A / A-prime gap of **1 500** is printed on one page), its effect table double-sources **all 27 value ' +
        'ranges** (27/27) and gives the panel names (`Bonus` on GT, `Speed Reduction` on CF, GT maxed cooldown ' +
        '**1m 40s**), depth is one law (**levels = max minus min, divided by the step**; 22/22 of the 27 lines), and ' +
        'the slot table finally prints its own `Total` **9705**'
$old = '**Verified** (arith., Rev 9: 27/27 per-line Total rows re-adding to 244 542, six closed-form arithmetic ladders, the shared 85/322/841 damage ladder, budgets 11 461 / 25 045 / 49 194 and the 8 865-stone package'
$new = '**Verified** (arith., Rev 10: 42/42 family cells on two independent prints, the 27/27 value ranges with levels = (max - min) / step at 22/22, budgets 11 461 / 25 045 / 49 194 and the 8 865-stone package'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T008]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('the knee-first package over all 27 lines is **8 865** stones')) { $f[2] = $f[2] + $extra; $b++ }
  if ($a -ne 1 -or $b -ne 1) { Write-Output ('anchor counts rev=' + $a + ' desc=' + $b + ' f2=' + $f[2].Substring([Math]::Max(0, $f[2].Length - 200))); exit 1 }
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
$R = @($M | Where-Object { $_.StartsWith('| [T008]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev10=' + $R.Contains('(arith., Rev 10:') + ' fam=' + $R.Contains('cell-for-cell the four families') + ' gap=' + $R.Contains('1 500') + ' ranges=' + $R.Contains('27/27') + ' law=' + $R.Contains('divided by the step') + ' t9705=' + $R.Contains('9705'))
