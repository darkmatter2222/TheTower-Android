param()
# Iteration 100: T008 Rev 9 in the ranked table (27/27 per-line Total rows + the six arithmetic ladders + the shared
# five-line damage ladder at 85/322/841 + the 11 461 / 25 045 / 49 194 budgets and the 8 865-stone package).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the nine pages now price **all 27 lines** (each `Cost` column re-added to its own printed `Total`, **27/27**, ' +
        're-adding to **244 542**) - **six lines are pure arithmetic** (`Sum = n/2 x (2c1 + (n-1)d)`: BH Cooldown 2 040, ' +
        'CL Chance = PS Cooldown 2 010 twice, ILM Cooldown 1 800, CF Duration 5 530, CF Cooldown 1 506), the **five ' +
        '`xdamage` lines ride one ladder** (**85 / 322 / 841** stones at L5/10/15, 5/5) and are the only lines that get ' +
        'cheaper with depth (**x0.24-x0.40**, 5 -> ~2 stones per x1) while the other 22 degrade **x2.8-x580**; budgets: ' +
        'first 5 levels of every line = **11 461** stones = **4.69 %** of the bill, first 10 = **25 045**, first 15 = ' +
        '**49 194**, and the knee-first package over all 27 lines is **8 865** stones (it contains the 2 620 triple-sync ' +
        'package: 910 + 910 + 800)'
$old = '**Verified** (arith., Rev 8: 9/9 stone values + 4/4 lattice rows + the 53 547 ledger + the 9 UW+ tables as four sequences (179 240) +  the GT matrix + 9/9 workshop totals (244 542 stones)'
$new = '**Verified** (arith., Rev 9: 27/27 per-line Total rows re-adding to 244 542, six closed-form arithmetic ladders, the shared 85/322/841 damage ladder, budgets 11 461 / 25 045 / 49 194 and the 8 865-stone package'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T008]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('Chrono Field range (lower CPH, still max it)')) { $f[2] = $f[2] + $extra; $b++ }
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
$R = @($M | Where-Object { $_.StartsWith('| [T008]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev9=' + $R.Contains('(arith., Rev 9:') + ' lines27=' + $R.Contains('27/27') + ' arith=' + $R.Contains('5 530') + ' shared=' + $R.Contains('85 / 322 / 841') + ' budget=' + $R.Contains('11 461') + ' pkg=' + $R.Contains('8 865'))
