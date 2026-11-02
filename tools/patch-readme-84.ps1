param()
# Iteration 84: T005 Rev 3 in the ranked table (printed tier ladder + zero-BC tiers 1-13).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the printed tier ladder is **1 + 0.8n** to Tier 8 then **x1.13-x1.25** a tier (mean **x1.227**, **60** at T21) and Tiers 1-13 need **no** battle conditions'
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T005]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('unexpected field count ' + $f.Count); exit 1 }
  if (-not $f[5].Contains('Rev 2')) { Write-Output 'Rev anchor missing'; exit 1 }
  $f[2] = $f[2] + $extra
  $f[5] = $f[5] -replace 'Rev 2', 'Rev 3'
  $L[$n] = ($f -join '|')
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
$R5 = $M | Where-Object { $_.StartsWith('| [T005]') }
$o = 0; $c = 0
foreach ($ch in $R5.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev3=' + $R5.Contains('(arith., Rev 3)'))
Write-Output ('ladder=' + $R5.Contains('mean **x1.227**') + ' nofree=' + $R5.Contains('**no** battle conditions'))
Write-Output ('tail=' + $R5.Substring($R5.Length - 60))
