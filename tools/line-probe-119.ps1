param()
# Prints each line of the T012 §2.3 item 7/8 area as a bracketed string with its length.
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 432; $i -le 440; $i++) {
  if ($i -lt $lines.Count) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
