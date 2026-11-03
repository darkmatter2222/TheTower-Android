param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s102u.txt', [double]$Bill = 10767000)
# Block economics of a four-column lab line: per-5-level marginal price, the percentage points it buys, and the
# payback ratio against a workshop track bill (savings = pp x track bill, price = the lab's own coins).
$txt = [System.IO.File]::ReadAllText($File)
$mm = [regex]::Match($txt, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
$rows = [regex]::Matches($mm.Groups[2].Value, '\[([^\]]*)\]')
$flat = @()
foreach ($r in $rows) { $flat += (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
$n = [math]::Floor($flat.Count / 4)
$cost = @(); for ($r = 0; $r -lt $n; $r++) { $cost += [double]($flat[$r * 4 + 2] -replace ',', '') }
$prev = 0.0
Write-Output ('track bill B = ' + ('{0:N0}' -f $Bill) + ' coins; pp/level = 0.50 %')
for ($hi = 5; $hi -le $n; $hi += 5) {
  $cum = 0.0; for ($k = 0; $k -lt $hi; $k++) { $cum += $cost[$k] }
  $block = $cum - $prev
  $pp = 2.5
  if ($hi -eq $n) { $pp = 0.5 * ($n - ($hi - 5)) }
  $saved = ($pp / 100.0) * $Bill
  Write-Output ('  L' + ($hi - 4) + '-' + $hi + '  price ' + ('{0:N0}' -f $block) + '  +pp ' + ('{0:0.#}' -f $pp) +
    '  coins/pp ' + ('{0:N0}' -f ($block / $pp)) + '  saved ' + ('{0:N0}' -f $saved) + '  payback ' + ('{0:0.00}' -f ($saved / $block)))
  $prev = $cum
}
