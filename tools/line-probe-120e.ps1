param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T019-milestone-claim-engine.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
$start = -1
for ($i = 0; $i -lt $lines.Count; $i++) { if ($lines[$i].Contains('Auto Pick Ranking` lab (not T5')) { $start = $i; break } }
if ($start -lt 0) { Write-Output 'not found'; exit }
for ($j = $start - 2; $j -lt $start + 4; $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
