param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8) -split "`r?`n"
foreach ($r in $txt) { if ($r.StartsWith('| [T019]')) { Write-Output ('[' + $r + ']') } }
