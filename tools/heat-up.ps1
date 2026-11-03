param()
# Heat-up (x1.04 per surviving hit) and the stats-page attribution factor checks.
foreach ($k in @(5, 10, 20, 30, 40, 60, 100)) {
  Write-Output ('1.04^' + $k + ' = ' + [Math]::Round([Math]::Pow(1.04, $k), 4))
}
# Printed example: base 100, GT x20, BH x10.
$p = 100 * 20 * 10
Write-Output ('P = ' + $p + ' ; credit(GT) = ' + ($p - $p / 20) + ' ; credit(BH) = ' + ($p - $p / 10) + ' ; sum = ' +
  (($p - $p / 20) + ($p - $p / 10)) + ' ; factor = ' + [Math]::Round(((($p - $p / 20) + ($p - $p / 10))) / $p, 4))
Write-Output ('closed form n - sum(1/m) = ' + [Math]::Round(2 - (1 / 20 + 1 / 10), 4))
# Five-source worst case (GT 20.75, BH 11, SL, DW, GB assumed all > 1): factor = 5 - sum(1/m).
Write-Output ('five-source upper bound < 5 ; with m = 20.75, 11, 20, 20, 20 -> ' +
  [Math]::Round(5 - (1 / 20.75 + 1 / 11 + 1 / 20 + 1 / 20 + 1 / 20), 3))
