param()
# Collapses the T006 INDEX row back onto a single line (the Rev 27 clause was inserted with hard breaks).
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/INDEX.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$lines = New-Object System.Collections.Generic.List[string]
$txt -split "`r?`n" | ForEach-Object { $lines.Add($_) }
$start = -1; $end = -1
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('| T006 | [Lab queue packing')) { $start = $i }
  if ($start -ge 0 -and $lines[$i].Contains('**Verified (Rev 26**, arithmetic:')) { $end = $i; break }
}
if ($start -lt 0 -or $end -le $start) { Write-Output ('range fail start=' + $start + ' end=' + $end); exit 1 }
$joined = ($lines[$start..$end] -join ' ')
$lines.RemoveRange($start, $end - $start + 1)
$lines.Insert($start, $joined)
[System.IO.File]::WriteAllText($p, (($lines -join "`r`n")), $u8)
$chk = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| T0') })
$modes = @{}
foreach ($r in $rows) {
  $n = ($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count
  if ($modes.ContainsKey($n)) { $modes[$n] = $modes[$n] + 1 } else { $modes[$n] = 1 }
}
$desc = ($modes.Keys | Sort-Object | ForEach-Object { ($_.ToString() + 'x' + $modes[$_].ToString()) }) -join ' '
$mine = ($lines[$start] -split '\|').Count - 1
Write-Output ('joined lines=' + ($end - $start + 1) + ' rowIndex=' + ($start + 1) + ' techRows=' + $rows.Count +
  ' pipeHistogram=' + $desc + ' t006Pipes=' + $mine)
