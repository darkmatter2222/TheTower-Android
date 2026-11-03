param()
# Iteration 147: the stone layer on the calendar - stones as the THIRD resource of the max() model
#   cost_days = max( Sigma coins / 700 T , Sigma clock / 5 , Sigma stones / income_stones_per_day )
# Inputs: T008 3.1 (27 basic lines: levels, value row, line Sigma, block bills), T008 1.4 (nine UW+ trees
# + the four cost families), T014 3.3 (weekly stone income grid), T012 2.x (mastery unlock values).
# Value convention: the stone purchase grants the level-0 value; block value = ln( v(n) / v(0) ).

$inc = 700e12
$slots = 5
$sheet = 17.7550 / 350.06
$par = 0.029559 / (1000 / 607.5)

# ---- stone income per day (T014 3.3 total-week rows / 7) ----
$ntF = 97.5
$ntB = 120.0
$bands = @(
  @('no tourn',      $ntF,  $ntB),
  @('Copper 23-30',  177.5,      200),
  @('Copper 13-15',  251.5,      274),
  @('Silver 23-30',  529.5,      552),
  @('Gold 23-30',    1177.5,     1200),
  @('Plat 16-24',    6497.5,     6520),
  @('Champ 16-24',   20257.5,    20280)
)
$incF2P = @{}
$incBo  = @{}
foreach ($b in $bands) {
  $incF2P[$b[0]] = $b[1] / 7
  $incBo[$b[0]]  = $b[2] / 7
  Write-Output ('  income ' + $b[0].PadLeft(13) + ' : ' + (('{0,10:F1}' -f $b[1])) + ' st/wk F2P = ' +
    (('{0,8:F3}' -f ($b[1] / 7))) + ' /day ; boosted ' + (('{0,10:F1}' -f $b[2])) + ' = ' +
    (('{0,8:F3}' -f ($b[2] / 7))))
}
$I = $incF2P['Copper 23-30']

# ---- the 27 basic UW stat lines (T008 3.1) ----
# name, levels, v0, vCap, step (0 => geometric; negative => decreasing row), Sigma, L5, L10, L15
$basic = @(
  @('BH Size',              20,  30.0,    70.0,     2,   2291,   96,  421, 1096),
  @('BH Duration',          23,  15.0,    38.0,     1,   5392,  115,  455, 1020),
  @('BH Cooldown',          15, 200.0,    50.0,   -10,   2040,  230,  910, 2040),
  @('CL Damage',            31,   2.0,  7961.0,     0,  15710,   85,  322,  841),
  @('CL Quantity',           4,   1.0,     5.0,     1,    655,  655,  655,  655),
  @('CL Chance',            15,   5.0,    27.5,   1.5,   2010,  220,  890, 2010),
  @('CF Duration',          35,   5.0,    40.0,     1,   5530,  115,  455, 1020),
  @('CF Slow',              11,  20.0,    75.0,     5,   2910,  260, 2010, 2910),
  @('CF Cooldown',          12, 180.0,    60.0,   -10,   1506,  260, 1045, 1506),
  @('DW Damage',            30,   2.0,  9119.0,     0,  17591,   85,  322,  841),
  @('DW Effect Wave Qty',    4,   1.0,     5.0,     1,   2950, 2950, 2950, 2950),
  @('DW Cooldown',          25, 300.0,    50.0,   -10,   8850,  200,  800, 1800),
  @('GT Bonus',             20,   5.0,    21.0,   0.8,   8434,  115,  534, 1934),
  @('GT Duration',          38,  15.0,    53.0,     1,  14052,  115,  456, 1076),
  @('GT Cooldown',          20, 300.0,   100.0,   -10,   4700,  230,  910, 2040),
  @('ILM Damage %',         35,  10.0,  9219.0,     0,  20807,   85,  322,  841),
  @('ILM Quantity',          3,   3.0,     6.0,     1,    425,  425,  425,  425),
  @('ILM Cooldown',         15, 200.0,    50.0,   -10,   1800,  200,  800, 1800),
  @('PS Damage',            35,  10.0,  9219.0,     0,  28716,   85,  322,  841),
  @('PS Duration',          14,  30.0,   100.0,     5,   3500,  220, 1280, 3500),
  @('PS Cooldown',          15, 125.0,    50.0,    -5,   2010,  220,  890, 2010),
  @('SM Damage',            35,  10.0,  9219.0,     0,  29661,   85,  322,  841),
  @('SM Quantity',          15,   5.0,    20.0,     1,   6966,  241, 1966, 6966),
  @('SM Cooldown',          16, 180.0,    20.0,   -10,   2550,  200,  800, 1800),
  @('Spotlight Bonus',      30,   8.0,    50.0,   1.4,  20071,  109,  513, 1476),
  @('Spotlight Angle',      60,  30.0,    90.0,     1,  29690,  135,  545, 1230),
  @('Spotlight Quantity',    3,   1.0,     4.0,     1,   3725, 3725, 3725, 3725)
)

