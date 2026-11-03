param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T006-lab-queue-packing.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 956; $i -le 990; $i++) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
