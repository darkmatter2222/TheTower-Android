param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T006-lab-queue-packing.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
Write-Output ('total=' + $lines.Count)
for ($i = $lines.Count - 1; $i -ge 0; $i--) {
  if ($lines[$i].Contains('4 900') -or $lines[$i].Contains('Elite-Cell boost table') -or $lines[$i].Contains('rush ladder with')) {
    Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']')
  }
}
