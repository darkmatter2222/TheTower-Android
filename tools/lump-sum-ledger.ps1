param()
# Iteration 150: LUMP-SUM income (the milestone ladder, T019 S2/S2.1) folded into the max() day model (T025 S1.5/S1.6).
# leg_days = max(0, bill - lump) / income ; the plan costs max(legs). ASCII only. All arrays are flat, every scalar is
# pre-computed, and no loop variable collides (PowerShell is case-insensitive: $I and $i are the same variable).
$gems = 435.0
$stInc = 25.3571        # stones/day at the Copper bottom (177.5 per week)
$shUn = 210.0
$shLab = 510.0
$mF2P = 607.5 / 7
$clkRaw = 5.0
$clkStack = 5.0 * 3.725
$gemBill = 114500.0
$knee = 8865.0
$census = 452282.0
$fleet = 82380.0
$clockBill = 2497.5
$sheet = 212660.0

$geF = @(620, 1045, 1280, 1790, 3275, 3415, 3760, 4045)
$geP = @(1125, 1640, 2260, 2825, 5035, 5195, 5540, 5875)
$stF = @(30, 80, 145, 285, 855, 1000, 1000, 1035)
$stP = @(130, 235, 425, 590, 1395, 1685, 1685, 1725)
$names = @('T1-3', 'T4-6', 'T7-9', 'T10-12', 'T13-15', 'T16-18', 'T19-21', 'T22-24')
$sumF = 0.0
$sumP = 0.0
for ($n = 0; $n -lt 8; $n++) {
  $fGe = $geF[$n] + 10 * $stF[$n]
  $pGe = $geP[$n] + 10 * $stP[$n]
  $sumF += $fGe
  $sumP += $pGe
  $blk = $fGe + $pGe
  Write-Output ('  ' + $names[$n].PadRight(8) + ' free ' + (('{0,6}' -f $geF[$n])) + ' ge + ' + (('{0,5}' -f $stF[$n])) +
    ' st = ' + (('{0,7}' -f $fGe)) + ' ge ; paid ' + (('{0,6}' -f $geP[$n])) + ' ge + ' + (('{0,5}' -f $stP[$n])) +
    ' st = ' + (('{0,7}' -f $pGe)) + ' ge ; block ' + (('{0,7}' -f $blk)) + ' ge = ' +
    (('{0,6:F1}' -f ($blk / $gems))) + ' d of gem income')
}
$gAllF = ($geF | Measure-Object -Sum).Sum
$gAllP = ($geP | Measure-Object -Sum).Sum
$sAllF = ($stF | Measure-Object -Sum).Sum
$sAllP = ($stP | Measure-Object -Sum).Sum
Write-Output ('  columns close : free gems ' + $gAllF + ' vs printed 19 230 ; paid gems ' + $gAllP + ' vs 29 495 ;' +
  ' free stones ' + $sAllF + ' vs 4 430 ; paid stones ' + $sAllP + ' vs 7 870')
Write-Output ('  ge totals : free ladder ' + $sumF + ' ge ; paid ' + $sumP + ' ge ; both ' + ($sumF + $sumP) +
  ' ge = ' + (('{0,6:F1}' -f (($sumF + $sumP) / $gems))) + ' d of gem income')

Write-Output '--- 1. the T1-T12 window (what a sub-T11 account can claim) ---'
$g12F = ($geF[0..3] | Measure-Object -Sum).Sum
$p12F = ($geP[0..3] | Measure-Object -Sum).Sum
$s12F = ($stF[0..3] | Measure-Object -Sum).Sum
$s12P = ($stP[0..3] | Measure-Object -Sum).Sum
$geWinF = $g12F + 10 * $s12F
$geWinB = $g12F + $p12F + 10 * ($s12F + $s12P)
Write-Output ('  free track : ' + $g12F + ' ge (block basis ; the per-tier cumulative prints 4 675, the 60-gem T4 skew)' +
  ' + ' + $s12F + ' st => ' + $geWinF + ' ge = ' + (('{0,6:F1}' -f ($geWinF / $gems))) + ' d of gem income')
Write-Output ('  + 4 premium passes : ' + ($g12F + $p12F) + ' ge + ' + ($s12F + $s12P) + ' st => ' + $geWinB +
  ' ge = ' + (('{0,6:F1}' -f ($geWinB / $gems))) + ' d ; the passes alone ' + ($geWinB - $geWinF) + ' ge = ' +
  (('{0,6:F1}' -f (($geWinB - $geWinF) / $gems))) + ' d = ' + (('{0,5:F2}' -f (($geWinB - $geWinF) / $geWinF))) + 'x')

