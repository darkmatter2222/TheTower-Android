param([string]$File, [int]$Len = 1300)
# Prints each patch page's intro paragraph: text between "Last verified <date>" and "Change list".
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
$slug = ''
foreach ($l in $ls) {
  if ($l.StartsWith('===== ')) { $slug = $l.Substring(6).Trim(); continue }
  if (-not $l.StartsWith('TEXT:')) { continue }
  $t = $l.Substring(5).Trim()
  $a = $t.IndexOf('Last verified')
  if ($a -lt 0) { $a = 0 }
  $b = $t.IndexOf('On this page')
  if ($b -lt 0) { $b = $t.IndexOf('Change list') }
  if ($b -lt 0) { $b = [Math]::Min($t.Length, $a + $Len) }
  $seg = $t.Substring($a, [Math]::Min($b, $a + $Len) - $a)
  Write-Output ('### ' + $slug)
  Write-Output ($seg -replace '  +', ' ')
}
