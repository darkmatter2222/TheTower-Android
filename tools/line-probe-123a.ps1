param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T006-lab-queue-packing.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('#')) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
  if ($lines[$i].Contains('4 039 q')) { Write-Output (($i + 1).ToString() + ':COINS39:[' + $lines[$i].Substring(0, [Math]::Min(120, $lines[$i].Length)) + ']') }
}
Write-Output ('total=' + $lines.Count)