function ValAt([double]$v0, [double]$vCap, [double]$step, [int]$levels, [int]$n) {
  # returns ln( value at level n / value at level 0 )
  if ($step -eq 0) { return $n * ([Math]::Log($vCap / $v0) / $levels) }   # geometric row
  $v = $v0 + $step * $n
  if ($step -lt 0) { return [Math]::Log($v0 / $v) } else { return [Math]::Log($v / $v0) }
}

Write-Output '--- 1. the 27 basic UW stat lines : block value, block price, stones per ln ---'
$s5 = 0.0; $s10 = 0.0; $s15 = 0.0; $sCap = 0.0; $lnCap = 0.0
$rows = @()
foreach ($l in $basic) {
  $ln5  = ValAt $l[2] $l[3] $l[4] $l[1] ([Math]::Min(5,  $l[1]))
  $ln10 = ValAt $l[2] $l[3] $l[4] $l[1] ([Math]::Min(10, $l[1]))
  $ln15 = ValAt $l[2] $l[3] $l[4] $l[1] ([Math]::Min(15, $l[1]))
  $lnC  = ValAt $l[2] $l[3] $l[4] $l[1] $l[1]
  $s5 += $l[6]; $s10 += $l[7]; $s15 += $l[8]; $sCap += $l[5]; $lnCap += $lnC
  $rows += [pscustomobject]@{ name = $l[0]; lv = $l[1]; v0 = $l[2]; cap = $l[3]; step = $l[4]
    ; st5 = $l[6]; st10 = $l[7]; st15 = $l[8]; stCap = $l[5]
    ; ln5 = $ln5; ln10 = $ln10; ln15 = $ln15; lnCap = $lnC
    ; spL5 = $l[6] / $ln5; spL10 = $l[7] / $ln10; spL15 = $l[8] / $ln15; spCap = $l[5] / $lnC }
  Write-Output ('  ' + $l[0].PadRight(19) + 'lv ' + (('{0,3}' -f $l[1])) + ' ; ln L5 ' + (('{0,7:F4}' -f $ln5)) +
    ' at ' + (('{0,6}' -f $l[6])) + ' st (' + (('{0,8:F1}' -f ($l[6] / $ln5))) + ' st/ln) ; L10 ' +
    (('{0,7:F4}' -f $ln10)) + ' at ' + (('{0,6}' -f $l[7])) + ' (' + (('{0,8:F1}' -f ($l[7] / $ln10))) +
    ') ; L15 ' + (('{0,7:F4}' -f $ln15)) + ' at ' + (('{0,6}' -f $l[8])) + ' (' + (('{0,8:F1}' -f ($l[8] / $ln15))) +
    ') ; cap ' + (('{0,7:F4}' -f $lnC)) + ' at ' + (('{0,6}' -f $l[5])) + ' (' + (('{0,9:F1}' -f ($l[5] / $lnC))) + ')')
}
Write-Output ('  closure : Sigma L5 ' + $s5 + ' (doc 11 461) ; L10 ' + $s10 + ' (doc 25 045) ; L15 ' + $s15 +
  ' (doc 49 194) ; line totals ' + $sCap + ' (doc 244 542) ; Sigma ln at cap ' + (('{0,8:F4}' -f $lnCap)))

