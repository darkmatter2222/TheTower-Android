param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 424; $i -le 431; $i++) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
