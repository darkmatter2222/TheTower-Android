$p = 'README.md'
$L = Get-Content $p
$add = '; appendix A prices all 39 UW lab tables by printed name (31 leveled + 8 one-level unlocks, the unlocks alone = 565.25 B coins / 70.31 d of clock), and the workshop stone ledgers close by subtraction (Smart Missiles 39,177 = 3,745 + 33,384 + 2,048)'
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T006]')) { continue }
  $k = $s.IndexOf('1.2544 = 1.12^2)')
  if ($k -lt 0) { Write-Output 'anchor missing'; exit 1 }
  $cut = $k + '1.2544 = 1.12^2)'.Length
  $s2 = $s.Substring(0, $cut) + $add + $s.Substring($cut)
  $s2 = $s2 -replace '\(arith\., Rev 15\)', '(arith., Rev 16)'
  $L[$n] = $s2
  Set-Content -Path $p -Value $L -Encoding utf8
  break
}
$M = Get-Content $p
$bad = 0
for ($n = 0; $n -lt $M.Count; $n++) { if ($M[$n].StartsWith('| [T0')) { $cc = ($M[$n].ToCharArray() | Where-Object { $_ -eq '|' }).Count; if ($cc -ne 7) { Write-Output ('BAD ' + $n + ' pipes=' + $cc); $bad++ } } }
$R = $M | Where-Object { $_.StartsWith('| [T006]') }
Write-Output ('badRows=' + $bad + ' pipes=' + (($R.ToCharArray() | Where-Object { $_ -eq '|' }).Count) + ' rev16=' + $R.Contains('(arith., Rev 16)') + ' tail=' + $R.Substring($R.Length - 62))