Write-Output '--- 2. lump-adjusted legs, the three states of the core set (Copper bottom) ---'
$caseName = @('free T1-12  ', 'free+passes ', 'full ladder ', 'ladder+paid ')
$caseG = @(($g12F + 0.0), ($g12F + $p12F), ($gAllF + 0.0), ($gAllF + $gAllP))
$caseS = @(($s12F + 0.0), ($s12F + $s12P), ($sAllF + 0.0), ($sAllF + $sAllP))
$sName = @('A', 'B', 'C')
$clkLeg = @(($clockBill / $clkRaw), ($clockBill / $clkStack), ($clockBill / $clkStack))
$shLeg = @(($fleet / $shUn), ($fleet / $shUn), ($fleet / $shLab))
$legNames = @('gems', 'stones', 'shards', 'clock')
$cenBase = $census / $stInc
for ($c = 0; $c -lt 4; $c++) {
  $gG = $caseG[$c]
  $sG = $caseS[$c]
  $gemLeg = [Math]::Max(0, $gemBill - $gG) / $gems
  $kneeLeg = [Math]::Max(0, $knee - $sG) / $stInc
  $cenLeg = [Math]::Max(0, $census - $sG) / $stInc
  $s = ''
  for ($q = 0; $q -lt 3; $q++) {
    $legs = @($gemLeg, $kneeLeg, $shLeg[$q], $clkLeg[$q])
    $mx = 0.0
    $who = ''
    for ($k = 0; $k -lt 4; $k++) { if ($legs[$k] -gt $mx) { $mx = $legs[$k]; $who = $legNames[$k] } }
    $s += ('  state ' + $sName[$q] + ' : ' + (('{0,7:F1}' -f $gemLeg)) + ' / ' + (('{0,7:F1}' -f $kneeLeg)) + ' / ' +
      (('{0,7:F1}' -f $shLeg[$q])) + ' / ' + (('{0,7:F1}' -f $clkLeg[$q])) + ' => ' + (('{0,7:F1}' -f $mx)) +
      ' d (' + $who + ')')
  }
  Write-Output ($caseName[$c] + ' : ' + $s)
  $pctK = 100 * $sG / $knee
  $pctG = 100 * $gG / $gemBill
  $saveC = $sG / $stInc
  Write-Output ('     lumps = ' + (('{0,5:F1}' -f $pctK)) + ' % of the knee package and ' + (('{0,5:F1}' -f $pctG)) +
    ' % of the gem framework ; census leg ' + (('{0,9:F1}' -f $cenLeg)) + ' d from ' + (('{0,9:F1}' -f $cenBase)) +
    ', saves ' + (('{0,7:F1}' -f $saveC)) + ' d')
}

Write-Output '--- 3. lumps as a share of one year of flow income ---'
$flowGe = $gems * 365 + $stInc * 10 * 365 + $shUn * 0.6 * 365
Write-Output ('  one year of flow (ge) : gems ' + ($gems * 365) + ' + stones ' + (('{0,9:F1}' -f ($stInc * 10 * 365))) +
  ' + shards ' + (('{0,9:F1}' -f ($shUn * 0.6 * 365))) + ' = ' + (('{0,10:F1}' -f $flowGe)))
$pctYF = 100 * $geWinF / $flowGe
$pctYB = 100 * $geWinB / $flowGe
$pctYAll = 100 * ($sumF + $sumP) / $flowGe
Write-Output ('  T1-12 free track (' + $geWinF + ' ge) = ' + (('{0,5:F2}' -f $pctYF)) + ' % of a year ; with the four' +
  ' passes (' + $geWinB + ') ' + (('{0,5:F2}' -f $pctYB)) + ' %')
Write-Output ('  the whole 24-tier ladder, both tracks (' + ($sumF + $sumP) + ' ge) = ' + (('{0,5:F1}' -f $pctYAll)) +
  ' % of one year = ' + (('{0,6:F2}' -f (($sumF + $sumP) / $gems))) + ' d of gem income')

Write-Output '--- 4. which legs can a lump-sum move at all ---'
$gemLegP = ($gemBill - ($g12F + $p12F)) / $gems
$needSt = $knee - $stInc * $gemLegP
$medLeg = $sheet / $mF2P
$clk1 = $clockBill / $clkRaw
$clk2 = $clockBill / $clkStack
Write-Output ('  the medal leg has no lump source : ' + (('{0,7:F1}' -f $medLeg)) + ' d ; the clock leg neither : ' +
  (('{0,7:F1}' -f $clk1)) + ' / ' + (('{0,7:F1}' -f $clk2)) + ' d')
Write-Output ('  at state C the knee leg must fall below the gem leg (' + (('{0,7:F1}' -f $gemLegP)) +
  ' d with the passes) => stone lumps > ' + (('{0,7:F1}' -f $needSt)) + ' ; printed T1-12 stones = ' + ($s12F + $s12P))
$allSt = $sAllF + $sAllP
$ratio = $allSt / $knee
Write-Output ('  the printed 24-tier stone ladder = ' + $allSt + ' st = ' + (('{0,5:F2}' -f $ratio)) +
  'x the knee package outright')
Write-Output ('  unit price of a stone lump at the Copper bottom : 1 st = 10 ge = ' + (('{0,5:F4}' -f (10 / $gems))) +
  ' d of gem income => the 540 free stones of T1-12 are ' + (('{0,5:F1}' -f (5400 / $gems))) + ' d')
