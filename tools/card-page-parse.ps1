param([string]$File)
# Parses the per-card pages (`wiki/card/cards-<name>`): each prints two tables —
#   `Card Level | Effect` (7 rows, the card ladder) and `Mastery Level | Value` (10 rows, k = 0..9).
# Checks both for arithmetic steps, tests the 10 % law (`v(0) = s`, `v(9) = 10 s`), and prints the
# printed stone cost from the page's own prose when present.
$txt = [System.IO.File]::ReadAllText($File)
foreach ($p in ($txt -split '=====')) {
  if ($p.Trim() -eq '') { continue }
  $page = (($p -split "`r?`n")[0].Trim()) -replace '^=+\s*', ''
  $mm = [regex]::Matches($p, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
  if ($mm.Count -lt 2) { Write-Output ($page + ' -> tables=' + $mm.Count); continue }
  $cards = @(); $mastery = @()
  for ($t = 0; $t -lt 2; $t++) {
    $rows = [regex]::Matches($mm[$t].Groups[2].Value, '\[([^\]]*)\]')
    $flat = @()
    foreach ($r in $rows) { $flat += (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
    $n = [math]::Floor($flat.Count / 2)
    $vals = @()
    for ($k = 0; $k -lt $n; $k++) { $vals += , @($flat[$k * 2], $flat[$k * 2 + 1]) }
    if ($t -eq 0) { $cards = $vals } else { $mastery = $vals }
  }
  $cv = @($cards | ForEach-Object { [double]($_[1] -replace '%', '' -replace '^x', '' -replace 's$', '') })
  $mv = @($mastery | ForEach-Object { [double]($_[1] -replace '%', '' -replace '^x', '' -replace 's$', '') })
  $cs = $cv[1] - $cv[0]
  $cArith = $true
  for ($k = 2; $k -lt $cv.Count; $k++) { if ([math]::Abs(($cv[$k] - $cv[$k - 1]) - $cs) -gt 1e-9) { $cArith = $false } }
  $ms = $mv[1] - $mv[0]
  $mArith = $true
  for ($k = 2; $k -lt $mv.Count; $k++) { if ([math]::Abs(($mv[$k] - $mv[$k - 1]) - $ms) -gt 1e-9) { $mArith = $false } }
  $stone = ''
  $sm = [regex]::Match($p, 'mastery[^.]{0,80}?([0-9,]{3,7}) stones')
  if ($sm.Success) { $stone = 'stones=' + $sm.Groups[1].Value }
  Write-Output ($page + '  card n=' + $cv.Count + ' ' + ($cv[0]) + ' -> ' + ($cv[-1]) + ' step ' + ('{0:0.###}' -f $cs) +
    ' ' + $(if ($cArith) { 'arith' } else { 'NON-ARITH ' + ($cv -join '/') }) +
    '   mastery n=' + $mv.Count + ' ' + ($mv[0]) + ' -> ' + ($mv[-1]) + ' step ' + ('{0:0.###}' -f $ms) +
    ' ' + $(if ($mArith) { 'arith' } else { 'NON-ARITH' }) +
    '   10%-law: v0/s=' + ('{0:0.##}' -f ($mv[0] / $ms)) + ' v9/(10s)=' + ('{0:0.###}' -f ($mv[-1] / (10 * $ms))) + '  ' + $stone)
}
