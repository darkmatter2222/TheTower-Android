param()
$t = Get-Content README.md
foreach ($l in $t) {
  if ($l.StartsWith('| [T008]')) {
    $i = $l.IndexOf('(arith., Rev 11')
    Write-Output ('idx=' + $i)
    $a = [Math]::Max(0, $i - 130)
    Write-Output $l.Substring($a, [Math]::Min(300, $l.Length - $a))
  }
}
