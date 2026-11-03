param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
$start = -1
for ($i = 0; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith('- Tower Hub per-card pages')) { $start = $i; break } }
if ($start -lt 0) { Write-Output 'not found'; exit }
for ($j = $start; $j -lt [Math]::Min($start + 22, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
