param()
# Iteration 87: T011 Rev 6 in the ranked table (the per-tier perk bill).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the per-tier perk bill: **0** picks through Tier 13, then **146** (T14) ... **1,056** (T21) - all 8 printed marginals re-add from the family steps (+10 lines, +15 Ultimate lines, +5 ELS), and the Tier-14 bill costs 29,200 / 9,125 / 4,424 waves at 5 / 16 / 33 picks per 1,000 waves'
$old = '**Verified** (arith., Rev 5)'
$new = '**Verified** (arith., Rev 6: the printed perk ladders + the 8/8 per-tier perk bill)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T011]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('four footguns)')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R = $M | Where-Object { $_.StartsWith('| [T011]') }
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev6=' + $R.Contains('(arith., Rev 6:') + ' bill=' + $R.Contains('**1,056** (T21)'))
