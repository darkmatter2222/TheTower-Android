param()
# Iteration 89: T013 Rev 6 in the ranked table (the milestone-skin free leg + the printed counts).
$p = 'README.md'
$L = Get-Content $p
$extra = "; the free leg is one law: milestone skins arrive at **wave 2,500** of each tier and are **paid iff tier mod 3 = 2** (21/21 printed rows), so free skins by Tier N = **N - floor((N+1)/3)** (7 at T11 = **+2.8 pp**, 9 at T13 = +3.6 pp); with the page's own printed counts **83 / 58 / 44** the full cosmetic line is **+95.2 pp (x1.95)**, and part-pair buys go background (**312.5** medals/pp) before song (333) before tower skin (375)"
$old = '**Verified** (arith., Rev 5)'
$new = '**Verified** (arith., Rev 6: the 21/21 skin laws + the 83/58/44 bucket table)'
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T013]')) { continue }
  $f = $s -split '\|'
  $a = 0; $b = 0
  for ($k = 0; $k -lt $f.Count; $k++) {
    if ($f[$k].Contains($old)) { $f[$k] = $f[$k] -replace ([regex]::Escape($old)), $new; $a++ }
    if ($f[$k].Contains('gems pre-labs')) { $f[$k] = $f[$k] + $extra; $b++ }
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
$R = $M | Where-Object { $_.StartsWith('| [T013]') }
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev6=' + $R.Contains('(arith., Rev 6:') + ' law=' + $R.Contains('tier mod 3 = 2') + ' counts=' + $R.Contains('**83 / 58 / 44**'))
