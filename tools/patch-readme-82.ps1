param()
# Iteration 82: T008 Rev 8 in the ranked table (UW+ cost rows = four shared sequences, 179 240 closes at five depths).
$p = 'README.md'
$L = Get-Content $p
$extra = 'the nine UW+ cost rows are four shared sequences (A = 20,070 GT+, A-prime = 18,570 ILM+, B = 16,350/19,050/37,050 at caps 13/14/19, C = 12,650/23,800 at caps 11/14) that re-add to 179 240'
$hit = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T008]')) { continue }
  $i0 = $s.IndexOf('(244 542 stones)')
  if ($i0 -lt 0) { Write-Output 'anchor (244 542 stones) missing'; exit 1 }
  $cut = $i0 + '(244 542 stones)'.Length
  $s2 = $s.Substring(0, $cut) + '; ' + $extra + $s.Substring($cut)
  $s2 = $s2 -replace '\(arith\., Rev 7:', '(arith., Rev 8:'
  $s2 = $s2 -replace '\+ the 9 UW\+ tables \+', '+ the 9 UW+ tables as four sequences (179 240) + '
  $L[$n] = $s2
  $hit++
}
Set-Content -Path $p -Value $L -Encoding utf8
$M = Get-Content $p
$bad = 0
foreach ($r in $M) {
  if ($r.StartsWith('| [T0')) {
    $cc = ($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count
    if ($cc -ne 7) { Write-Output ('BAD pipes=' + $cc + ' :: ' + $r.Substring(0, 24)); $bad++ }
  }
}
$R8 = $M | Where-Object { $_.StartsWith('| [T008]') }
Write-Output ('rows patched=' + $hit + ' badRows=' + $bad)
Write-Output ('rev8=' + $R8.Contains('(arith., Rev 8:'))
Write-Output ('seqs=' + $R8.Contains('four sequences (179 240)'))
Write-Output ('tail=' + $R8.Substring($R8.Length - 96))
