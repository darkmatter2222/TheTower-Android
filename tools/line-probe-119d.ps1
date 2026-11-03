param()
# Prints lines 560-575 of T012 bracketed (the tail of §5 Falsification).
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 559; $i -le 575; $i++) {
  if ($i -lt $lines.Count) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
