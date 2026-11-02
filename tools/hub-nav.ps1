param([string]$File)
# Prints "page -> section names" for each wiki page in a fetch-hub dump, using the page's own "On this page" nav.
$L = Get-Content $File
$page = ''
foreach ($x in $L) {
  if ($x.StartsWith('=====')) { $page = $x.Substring(6).Trim(); continue }
  if (-not $x.StartsWith('TEXT:')) { continue }
  $i = $x.IndexOf('On this page ')
  $j = $x.IndexOf(' Good to know')
  if ($i -ge 0 -and $j -gt $i) {
    Write-Output ($page + ' -> ' + $x.Substring($i + 13, $j - $i - 13))
  }
  else {
    $m = [regex]::Match($x, '\d+ data tables')
    Write-Output ($page + ' -> [no nav] ' + $m.Value)
  }
}
