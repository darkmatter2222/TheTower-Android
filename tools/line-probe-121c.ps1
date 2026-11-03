param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
$start = -1
for ($i = 0; $i -lt $lines.Count; $i++) { if ($lines[$i].Contains('resolved at')) { $start = $i; break } }
for ($j = $start - 3; $j -lt $start + 3; $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