Write-Output '--- 2. the nine UW+ trees (four cost families) ---'
$fam = @{
  'A'  = @(300, 360, 430, 510, 620, 750, 900, 1100, 1350, 1650, 2050, 2600, 3300, 4150)
  'Ap' = @(300, 360, 430, 510, 620, 750, 900, 1100, 1350, 1650, 2000, 2400, 2850, 3350)
  'B'  = @(400, 500, 610, 730, 860, 1000, 1150, 1300, 1500, 1700, 1950, 2200, 2450, 2700, 3000, 3300, 3600, 3900, 4200)
  'C'  = @(300, 375, 475, 600, 725, 925, 1150, 1450, 1800, 2200, 2650, 3150, 3700, 4300)
}
# name, family, levels, v0, vCap, law ('arith' = v0 + step n ; 'geom1' = v0 (n+1) ; 'tri' = v0 + n(n+1)/2 ; 'quad'), step, Sigma
$plus = @(
  @('Golden Combo  (GT)',      'A',  14, 0.03, 0.45,   'arith', 0.03, 20070),
  @('Chrono Loop   (CF)',      'B',  13, 0.10, 0.75,   'arith', 0.05, 16350),
  @('Consume       (BH)',      'B',  14, 0.05, 0.75,   'arith', 0.05, 19050),
  @('Kill Wall     (DW)',      'B',  14, 3.0,  108.0,  'tri',   0,    19050),
  @('Light Range   (Spot)',    'B',  19, 0.01, 0.20,   'arith', 0.01, 37050),
  @('Smite         (CL)',      'C',  11, 0.05, 0.60,   'arith', 0.05, 12650),
  @('Charged Mine  (ILM)',     'Ap', 14, 0.5,  50.9,   'quad',  0,    18570),
  @('Cover Fire    (SM)',      'C',  11, 13.0, 2.0,    'dec',   1,    12650),
  @('Death Creep   (PS)',      'C',  14, 120.0, 1110.0, 'arith', 70,   23800)
)
$sumPlus = 0.0
foreach ($p in $plus) {
  $cells = $fam[$p[1]]
  $c5  = ($cells[0..([Math]::Min(4,  $p[2] - 1))]) | Measure-Object -Sum
  $c10 = ($cells[0..([Math]::Min(9,  $p[2] - 1))]) | Measure-Object -Sum
  $cCap= ($cells[0..($p[2] - 1)]) | Measure-Object -Sum
  $vn = 0.0
  if ($p[5] -eq 'tri') { $vn = 3.0 + $p[2] * ($p[2] + 1) / 2 }
  elseif ($p[5] -eq 'quad') { $vn = 0.5 + $p[2] + 0.2 * $p[2] * ($p[2] - 1) }
  elseif ($p[5] -eq 'dec') { $vn = $p[3] - $p[6] * $p[2] }
  else { $vn = $p[3] + $p[6] * $p[2] }
  $lnC = 0.0
  if ($p[5] -eq 'dec') { $lnC = [Math]::Log($p[3] / $vn) } else { $lnC = [Math]::Log($vn / $p[3]) }
  $ln5  = 0.0; $ln10 = 0.0
  if ($p[5] -eq 'dec') { $ln5 = [Math]::Log($p[3] / ($p[3] - $p[6] * 5)); $ln10 = [Math]::Log($p[3] / ($p[3] - $p[6] * 10)) }
  elseif ($p[5] -eq 'tri') { $ln5 = [Math]::Log((3.0 + 5 * 6 / 2) / 3.0); $ln10 = [Math]::Log((3.0 + 10 * 11 / 2) / 3.0) }
  elseif ($p[5] -eq 'quad') { $ln5 = [Math]::Log((0.5 + 5 + 0.2 * 5 * 4) / 0.5); $ln10 = [Math]::Log((0.5 + 10 + 0.2 * 10 * 9) / 0.5) }
  else { $ln5 = [Math]::Log(($p[3] + $p[6] * 5) / $p[3]); $ln10 = [Math]::Log(($p[3] + $p[6] * 10) / $p[3]) }
  $sumPlus += $p[7]
  $printed = [Math]::Abs($cCap.Sum - $p[7])
  Write-Output ('  ' + $p[0].PadRight(19) + 'fam ' + $p[1].PadRight(3) + 'lv ' + (('{0,3}' -f $p[2])) +
    ' ; v0 ' + (('{0,7:F2}' -f $p[3])) + ' -> ' + (('{0,8:F2}' -f $vn)) + ' (printed ' + (('{0,8:F2}' -f $p[4])) + ') ; ln cap ' +
    (('{0,7:F4}' -f $lnC)) + ' ; L5 ' + (('{0,6}' -f $c5.Sum)) + ' st (' + (('{0,8:F1}' -f ($c5.Sum / $ln5))) +
    ' st/ln) ; L10 ' + (('{0,6}' -f $c10.Sum)) + ' (' + (('{0,8:F1}' -f ($c10.Sum / $ln10))) + ') ; cap ' +
    (('{0,6}' -f $p[7])) + ' (' + (('{0,8:F1}' -f ($p[7] / $lnC))) + ') ; dev ' + $printed)
}
Write-Output ('  closure : the nine trees sum to ' + $sumPlus + ' (doc 179 240)')

