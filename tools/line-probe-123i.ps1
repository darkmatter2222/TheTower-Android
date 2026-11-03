param()
$txt = [System.IO.File]::ReadAllText('docs/INDEX.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 8; $i -le 24; $i++) {
  $pre = ''
  if ($lines[$i].StartsWith('|')) { $pre = 'ROW ' }
  Write-Output (($i + 1).ToString() + ': ' + $pre + '[' + $lines[$i].Substring(0, [Math]::Min(70, $lines[$i].Length)) + ']')
}
