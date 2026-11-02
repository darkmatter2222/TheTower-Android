$p = 'README.md'
$L = Get-Content $p
$tail6 = 'the nine-weapon census: 39 lab tables reduce to 6 sequences (L-II = L-I - 750000 and -20 h, the DW line is the odd levels of the x1.5/x1.12 ladder because 2.25 = 1.5^2 and 1.2544 = 1.12^2); appendix A prices all 39 UW lab tables by printed name (31 leveled + 8 one-level unlocks = 565.25 B coins / 70.31 d of clock); and the nine workshop stone totals agree three ways per page (Smart Missiles 29,661 + 6,966 + 2,550 = 39,177; all nine = 244 542 stones)'
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if ($s.StartsWith('| [T006]')) {
    $i0 = $s.IndexOf('the nine-weapon census')
    $i1 = $s.IndexOf(' |', $i0)
    if ($i0 -lt 0 -or $i1 -lt 0) { Write-Output 'T006 anchors missing'; exit 1 }
    $s2 = $s.Substring(0, $i0) + $tail6 + $s.Substring($i1)
    $s2 = $s2 -replace '\(arith\., Rev 16\)', '(arith., Rev 17)'
    $L[$n] = $s2
  }
  if ($s.StartsWith('| [T008]')) {
    $k = $s.IndexOf('+ the GT matrix)')
    if ($k -lt 0) { Write-Output 'T008 anchor missing'; exit 1 }
    $cut = $k + '+ the GT matrix'.Length
    $s2 = $s.Substring(0, $cut) + ' + 9/9 workshop totals (244 542 stones)' + $s.Substring($cut)
    $s2 = $s2 -replace '\(arith\., Rev 6:', '(arith., Rev 7:'
    $L[$n] = $s2
  }
}
Set-Content -Path $p -Value $L -Encoding utf8
$M = Get-Content $p
$bad = 0
for ($n = 0; $n -lt $M.Count; $n++) { if ($M[$n].StartsWith('| [T0')) { $cc = ($M[$n].ToCharArray() | Where-Object { $_ -eq '|' }).Count; if ($cc -ne 7) { Write-Output ('BAD ' + $n + ' pipes=' + $cc); $bad++ } } }
$R6 = $M | Where-Object { $_.StartsWith('| [T006]') }
$R8 = $M | Where-Object { $_.StartsWith('| [T008]') }
Write-Output ('badRows=' + $bad)
Write-Output ('T006 rev17=' + $R6.Contains('(arith., Rev 17)') + ' tail=' + $R6.Substring($R6.Length - 58))
Write-Output ('T008 rev7=' + $R8.Contains('(arith., Rev 7:') + ' tail=' + $R8.Substring($R8.Length - 58))