Write-Output '--- 3. the four-stage ladder on the VALUE side (marginal density of each stage) ---'
$l5 = 0.0; $l10 = 0.0; $l15 = 0.0
foreach ($r in $rows) { $l5 += $r.ln5; $l10 += $r.ln10; $l15 += $r.ln15; $lnCap += 0 }
$stA = 11461; $stB = 25045; $stC = 49194; $stD = 244542
$dA = $stA; $dB = $stB - $stA; $dC = $stC - $stB; $dD = $stD - $stC
$n1v = $l5; $n2v = $l10 - $l5; $n3v = $l15 - $l10; $n4v = $lnCap - $l15
$stage = @(
  @('stage 1  all 27 lines to L5',      $dA, $n1v),
  @('stage 2  L5 -> L10',               $dB, $n2v),
  @('stage 3  L10 -> L15',              $dC, $n3v),
  @('stage 4  L15 -> cap',              $dD, $n4v)
)
$prevSt = 0.0
foreach ($s in $stage) {
  $days = $s[1] / $I
  Write-Output ('  ' + $s[0].PadRight(27) + 'cum ' + (('{0,7:F0}' -f ($s[1] + $prevSt))) + ' ; stage ' +
    (('{0,7:F0}' -f $s[1])) + ' st (' + (('{0,6:F1}' -f (100 * $s[1] / 244542))) + ' % of the bill) ; stage ln ' +
    (('{0,7:F4}' -f $s[2])) + ' (' + (('{0,6:F1}' -f (100 * $s[2] / $lnCap))) + ' %) ; ' +
    (('{0,9:F1}' -f ($s[1] / $s[2]))) + ' st/ln ; ' + (('{0,6:F1}' -f $days)) + ' d at ' +
    (('{0,7:F3}' -f $I)) + ' st/d -> ' + (('{0,9:F6}' -f ($s[2] / $days))) + ' /day')
  $prevSt += $s[1]
}
Write-Output ('  cumulative ln : L5 ' + (('{0,7:F4}' -f $l5)) + ' ; L10 ' + (('{0,7:F4}' -f $l10)) + ' ; L15 ' +
  (('{0,7:F4}' -f $l15)) + ' ; cap ' + (('{0,7:F4}' -f $lnCap)))

Write-Output '--- 4. the knee-first 8 865 package and the UW+ first-5 block ---'
# package composition (T008 3.1): five xdamage L15 + five -10 s cooldowns L5 + CL Chance/PS Cd L5 +
# CF trio L5 + GT Bonus L5 + GT Duration L15 + BH pair L5 + PS Duration L5 + five quantity lines L1 + Spotlight pair L5
$pkgSt = 4205 + 1060 + 440 + 635 + 1191 + 211 + 220 + 659 + 244
$pkgLn = 17.0002 + 1.2654 + 1.1394 + 1.8294 + 1.2809 + 0.5754 + 0.6061 + 2.5485 + 0.7828
Write-Output ('  package : ' + $pkgSt + ' st (doc 8 865) ; Sigma ln ' + (('{0,7:F4}' -f $pkgLn)) + ' of ' +
  (('{0,7:F4}' -f $lnCap)) + ' = ' + (('{0,6:F1}' -f (100 * $pkgLn / $lnCap))) + ' % of the layer ; ' +
  (('{0,7:F1}' -f ($pkgSt / $pkgLn))) + ' st/ln ; ' + (('{0,6:F1}' -f ($pkgSt / $I))) + ' d -> ' +
  (('{0,9:F6}' -f ($pkgLn / ($pkgSt / $I)))) + ' /day')
