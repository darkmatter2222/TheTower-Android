param()
# Collapses the T006 INDEX row onto a single line (the Rev 28 clause was inserted with hard breaks).
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/INDEX.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$lines = New-Object System.Collections.Generic.List[string]
$txt -split "`r?`n" | ForEach-Object { $lines.Add($_) }
$start = -1
for ($i = 0; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith('| T006 | [Lab queue packing')) { $start = $i; break } }
if ($start -lt 0) { Write-Output 'row not found'; exit 1 }
$acc = $lines[$start]
$end = $start
while ((($acc -split '\|').Count - 1) -ne 5) {
  if ($end + 1 -ge $lines.Count) { Write-Output ('ran off end at ' + $end); exit 1 }
  if ($lines[$end + 1].StartsWith('| T')) { Write-Output ('next row started, pipes=' + (($acc -split '\|').Count - 1)); exit 1 }
  $end++
  $acc = $acc + ' ' + $lines[$end]
}
$lines.RemoveRange($start, $end - $start + 1)
$lines.Insert($start, $acc)
[System.IO.File]::WriteAllText($p, (($lines -join "`r`n")), $u8)
$chk = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| T0') })
$modes = @{}
foreach ($r in $rows) {
  $n = ($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count
  if ($modes.ContainsKey($n)) { $modes[$n] = $modes[$n] + 1 } else { $modes[$n] = 1 }
}
$desc = ($modes.Keys | Sort-Object | ForEach-Object { ($_.ToString() + 'x' + $modes[$_].ToString()) }) -join ' '
$len = ($acc -split '').Count
Write-Output ('joined lines=' + ($end - $start + 1) + ' rowIndex=' + ($start + 1) + ' techRows=' + $rows.Count +
  ' pipeHistogram=' + $desc + ' t006Len=' + $len + ' rev28=' + $acc.Contains('(Rev 28**') +
  ' knee=' + $acc.Contains('44.80 %') + ' bill=' + $acc.Contains('245 588.8 d'))
