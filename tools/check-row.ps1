param([string]$Row = '| [T006]')
# Prints the pipe count and parenthesis balance of one ranked-table row.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$r = @(($txt -split "`r?`n") | Where-Object { $_.StartsWith($Row) })[0]
$o = 0; $c = 0
foreach ($ch in $r.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('pipes=' + (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count) + ' open=' + $o + ' close=' + $c)
Write-Output ('tail=' + $r.Substring([Math]::Max(0, $r.Length - 240)))
