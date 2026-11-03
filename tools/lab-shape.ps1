param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s102u.txt')
# Shape of the shared lab ladder: the per-level growth ratio measured over four 10-level spans, and the
# block-rule payback ratios for the Utility four-line layer (B = 34.29 M).
$txt = [System.IO.File]::ReadAllText($File)
$mm = [regex]::Match($txt, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
$rows = [regex]::Matches($mm.Groups[2].Value, '\[([^\]]*)\]')
$flat = @()
foreach ($r in $rows) { $flat += (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
$n = [math]::Floor($flat.Count / 4)
$cost = @(); for ($r = 0; $r -lt $n; $r++) { $cost += [double]($flat[$r * 4 + 2] -replace ',', '') }
$span = @(@(1, 5), @(10, 20), @(40, 50), @(60, 70), @(90, 99), @(5, 10), @(20, 30))
foreach ($s in $span) {
  $a = $cost[$s[0] - 1]; $b = $cost[$s[1] - 1]
  $k = $s[1] - $s[0]
  if ($k -lt 1) { $k = $s[1] - $s[0] }
  Write-Output ('  L' + $s[0] + ' -> L' + $s[1] + ': ' + $a + ' -> ' + $b + '   ratio ' + ('{0:0.000}' -f ($b / $a)) +
    '   per level ' + ('{0:0.0000}' -f [math]::Pow($b / $a, 1.0 / $k)))
}
Write-Output ''
Write-Output '== block rule against the Utility four-line layer (B = 34 290 000 => 0.025 B = 857 250)'
$prev = 0.0
for ($hi = 5; $hi -le 99; $hi += 5) {
  $cum = 0.0; for ($k = 0; $k -lt $hi; $k++) { $cum += $cost[$k] }
  $block = $cum - $prev; $prev = $cum
  Write-Output ('  L' + ($hi - 4) + '-' + $hi + ' price ' + ('{0:N0}' -f $block) + '  payback ' + ('{0:0.00}' -f (857250 / $block)))
}
$cum95 = 0.0; for ($k = 0; $k -lt 95; $k++) { $cum95 += $cost[$k] }
$cum99 = 0.0; for ($k = 0; $k -lt 99; $k++) { $cum99 += $cost[$k] }
Write-Output ('  L96-99 price ' + ('{0:N0}' -f ($cum99 - $cum95)) + '  payback ' + ('{0:0.00}' -f (857250 / ($cum99 - $cum95))))