$u5St = 0.0; $u5Ln = 0.0; $uCapLn = 0.0
foreach ($p in $plus) {
  $cells = $fam[$p[1]]
  $u5St += ($cells[0..([Math]::Min(4, $p[2] - 1))] | Measure-Object -Sum).Sum
  $c = $p[3]; $s = $p[6]
  if ($p[5] -eq 'dec') { $n5 = [Math]::Log($p[3] / ($p[3] - $s * 5)) ; $nc = [Math]::Log($p[3] / ($p[3] - $s * $p[2])) }
  elseif ($p[5] -eq 'tri') { $n5 = [Math]::Log(4.0) ; $nc = [Math]::Log(36.0) }
  elseif ($p[5] -eq 'quad') { $n5 = [Math]::Log((0.5 + 5 + 4.0) / 0.5) ; $nc = [Math]::Log(50.9 / 0.5) }
  else { $n5 = [Math]::Log(($c + $s * 5) / $c) ; $nc = [Math]::Log($p[4] / $c) }
  $u5Ln += $n5; $uCapLn += $nc
}
Write-Output ('  UW+ first 5 : ' + $u5St + ' st ; Sigma ln ' + (('{0,7:F4}' -f $u5Ln)) + ' ; ' +
  (('{0,7:F1}' -f ($u5St / $u5Ln))) + ' st/ln ; ' + (('{0,6:F1}' -f ($u5St / $I))) + ' d -> ' +
  (('{0,9:F6}' -f ($u5Ln / ($u5St / $I)))) + ' /day')
Write-Output ('  UW+ at cap  : ' + $sumPlus + ' st ; Sigma ln ' + (('{0,7:F4}' -f $uCapLn)) + ' ; ' +
  (('{0,7:F1}' -f ($sumPlus / $uCapLn))) + ' st/ln ; ' + (('{0,7:F1}' -f ($sumPlus / $I))) + ' d -> ' +
  (('{0,9:F6}' -f ($uCapLn / ($sumPlus / $I)))) + ' /day')

Write-Output '--- 4b. the nine sub-blocks of the knee package, ranked ---'
$blk = @(
  @('five xdamage lines L15',        4205, 17.0002),
  @('five -10 s cooldowns L5',       1060, 1.2654),
  @('CL Chance + PS Cooldown L5',     440, 1.1394),
  @('CF trio L5',                     635, 1.8294),
  @('GT Bonus L5 + GT Duration L15', 1191, 1.2809),
  @('BH pair L5',                     211, 0.5754),
  @('PS Duration L5',                 220, 0.6061),
  @('five quantity lines L1',         659, 2.5485),
  @('Spotlight pair L5',              244, 0.7828)
)
$bs = 0.0; $bl = 0.0
foreach ($b in $blk) { $bs += $b[1]; $bl += $b[2] }
foreach ($b in ($blk | Sort-Object -Property { $_[1] / $_[2] })) {
  $days = $b[1] / $I
  Write-Output ('  ' + $b[0].PadRight(30) + (('{0,6}' -f $b[1])) + ' st ; ln ' + (('{0,7:F4}' -f $b[2])) + ' ; ' +
    (('{0,7:F1}' -f ($b[1] / $b[2]))) + ' st/ln ; ' + (('{0,6:F1}' -f $days)) + ' d -> ' +
    (('{0,9:F6}' -f ($b[2] / $days))) + ' /day')
}
Write-Output ('  the nine blocks re-add to ' + $bs + ' st / ln ' + (('{0,7:F4}' -f $bl)) +
  ' (package ' + $pkgSt + ' / ' + (('{0,7:F4}' -f $pkgLn)) + ')')

