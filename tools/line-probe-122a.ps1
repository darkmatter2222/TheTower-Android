param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('#') -or $lines[$i].StartsWith(' 1. ') -or $lines[$i].StartsWith('2. ') -or $lines[$i].StartsWith('1. ')) {
    Write-Output (($i + 1).ToString() + ':[' + $lines[$i].Substring(0, [Math]::Min(110, $lines[$i].Length)) + ']')
  }
}
Write-Output ('total=' + $lines.Count)
