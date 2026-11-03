param()
# Iteration 124: patches the T006 ranked-table row (Attack Research category priced).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = 'Buy multiplier` completes for **562 500** coins / **89.8 h** |'
$n1 = 'Buy multiplier` completes for **562 500** coins / **89.8 h** ; the **Attack category closes** at 9 lines / 598 ' +
  'levels = **25.594 T** over **124 747.5 d**, one shared 99-level column prices four of them, its **80-level knee** = ' +
  '**44.80 %** of the coins for **80.81 %** of the value, and `Critical Factor` (+0.03/lv) pays 1.5x what `Attack Speed` ' +
  '(+0.02/lv) does at the same price |'

$o2 = '**Verified** (arith., Rev 27: the Main Research category'
$n2 = '**Verified** (arith., Rev 28: the Attack Research category - one 99-level column prices four of its nine lines ' +
  '(**111 695 939** coins / **1 444.98 d** each), **597/597** value cells fit 1 + 0.02n, 1 + 0.03n, 0.10n and 800 % + 25n, ' +
  'the 80-level knee is **44.80 %** of coins for **80.81 %** of value, `Damage Per Meter` differs from that ladder by ' +
  '**+160** coins / **+9 min** over 16 and 9 cells, the Super Crit pair shares the price column but not the clock column, ' +
  '`Max Rend Armor Multiplier` pairs a near-arithmetic price with a **quadratic** clock at **0.492 d per pp**, category ' +
  'total **25.594 T / 124 747.5 d**, and the priced bill is now **96/169 lines = 4.865 Q / 245 588.8 d**), ' +
  '(arith., Rev 27: the Main Research category'

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
Write-Output ('applied=2 rows=' + $rows.Count + ' pipeHistogram=' + $desc +
  ' knee=' + $chk.Contains('44.80 %') + ' cat=' + $chk.Contains('25.594 T') + ' bill=' + $chk.Contains('4.865 Q') +
  ' rev28=' + $chk.Contains('arith., Rev 28:'))
