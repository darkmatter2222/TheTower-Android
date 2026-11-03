param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
Write-Output '--- head ---'
for ($i = 0; $i -le 15; $i++) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
Write-Output '--- item 10 ---'
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('10. ')) {
    for ($j = $i; $j -lt [Math]::Min($i + 26, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
    break
  }
}
