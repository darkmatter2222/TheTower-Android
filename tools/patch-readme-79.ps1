$p = 'README.md'
$L = Get-Content $p
$add = '; the printed build ladder: eHP T1-9 -> hybrid T1-11 -> glass cannon T12+ (tournaments stay hybrid), eHP = (HP + Def Abs)/(1 - Def%) so 90/95/99 % = x10/x20/x100, the 5-slot lab sheet (Labs Speed 99, Attack Speed 99, Def % 23, Health 40-50, GT Duration before GT Bonus, Waves Required on 4n+1), the CF split verified from its own columns (last ten levels 667.62 d raw, 333.8 d at Labs Speed 50 = the predicted x2.0, 224.0 d at 99; stone lines 5530 / 2910 / 1506), devo entry at 10-15 B lifetime coins with the x7 DW cap at ~800 stones (3:20 sync)'
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('| [T003]')) { continue }
  $k = $s.IndexOf('**T2 W80**')
  if ($k -lt 0) { Write-Output 'anchor missing'; exit 1 }
  $cut = $k + '**T2 W80**'.Length
  $s2 = $s.Substring(0, $cut) + $add + $s.Substring($cut)
  $s2 = $s2 -replace '\(arith\., Rev 2\)', '(arith., Rev 3)'
  $L[$n] = $s2
  Set-Content -Path $p -Value $L -Encoding utf8
  break
}
$M = Get-Content $p
$bad = 0
for ($n = 0; $n -lt $M.Count; $n++) { if ($M[$n].StartsWith('| [T0')) { $cc = ($M[$n].ToCharArray() | Where-Object { $_ -eq '|' }).Count; if ($cc -ne 7) { Write-Output ('BAD ' + $n + ' pipes=' + $cc); $bad++ } } }
$R = $M | Where-Object { $_.StartsWith('| [T003]') }
Write-Output ('badRows=' + $bad + ' pipes=' + (($R.ToCharArray() | Where-Object { $_ -eq '|' }).Count) + ' rev3=' + $R.Contains('(arith., Rev 3)') + ' tail=' + $R.Substring($R.Length - 60))
