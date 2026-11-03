param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt 12; $i++) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
