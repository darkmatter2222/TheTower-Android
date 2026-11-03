param([string]$File, [int]$Start = 0, [int]$Len = 2800)
# Prints a slice of a UTF-8 dump file (the `read` tool truncates long lines, so chunk the TEXT: lines).
$t = [System.IO.File]::ReadAllText($File)
$n = [Math]::Min($Len, $t.Length - $Start)
Write-Output $t.Substring($Start, $n)
Write-Output ('--- total=' + $t.Length + ' printed=' + ($Start + $n))
