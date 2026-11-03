param([string]$Row = '| [T006]', [int]$From = 3200, [int]$Len = 320)
# Prints a slice of one ranked-table row (the `read` tool truncates long lines).
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$r = @(($txt -split "`r?`n") | Where-Object { $_.StartsWith($Row) })[0]
Write-Output $r.Substring($From, [Math]::Min($Len, $r.Length - $From))