Write-Output '--- 5. the stone-only unlock rows (ln 0 convention + sensitivity) ---'

# Bot+ unlocks: value = the printed level-0 multiplier of each line
$botLn = [Math]::Log(1.25) + [Math]::Log(1.25) + [Math]::Log(3.0) + [Math]::Log(1.5) + [Math]::Log(1 / 0.95)
Write-Output ('  Bot+ 5 x 1 250 = 6 250 st ; level-0 multipliers 1.25 / 1.25 / 3 / 1.5 / 0.95 -> Sigma ln ' +
  (('{0,7:F4}' -f $botLn)) + ' ; ' + (('{0,7:F1}' -f (6250 / $botLn))) + ' st/ln -> ' +
  (('{0,9:F6}' -f ($botLn / (6250 / $I)))) + ' /day')
$mastLn = [Math]::Log(1.03) + [Math]::Log(1.004) + [Math]::Log(1.10) + [Math]::Log(1.06) + [Math]::Log(1.04) +
  [Math]::Log(1.004) + [Math]::Log(1.10)
$mastLn2 = $mastLn + [Math]::Log(2)
Write-Output ('  8 currency mastery unlocks 7 000 st ; ln(1+pp) / ln(mult) form Sigma ' + (('{0,7:F4}' -f $mastLn)) +
  ' ; with Free Upgrades at ln 2 -> ' + (('{0,7:F4}' -f $mastLn2)) + ' ; ' + (('{0,7:F1}' -f (7000 / $mastLn2))) +
  ' st/ln -> ' + (('{0,9:F6}' -f ($mastLn2 / (7000 / $I)))) + ' /day ; all 32 rows = 28 500 st')
Write-Output ('  9 UW slots 9 705 st + 9 UW+ unlocks 14 650 st + 4 assist slots 4 000 st + Synchronicity 4 500 st' +
  ' = 32 855 st of pure unlock rows (ln 0 ; at ln 1 each, 25 rows -> Sigma ln 17.3287)')

