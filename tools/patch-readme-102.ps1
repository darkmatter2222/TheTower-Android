param()
# Iteration 102: T020 Rev 13 in the ranked table (the 99-row tab-discount ladder folded into 20 five-level blocks,
# the 40 x price payback rule and the three derived stop levels, the 990 = 99 x 10 offset identity, and the
# 1 445.0 d time-column close).
$p = 'README.md'
$L = Get-Content $p
$extra = '; the tab-discount lab''s **99** rows fold into **20 five-level blocks**, and a block pays back iff that tab''s ' +
        'own bill reaches **40 x its price** => stop at **L20** on Defense (**10.767 M** bill), **L25** on Attack ' +
        '(**22.88 M**), **L30** on the four Utility currency lines (**34.29 M**, the same stop the per-level rule gives) ' +
        'and **all 99** once the Packages trio counts (**17.42 T**); its `Time` cells sum to **1 445.0 d** = the five-lab ' +
        'bill, and its total sits exactly **990 = 99 x 10** under the income labs'' **111 683 349**'
$old = '(arith., Rev 12: '
$new = '(arith., Rev 13: + the 99-row discount ladder as 20 five-level blocks with the 40 x price payback rule ' +
       '(Defense L20 / Attack L25 / Utility L30, all 99 with Packages), the 990 = 99 x 10 offset identity and the ' +
       '1 445.0 d time close; '
$done = 0
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T020]')) { continue }
  $f = $s -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('mastery lab at L9 for **1 000** stones')) { $f[2] = $f[2] + $extra; $b++ }
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
$R = @($M | Where-Object { $_.StartsWith('| [T020]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev13=' + $R.Contains('(arith., Rev 13:') + ' blocks=' + $R.Contains('20 five-level blocks') +
  ' rule=' + $R.Contains('40 x its price') + ' stops=' + $R.Contains('Defense (**10.767 M** bill)') +
  ' ident=' + $R.Contains('990 = 99 x 10') + ' time=' + $R.Contains('1 445.0 d'))
