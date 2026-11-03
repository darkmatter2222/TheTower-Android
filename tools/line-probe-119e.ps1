param()
# Prints the Sources block of T012 (lines 583-600) bracketed.
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 582; $i -le 600; $i++) {
  if ($i -lt $lines.Count) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
Write-Output ('total=' + $lines.Count)
