param()
# Decodes the Ranged Enemy Range Time column: prints each cell in seconds, first differences, and ratios.
$rows = @(
  '2d 16h 47m','5d 9h 35m','8d 2h 23m','10d 19h 11m','13d 11h 59m','16d 4h 46m','18d 21h 34m','21d 14h 22m',
  '24d 7h 10m','26d 23h 58m','29d 16h 46m','32d 9h 33m','35d 2h 21m','37d 19h 9m','40d 11h 57m','43d 4h 45m',
  '45d 21h 33m','48d 14h 20m','51d 7h 8m','53d 23h 56m','56d 16h 44m','59d 9h 32m','62d 2h 20m','64d 19h 7m',
  '67d 11h 55m','70d 4h 43m','72d 21h 31m','75d 14h 19m','78d 7h 6m','80d 23h 54m'
)
function Sec([string]$s) {
  $m = [regex]::Match($s, '(?:(\d+)d)?\s*(?:(\d+)h)?\s*(?:(\d+)m)?')
  return ([int]$m.Groups[1].Value) * 86400 + ([int]$m.Groups[2].Value) * 3600 + ([int]$m.Groups[3].Value) * 60
}
$prev = 0
for ($i = 0; $i -lt $rows.Count; $i++) {
  $v = Sec $rows[$i]
  $d = $v - $prev
  $line = ('L' + ($i + 1) + ' cell=' + $v + ' diff=' + $d)
  if ($prev -gt 0) { $line += ' ratio=' + [Math]::Round($v / $prev, 5) + ' n*t1=' + (($i + 1) * 233220) }
  Write-Output $line
  $prev = $v
}
Write-Output ('sum-of-diffs=' + (Sec $rows[29]) + ' n*t1 last=' + (30 * 233220))
# Hypothesis: per-level = 233220 * 1.0^... ; test per-level constant from diffs
$diffs = @()
$prev = 0
foreach ($r in $rows) { $v = Sec $r; $diffs += ($v - $prev); $prev = $v }
Write-Output ('mean diff=' + (($diffs | Measure-Object -Average).Average) + ' min=' + (($diffs | Measure-Object -Minimum).Minimum) +
  ' max=' + (($diffs | Measure-Object -Maximum).Maximum))
