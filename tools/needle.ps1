param([string]$Path = 'README.md', [string]$Needle = 'Spotligh', [int]$Wide = 260)
# Prints the window around the first occurrence of `$Needle` in a file, plus the plain paren balance of the line.
$txt = [System.IO.File]::ReadAllText($Path, [System.Text.Encoding]::UTF8)
$i = $txt.IndexOf($Needle)
while ($i -ge 0) {
  $start = [Math]::Max(0, $i - 40)
  Write-Output ('@' + $i + ' :: ' + $txt.Substring($start, [Math]::Min($Wide, $txt.Length - $start)))
  $i = $txt.IndexOf($Needle, $i + 1)
}
$o = 0; $c = 0
foreach ($ch in $txt.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('file-wide open=' + $o + ' close=' + $c)
