param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$W = @(($txt -split "`r?`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
$f = ($W -split '\|')[2]
$i = $f.IndexOf('Spotligh')
$s = [Math]::Max(0, $i - 10); $e = [Math]::Min($f.Length, $i + 120)
Write-Output $f.Substring($s, $e - $s)
