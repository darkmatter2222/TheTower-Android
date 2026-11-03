param()
# Iteration 118 (Appendix B): the running bill of every lab layer that is priced end to end.
# Suffix units (PS variables are case-insensitive, so the ladder uses distinct names):
$U6 = [Math]::Pow(10, 6); $U9 = [Math]::Pow(10, 9); $U12 = [Math]::Pow(10, 12)
$U15 = [Math]::Pow(10, 15); $U18 = [Math]::Pow(10, 18)
# A. UW layer, 39 lines (Appendix A.2)
$aC = 2.4111 * $U18; $aD = 18165.95; $aL = 39
# B. enemy-stat layer, T9-T13 band, 19 priced lines (the two Boss lines print no Total)
$bC = (2 * 21.117 + 2 * 25.768 + 39.716 + 4 * 25.768 + 60.50 + 2 * 34.767 + 16.521) * $U12
$bD = 10 * 1235.95 + 1249.83 + 1245.94 + 272.60; $bL = 13
# B2. the T19 trio (Vampire / Ray / Scatter Health + Attack) - 6 lines
$b2C = 6 * 116.25 * $U15; $b2D = 6 * 5021.68; $b2L = 6
# C. assist module labs - 8 lines, same arithmetic shape
$cC = 8 * 116.25 * $U15; $cD = 8 * 5021.8; $cL = 8
# D. the Second Wind pair
$dC = 84.3 * $U6 + 14.43 * $U12; $dD = 750000.0 / 86400.0 + 120.0; $dL = 2
# E. Garlic Thorns
$eC = 1.35 * $U6; $eD = 25.45; $eL = 1
# F. the two Utility Level Skip lines
$fC = 2 * 0.745 * $U12; $fD = 2 * 130.31; $fL = 2
# G. Super Tower Bonus, the printed ten levels
$gC = 115.94 * $U9; $gD = 22.2; $gL = 1
$sets = @(, @('A UW layer (39 lines)', $aC, $aD, $aL)
         , @('B enemy-stat T9-T13 (13 lines)', $bC, $bD, $bL)
         , @('B2 T19 trio (6 lines)', $b2C, $b2D, $b2L)
         , @('C assist labs (8 lines)', $cC, $cD, $cL)
         , @('D second-wind pair (2)', $dC, $dD, $dL)
         , @('E garlic thorns (1)', $eC, $eD, $eL)
         , @('F level-skip pair (2)', $fC, $fD, $fL)
         , @('G super tower bonus L1-10 (1)', $gC, $gD, $gL))
$tc = 0.0; $td = 0.0; $tl = 0
foreach ($p in $sets) {
  $tc += $p[1]; $td += $p[2]; $tl += $p[3]
  Write-Output ($p[0] + ' | coins ' + ('{0:G6}' -f $p[1]) + ' = ' + ('{0:G6}' -f ($p[1] / $U15)) +
    ' q | clock ' + [Math]::Round($p[2], 2) + ' d')
}
Write-Output ('TOTAL lines=' + $tl + ' coins=' + ('{0:G6}' -f $tc) + ' = ' + ('{0:G5}' -f ($tc / $U18)) +
  ' Q = ' + ('{0:G6}' -f ($tc / $U15)) + ' q | clock=' + [Math]::Round($td, 1) + ' d = ' +
  [Math]::Round($td / 365.0, 1) + ' y single-slot')
Write-Output ('  clock on five slots = ' + [Math]::Round($td / 5.0 / 365.0, 2) + ' y ; with the x3.725 stack = ' +
  [Math]::Round($td / 5.0 / 3.725 / 365.0, 2) + ' y')
Write-Output ('  coins at 700 T/day = ' + ('{0:G6}' -f ($tc / (700 * $U12))) + ' d = ' +
  ('{0:G5}' -f ($tc / (700 * $U12) / 365.25)) + ' y')
Write-Output ('  cells at x1.5 = ' + ('{0:G5}' -f ($td * 24 * (1 - 1 / 1.5) * 30)) + ' cells = ' +
  ('{0:G5}' -f ($td * 24 * (1 - 1 / 1.5) * 30 / 1000.0)) + ' d at 1 000/day')
Write-Output ('coverage: ' + $tl + ' of 169 census lines = ' + [Math]::Round($tl / 169.0 * 100, 1) + ' %')
$t19 = 14 * 116.25 * $U15
Write-Output ('the fourteen 116.25-q lines = ' + ('{0:G6}' -f $t19) + ' = ' +
  [Math]::Round($t19 / $tc * 100, 2) + ' % of the priced bill ; their clock share = ' +
  [Math]::Round((6 * 5021.68 + 8 * 5021.8) / $td * 100, 1) + ' %')
Write-Output ('the T9-T13 enemy band plus the four hand-set lines = ' +
  ('{0:G5}' -f (($bC + $dC + $eC + $fC + $gC) / $U12)) + ' T = ' +
  [Math]::Round(($bC + $dC + $eC + $fC + $gC) / $tc * 100, 3) + ' % of the bill')
