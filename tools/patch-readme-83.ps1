param()
# Iteration 83: T009 Rev 5 in the ranked table (community ladder re-priced + the L50 lab-speed bill).
$p = 'README.md'
$L = Get-Content $p
$extra = 'community-ladder checkpoints 310 / 2 650 / 9 020 gems (matches Path A within three pulls), lab speed to L50 = x2.00 for 2,258,611 coins; '
$old = '**Double-sourced** (Rev 4: two price wikis + the printed order)'
$new = '**Three-sourced** (Rev 5: two price wikis + two independent printed ladders, and the community ladder re-adds from the same price table)'
$n9 = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T009]')) { continue }
  if (-not $s.Contains($old)) { Write-Output 'T009 verified-column anchor missing'; exit 1 }
  $s2 = $s -replace ([regex]::Escape($old)), $new
  $a = 'the 80-card quest; '
  if ($s2.Contains($a)) {
    $i = $s2.IndexOf($a) + $a.Length
    $s2 = $s2.Substring(0, $i) + $extra + $s2.Substring($i)
  } else { Write-Output 'T009 description anchor missing'; exit 1 }
  $L[$n] = $s2
  $n9++
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
$R9 = $M | Where-Object { $_.StartsWith('| [T009]') }
$o = 0; $c = 0
foreach ($ch in $R9.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows patched=' + $n9 + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('three=' + $R9.Contains('**Three-sourced** (Rev 5'))
Write-Output ('ladder=' + $R9.Contains('9 020 gems') + ' l50=' + $R9.Contains('x2.00 for 2,258,611 coins'))
