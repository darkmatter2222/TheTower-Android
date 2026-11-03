param()
$txt = [System.IO.File]::ReadAllText('tools/patch-readme-119.ps1', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 20; $i -le 26; $i++) {
  if ($i -lt $lines.Count) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
