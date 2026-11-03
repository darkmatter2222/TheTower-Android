param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T006-lab-queue-packing.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
Write-Output ('total=' + $lines.Count)
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('## Falsification') -or $lines[$i].StartsWith('## Sources') -or $lines[$i].StartsWith('- [ ] **Gem rush') -or $lines[$i].StartsWith('- **Gem rush')) {
    Write-Output (($i + 1).ToString() + ':[' + $lines[$i].Substring(0, [Math]::Min(90, $lines[$i].Length)) + ']')
  }
}
