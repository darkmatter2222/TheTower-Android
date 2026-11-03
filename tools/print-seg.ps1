param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s103.txt')
# Prints the whole `the-tower` page region in numbered chunks so nothing is lost to line truncation.
$t = [System.IO.File]::ReadAllText($File)
$i = $t.IndexOf('===== system/the-tower')
$j = $t.IndexOf('===== system/content-creator-page')
if ($i -lt 0) { Write-Output 'no the-tower marker'; exit }
if ($j -lt 0) { $j = $t.Length }
$seg = $t.Substring($i, $j - $i)
Write-Output ('segment length=' + $seg.Length)
$pos = 0
while ($pos -lt $seg.Length) {
  $n = [Math]::Min(1900, $seg.Length - $pos)
  Write-Output ('[' + $pos + '] ' + $seg.Substring($pos, $n))
  $pos += $n
}
