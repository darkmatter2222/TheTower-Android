param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T006-lab-queue-packing.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
$s2 = -1
for ($i = 0; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith('## Sources')) { $s2 = $i; break } }
for ($j = $s2 - 6; $j -lt [Math]::Min($s2 + 4, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
