param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains('mastery census:')) {
    for ($j = $i; $j -lt [Math]::Min($i + 7, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
    Write-Output '---'
  }
  if ($lines[$i].Contains('mastery census:**')) { }
}
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains('not removed by it.')) {
    for ($j = $i; $j -lt [Math]::Min($i + 7, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
    break
  }
}
