param()
# Prints lines 514-526 of T012 bracketed, with codepoints for non-ASCII, to pin exact indentation.
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 513; $i -le 525; $i++) {
  if ($i -lt $lines.Count) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
