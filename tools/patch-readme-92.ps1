param()
# Iteration 92: T010 Rev 8 in the ranked table (printed module layer: tier law, sub-stat values, lock ladder).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the shard supply is now arithmetic: boss drops at **15 %** with quantity **40 + 5(t-11)** from T11 ' +
         '(**EV/boss 2.70 at T8, 6.00 at T11, 12.75 at T20**), the currency sub-stats are printed per rarity ' +
         '(`Cash / Wave` 30 -> **1 000** = x33.3, `Coins / Wave` 20 -> **350**, `Interest / Wave` **2-8 %** from Epic, ' +
         'the three `Free ... Upgrade` lines +2 pp/step), a sub-stat rarity is capped by the module own rarity, and the ' +
         'reroll lock ladder is **10/40/160/500** (3 locks = **71x** the unlocked price, 7 locks 300x)'
$old = '**Verified** (arith., Rev 7)'
$new = '**Verified** (arith., Rev 8: the 40 + 5(t-11) tier law, the 13-row sub-stat table, the lock ladder)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T010]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('at L50)')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R = @($M | Where-Object { $_.StartsWith('| [T010]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev8=' + $R.Contains('(arith., Rev 8:') + ' tier=' + $R.Contains('40 + 5(t-11)') + ' cash=' + $R.Contains('x33.3') + ' lock=' + $R.Contains('71x'))
