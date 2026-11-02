$p = 'README.md'
$L = Get-Content $p
$s = $L[15]
$add = '; the UW-category lab lines are per-level (the DW line is exactly x2.25 in coins and x1.2544 in time per level) and their level-10 knee costs 0.5 % of the 25-level bill for 40 % of the value steps'
$k = $s.IndexOf('Closest and Spotlight)')
$s2 = $s.Substring(0, $k + 20) + $add + $s.Substring($k + 20)
$s2 = $s2 -replace '\(arith\., Rev 13\)', '(arith., Rev 14)'
$L[15] = $s2
Set-Content -Path $p -Value $L -Encoding utf8
$M = Get-Content $p
$c = ($M[15].ToCharArray() | Where-Object { $_ -eq '|' }).Count
$bad = 0
for ($n = 0; $n -lt $M.Count; $n++) { if ($M[$n].StartsWith('| [T0')) { $cc = ($M[$n].ToCharArray() | Where-Object { $_ -eq '|' }).Count; if ($cc -ne 7) { Write-Output ('BAD ' + $n + ' pipes=' + $cc); $bad++ } } }
Write-Output ('T006 pipes=' + $c + ' badRows=' + $bad + ' tail=' + $M[15].Substring($M[15].Length - 62))
