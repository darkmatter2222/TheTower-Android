$p = 'README.md'
$L = Get-Content $p
$add = '; the nine-weapon census: 39 lab tables reduce to 6 sequences (L-II = L-I - 750000 and -20 h, the DW line is the odd levels of the x1.5/x1.12 ladder because 2.25 = 1.5^2 and 1.2544 = 1.12^2)'
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T006]')) { continue }
  $k = $s.IndexOf('for 40 % of the value steps')
  if ($k -lt 0) { Write-Output 'anchor missing'; exit 1 }
  $cut = $k + 'for 40 % of the value steps'.Length
  $s2 = $s.Substring(0, $cut) + $add + $s.Substring($cut)
  $s2 = $s2 -replace '\(arith\., Rev 14\)', '(arith., Rev 15)'
  $L[$n] = $s2
  Set-Content -Path $p -Value $L -Encoding utf8
  break
}
$M = Get-Content $p
$bad = 0
for ($n = 0; $n -lt $M.Count; $n++) { if ($M[$n].StartsWith('| [T0')) { $cc = ($M[$n].ToCharArray() | Where-Object { $_ -eq '|' }).Count; if ($cc -ne 7) { Write-Output ('BAD ' + $n + ' pipes=' + $cc); $bad++ } } }
$R = $M | Where-Object { $_.StartsWith('| [T006]') }
Write-Output ('badRows=' + $bad + ' pipes=' + (($R.ToCharArray() | Where-Object { $_ -eq '|' }).Count) + ' rev15=' + $R.Contains('(arith., Rev 15)') + ' tail=' + $R.Substring($R.Length - 62))
