param()
# Lists all headings of T012 with their line numbers.
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('#')) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
Write-Output ('total lines=' + $lines.Count)
