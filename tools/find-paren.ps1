param([string]$Row = '| [T006]')
# Locates the first unmatched parenthesis in a ranked-table row (stack walk, prints the surrounding text).
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$r = @(($txt -split "`r?`n") | Where-Object { $_.StartsWith($Row) })[0]
$st = @()
for ($k = 0; $k -lt $r.Length; $k++) {
  $ch = $r[$k]
  if ($ch -eq '(') { $st += $k }
  elseif ($ch -eq ')') {
    if ($st.Count -eq 0) { Write-Output ('unmatched ")" at ' + $k + ' :: ' + $r.Substring([Math]::Max(0, $k - 70), [Math]::Min(120, $r.Length - [Math]::Max(0, $k - 70)))); continue }
    $st = $st[0..($st.Count - 2)]
    if ($st.Count -eq 0 -and $k -eq $r.Length - 1) { }
  }
}
foreach ($open in $st) {
  Write-Output ('unclosed "(" at ' + $open + ' :: ' + $r.Substring($open, [Math]::Min(140, $r.Length - $open)))
}
Write-Output ('depth=' + $st.Count)