Write-Output '--- 6. the merged schedule : 18 lab rows + the stone items, cost = max of three resources ---'
$allR = @(
  @('E',  1, 2.302585, 2.397895, 1.35e6,          25.45,     0),
  @('D',  2, 2.995732, 3.218876, 14.4300843e12,   128.75,    0),
  @('F',  2, 5.991465, 6.089041, 1.49e12,         260.62,    0),
  @('G',  1, 0.612375, 0.641854, 12.304e12,       897.30,    0),
  @('L',  6, 8.006394, 8.006394, 30.848e12,       1185.50,   0),
  @('Q', 12, 27.351310, 15.556300, 0.7183e18,     5341.40,   0),
  @('A', 39, 65.916200, 63.482600, 2.4111e18,     18165.95,  0),
  @('J', 15, 42.529000, 24.549100, 187.228e12,    15050.90,  0),
  @('H', 15, 38.390500, 13.776300, 826.445e15,    16806.00,  0),
  @('M', 32, 40.734911, 40.734911, 1.6e18,        18000.00,  0),
  @('K', 10, 20.051600, 11.346900, 8.906e12,      10085.40,  0),
  @('O', 10, 4.599000, 4.599000, 3.2355e15,       6605.80,   0),
  @('B', 13, 43.810100, 1.513400, 383.113e12,     15127.87,  0),
  @('B2', 6, 20.407200, 0.743000, 697.5e15,       30130.08,  0),
  @('C',  8, 27.209600, 21.926700, 930.00e18,     40174.20,  0),
  @('P',  7, 19.701600, 1.002400, 2307.5775e18,   11453.00,  0)
)
# the stone items : id, lines, lnR, lnP, Sigma stones
$uRest = $sumPlus - $u5St
$uRestLn = $uCapLn - $u5Ln
$stone = @(
  @('S1a', 27, $pkgLn, $pkgLn, $pkgSt),
  @('S1b', 27, $n2v, $n2v, $dB),
  @('S1c', 27, $n3v, $n3v, $dC),
  @('S1d', 27, $n4v, $n4v, $dD),
  @('S2a',  9, $u5Ln, $u5Ln, $u5St),
  @('S2b',  9, $uRestLn, $uRestLn, $uRest),
  @('S3',   8, $mastLn2, $mastLn, 7000),
  @('S4',   5, $botLn, $botLn, 6250),
  @('S5',  25, 0.0, 0.0, 32855)
)
foreach ($mode in @('R', 'P')) {
  $list = @()
  foreach ($r in $allR) {
    $ln = $(if ($mode -eq 'R') { $r[2] } elseif ($r[3] -gt 0) { $r[3] } else { $r[2] })
    $cost = [Math]::Max($r[4] / $inc, $r[5] / $slots)
    $list += [pscustomobject]@{ id = $r[0]; dens = $ln / $cost }
  }
  foreach ($s in $stone) {
    $ln = $(if ($mode -eq 'R') { $s[2] } elseif ($s[3] -gt 0) { $s[3] } else { $s[2] })
    $list += [pscustomobject]@{ id = $s[0]; dens = $ln / ($s[4] / $I) }
  }
  $list += [pscustomobject]@{ id = 'M-'; dens = $sheet }
  $list += [pscustomobject]@{ id = 'pr'; dens = $par }
  $out = @()
  foreach ($e in ($list | Sort-Object -Property dens -Descending)) { $out += ($e.id + ' ' + (('{0,9:F6}' -f $e.dens))) }
  Write-Output ('  reading ' + $mode + ' : ' + ($out -join ' > '))
}
Write-Output '  stone-only totals (max model at the Copper-bottom income):'
$tSt = 244542 + 179240 + 9705 + 14650 + 28500 + 6250 + 4500 + 4000
Write-Output ('    full stone census ' + $tSt + ' st = ' + (('{0,9:F1}' -f ($tSt / $I))) + ' d = ' +
  (('{0,7:F2}' -f ($tSt / $I / 365))) + ' y at ' + (('{0,7:F3}' -f $I)) + ' st/d ; the knee package is ' +
  (('{0,6:F1}' -f (100 * $pkgSt / $tSt))) + ' % of it for ' + (('{0,6:F1}' -f (100 * $pkgLn / ($lnCap + $uCapLn)))) +
  ' % of its ln')
Write-Output ('  cross-check vs T014 3.3 : 452 282 st at ' + (('{0,7:F3}' -f $I)) + ' st/d = ' +
  (('{0,6:F1}' -f (452282 / $I))) + ' d = ' + (('{0,6:F2}' -f (452282 / $I / 365))) + ' y (doc 49.0 F2P) ; at the boosted ' +
  (('{0,7:F3}' -f $incBo['Copper 23-30'])) + ' = ' + (('{0,6:F2}' -f (452282 / $incBo['Copper 23-30'] / 365))) +
  ' y (doc 43.5)')

Write-Output '--- 7. the stone rows scaled to every band income (density = income x ln / stones) ---'
$srows = @(
  @('quintet  five xdamage L15', 4205, 17.0002),
  @('S1a  knee package',         $pkgSt, $pkgLn),
  @('S1b  L5 -> L10',            $dB, $n2v),
  @('S1c  L10 -> L15',           $dC, $n3v),
  @('S1d  L15 -> cap',           $dD, $n4v),
  @('S2a  UW+ first 5',          $u5St, $u5Ln),
  @('S2b  UW+ tail',             $uRest, $uRestLn),
  @('S4   Bot+ unlocks',         6250, $botLn),
  @('S3   8 mastery unlocks',    7000, $mastLn2)
)
foreach ($b in $bands) {
  $d = @()
  foreach ($s in $srows) { $d += ($s[0].Split(' ')[0] + ' ' + (('{0,8:F6}' -f ($s[2] * ($b[1] / 7) / $s[1])))) }
  Write-Output ('  ' + $b[0].PadLeft(13) + ' (' + (('{0,8:F3}' -f ($b[1] / 7))) + ' st/d) : ' + ($d -join ' | '))
}
