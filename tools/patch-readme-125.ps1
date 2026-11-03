param()
# Iteration 125: patches the T006 ranked-table row (Defense Research category priced).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = 'does at the same price |'
$n1 = 'does at the same price ; the **Defense category closes** at 16 lines / 635 levels = **174 678.551 T** over ' +
  '**15 050.9 d** - three more lines join that shared column at **116 005 939** / **1 495.22 d** each with a +0.03 step ' +
  '(**386 686** coins per +0.01), `Land Mine Decay` is a 20-cell prefix of `Land Mine Damage`, and `Wall Fortification` ' +
  'holds **99.9928 %** of the layer coins |'

$o2 = '**Verified** (arith., Rev 28: the Attack Research category'
$n2 = '**Verified** (arith., Rev 29: the Defense Research category - 16 lines / 635 levels = **174 678.551 T** coins ' +
  'over **15 050.9 d**, three lines on the shared 99-level column at **116 005 939** / **1 495.22 d** each with value ' +
  '1 + 0.03n, `Land Mine Decay` = 20-cell prefix of `Land Mine Damage` with 0 differing cells, `Shockwave Size` a ' +
  'coin-twin at **1.449x** the clock, `Wall Regen` **x1.1500** on 18 consecutive steps, three arithmetic-price wall ' +
  'labs (deltas 5.1 / 8.1 / 51 B), `Wall Fortification` **99.9928 %** of the layer coins for 7.49 % of its clock, bill ' +
  'now **111/169 lines = 5.040 Q / 260 639.7 d = 65.7 %**), (arith., Rev 28: the Attack Research category'

$map = @($o1, $n1, $o2, $n2)
for ($i = 0; $i -lt $map.Length; $i += 2) {
  $c = ([regex]::Matches($txt, [regex]::Escape($map[$i]))).Count
  if ($c -ne 1) { Write-Output ('pair ' + ($i / 2 + 1) + ' count=' + $c); exit 1 }
  $txt = $txt.Replace($map[$i], $map[$i + 1])
}
[System.IO.File]::WriteAllText('README.md', $txt, $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$modes = @{}
foreach ($r in $rows) {
  $n = ($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count
  if ($modes.ContainsKey($n)) { $modes[$n] = $modes[$n] + 1 } else { $modes[$n] = 1 }
}
$desc = ($modes.Keys | Sort-Object | ForEach-Object { ($_.ToString() + 'x' + $modes[$_].ToString()) }) -join ' '
Write-Output ('applied=2 rows=' + $rows.Count + ' pipeHistogram=' + $desc + ' def=' + $chk.Contains('174 678.551 T') +
  ' bill=' + $chk.Contains('5.040 Q') + ' rev29=' + $chk.Contains('arith., Rev 29:'))
