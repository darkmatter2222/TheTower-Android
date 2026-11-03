param()
# Iteration 130: Battle Condition (5 lines) + the two Boss lines, from the fandom per-line tables.
# Units: the four Group pages print "Cost(Q)" = 10^18 coins; BCR prints per-cell "q" = 10^15; Boss prints plain numbers.
$U6 = 1e6
$U9 = 1e9
$U12 = 1e12
$U15 = 1e15
$U18 = 1e18

function A([string] $s) { return @(($s -split ' ' | ForEach-Object { [double]$_ })) }
function S([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }
function DiffA([string] $label, [double[]] $a, [double[]] $b) {
  $k = 0; $sum = 0.0
  for ($i = 0; $i -lt [Math]::Min($a.Count, $b.Count); $i++) { if ($a[$i] -ne $b[$i]) { $k++; $sum += $a[$i] - $b[$i] } }
  Write-Output ('  ' + $label + ': differing cells=' + $k + '/' + [Math]::Min($a.Count, $b.Count) +
    ' total delta=' + ('{0:0.####}' -f $sum))
}
function Ratios([string] $label, [double[]] $a, [int] $n) {
  $o = @(); for ($i = 1; $i -lt [Math]::Min($n, $a.Count); $i++) { $o += ('{0:F4}' -f ($a[$i] / $a[$i - 1])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}
function Steps([string] $label, [double[]] $a, [int] $n) {
  $o = @(); for ($i = 1; $i -lt [Math]::Min($n, $a.Count); $i++) { $o += ('{0:0.##}' -f ($a[$i] - $a[$i - 1])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}

# --- Battle Condition Reduction (10 levels, gate T18 W1000), cost cells 1.00q .. 639.4q ---
$bcrCost = A '1.00 2.05 4.20 8.6 17.7 36.2 74.2 152.2 311.9 639.4'
$bcrTime = A '24000 48000 72000 96000 120000 144000 168000 192000 216000 240000'
# --- Group 1 (20 levels, T19 W100) and Group 2 (20 levels, T20 W60), header Cost(Q) ---
$g1Cost = A '0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8 3 3.2 3.4 3.6 3.8 4'
$g1Time = A ('19439 38878 58317 77756 97195 116634 136073 155512 174951 194390 213829 233268 252707 272146 ' +
  '291585 311024 330463 349902 369341 388780')
$g2Cost = A '0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10'
$g2Time = A ('23326 46653 69980 93307 116634 139961 163288 186615 209942 233269 256596 279923 303250 326577 ' +
  '349904 373231 396558 419885 443212 466539')
# --- Group 3 (10 levels, T19 W500) and Group 4 (10 levels, T21 W1000) ---
$g3Cost = A '1.00 1.50 2.25 3.38 5.06 7.59 11.39 17.09 25.63 38.44'
$g3Time = A '38878 54429 69980 85532 101083 116634 132186 147737 163288 178840'
$g4Cost = A '2 4 8 16 32 64 128 256 512 1024'
$g4Time = A '38878 64537 90197 115857 141516 167176 192836 218495 244155 269815'
# --- Boss Attack == Boss Health (30 levels each, T9 W50) ---
$bossCost = A ('4e10 8.001e10 1.2007e11 1.6033e11 2.0097e11 2.4226e11 2.8453e11 3.2813e11 3.7351e11 4.2114e11 ' +
  '4.7155e11 5.2532e11 5.8308e11 6.455e11 7.1331e11 7.8727e11 8.682e11 9.5696e11 1.05e12 1.16e12 1.28e12 1.41e12 ' +
  '1.55e12 1.71e12 1.88e12 2.07e12 2.27e12 2.49e12 2.74e12 3e12')
$bossTime = A ('3333 3834 4347 4894 5504 6216 7071 8119 9413 11011 12977 15379 18286 21777 25929 30826 36555 ' +
  '43206 50874 59656 69652 80966 93705 107979 123902 141589 161160 182737 206443 232408')
# the Bot * Cooldown time column, for the +1000 min twin test (tools/bot-research-family.ps1)
$cdTime = A ('2333 2834 3347 3894 4504 5216 6071 7119 8413 10011 11977 14379 17286 20777 24929 29826 35555 42206 ' +
  '49874 58656 68652 79966 92705 106979 122902')

Write-Output '--- level counts ---'
Write-Output ('  BCR ' + $bcrCost.Count + ' + G1 ' + $g1Cost.Count + ' + G2 ' + $g2Cost.Count + ' + G3 ' + $g3Cost.Count +
  ' + G4 ' + $g4Cost.Count + ' = ' + ($bcrCost.Count + $g1Cost.Count + $g2Cost.Count + $g3Cost.Count + $g4Cost.Count) +
  ' levels over 5 BC lines (census: 70 / 5 = ' + (10 + 20 + 20 + 10 + 10) + ') ; Boss x2 at ' + $bossCost.Count +
  ' = ' + (2 * $bossCost.Count) + ' (census Enemies: 2 lines at 30)')

Write-Output '--- twin / column tests ---'
DiffA 'Boss Attack vs Boss Health costs' $bossCost $bossCost
$cd1000 = @(); for ($i = 0; $i -lt 25; $i++) { $cd1000 += ($cdTime[$i] + 1000.0) }
DiffA 'Boss time(1..25) vs Bot Cooldown time + 1000 min' @(($bossTime[0..24])) $cd1000
Write-Output ('  Boss L30 time = ' + [string]$bossTime[29] + ' min = ' + ('{0:F2}' -f ($bossTime[29] / 1440.0)) +
  ' d ; the Cooldown column stops at L25 = ' + [string]$cdTime[24])

Write-Output '--- cost shapes ---'
Ratios 'BCR (law 2.05?)' $bcrCost 10
Ratios 'G3 (law 1.5?)' $g3Cost 10
Ratios 'G4 (doubling)' $g4Cost 10
Steps 'G1 (arithmetic)' $g1Cost 8
Steps 'G2 (arithmetic)' $g2Cost 8
Steps 'Boss' $bossCost 8
Ratios 'Boss' $bossCost 10
$bt = @(); for ($i = 24; $i -lt 30; $i++) { $bt += ('{0:F4}' -f ($bossCost[$i] / $bossCost[$i - 1])) }
Write-Output ('  Boss cost tail(25..30): ' + ($bt -join ' '))
Write-Output '--- time shapes: arithmetic steps and the 933 078 s unit (15 551.3 min) ---'
Steps 'BCR' $bcrTime 4
Steps 'G1' $g1Time 4
Steps 'G2' $g2Time 4
Steps 'G3' $g3Time 4
Steps 'G4' $g4Time 4
$unit = 933078.0 / 60.0
Write-Output ('  unit = 933078 s / 60 = ' + ('{0:F1}' -f $unit) + ' min ; G1 step ' +
  ('{0:F4}' -f ((38878 - 19439) / $unit)) + ' x ; G2 ' + ('{0:F4}' -f ((46653 - 23326) / $unit)) +
  ' x ; G3 ' + ('{0:F4}' -f ((54429 - 38878) / $unit)) + ' x ; G4 ' + ('{0:F4}' -f ((64537 - 38878) / $unit)) +
  ' x ; BCR ' + ('{0:F4}' -f (24000 / $unit)) + ' x')

Write-Output '--- sums ---'
function CSum([double[]] $c, [double] $cf) { return ((S $c) * $cf) }
function TSum([double[]] $t) { return (S $t) }
function Show3([string] $n, [double] $sc, [double] $st) {
  Write-Output ('  ' + $n.PadRight(22) + 'coins=' + ('{0:F4}' -f ($sc / $U18)).PadLeft(10) + ' Q = ' +
    ('{0:F1}' -f ($sc / $U12)).PadLeft(14) + ' T ; min=' + ('{0:F0}' -f $st).PadLeft(9) + ' d=' +
    ('{0:F2}' -f ($st / 1440.0)).PadLeft(9))
}
$cBcr = CSum $bcrCost $U15; $tBcr = TSum $bcrTime; Show3 'BCR' $cBcr $tBcr
$cG1 = CSum $g1Cost $U18; $tG1 = TSum $g1Time; Show3 'Group 1' $cG1 $tG1
$cG2 = CSum $g2Cost $U18; $tG2 = TSum $g2Time; Show3 'Group 2' $cG2 $tG2
$cG3 = CSum $g3Cost $U18; $tG3 = TSum $g3Time; Show3 'Group 3' $cG3 $tG3
$cG4 = CSum $g4Cost $U18; $tG4 = TSum $g4Time; Show3 'Group 4' $cG4 $tG4
$cBoss = CSum $bossCost 1.0; $tBoss = TSum $bossTime; Show3 'Boss (each)' $cBoss $tBoss
$bcC = $cBcr + $cG1 + $cG2 + $cG3 + $cG4
$bcT = ($tBcr + $tG1 + $tG2 + $tG3 + $tG4) / 1440.0
Write-Output ('  BC category 5 lines / 70 levels: coins=' + ('{0:F4}' -f ($bcC / $U18)) + ' Q ; clock=' +
  ('{0:F1}' -f $bcT) + ' d')
$bosC = 2 * $cBoss; $bosT = 2 * $tBoss / 1440.0
Write-Output ('  two Boss lines: coins=' + ('{0:F3}' -f ($bosC / $U12)) + ' T ; clock=' + ('{0:F1}' -f $bosT) + ' d')
$pC = $bcC + $bosC; $pT = $bcT + $bosT
Write-Output ('  LAYER P (7 lines / 130 levels): coins=' + ('{0:F4}' -f ($pC / $U18)) + ' Q ; clock=' +
  ('{0:F1}' -f $pT) + ' d')

Write-Output '--- unit prices ---'
Write-Output ('  BCR: ' + ('{0:E5}' -f ($cBcr / 20.0)) + ' coins per +1 pp of condition reduction (10 lv, 2 pp/lv) ; ' +
  ('{0:F2}' -f ($tBcr / 1440.0 / 10.0)) + ' d per level')
Write-Output ('  G1: ' + ('{0:E5}' -f ($cG1 / 20.0)) + ' / level ; G2: ' + ('{0:E5}' -f ($cG2 / 20.0)) +
  ' ; G3: ' + ('{0:E5}' -f ($cG3 / 10.0)) + ' ; G4: ' + ('{0:E5}' -f ($cG4 / 10.0)))
Write-Output ('  Boss: ' + ('{0:E5}' -f ($cBoss / 30.0)) + ' coins and ' +
  ('{0:F2}' -f ($tBoss / 1440.0 / 30.0)) + ' d per -0.30 % level ; the whole line ' + ('{0:F3}' -f ($cBoss / $U12)) +
  ' T / ' + ('{0:F2}' -f ($tBoss / 1440.0)) + ' d for -9.00 %')
Write-Output ('  per clock-day: BC ' + ('{0:E4}' -f ($bcC / $bcT)) + ' coins/day ; Boss ' +
  ('{0:E4}' -f ($bosC / $bosT)) + ' coins/day')

Write-Output '--- Appendix B restatement (layer P) ---'
$billC = 6.4735 * $U18 + $pC
$billT = 480565.4 + $pT
Write-Output ('  rows A,B,B2,C,D,E,F,G,H,I,J,K,L,M,N,O,P = 39+13+6+8+2+1+2+1+15+9+15+10+6+32+9+10+7 = ' +
  (39+13+6+8+2+1+2+1+15+9+15+10+6+32+9+10+7) + ' distinct priced lines (Garlic Thorns is the 16th Defense line and lives in E only)' +
  ' -> coverage ' + ('{0:F1}' -f (185.0 / 191.0 * 100)) + ' % ; 6 left = the Module named labs')
Write-Output ('  coins=' + ('{0:F4}' -f ($billC / $U18)) + ' Q ; clock=' + ('{0:F1}' -f $billT) + ' d')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billC / 700e12)) + ' d = ' +
  ('{0:F2}' -f ($billC / 700e12 / 365.25)) + ' y at 700 T/day ; clock ' + ('{0:F1}' -f $billT) + ' d = ' +
  ('{0:F1}' -f ($billT / 365.25)) + ' y single-slot = ' + ('{0:F1}' -f ($billT / 5 / 365.25)) +
  ' y five slots = ' + ('{0:F1}' -f ($billT / 5 / 3.725 / 365.25)) + ' y stacked')
Write-Output ('  BC share of the new bill: ' + ('{0:F2}' -f ($bcC / $billC * 100)) + ' % coins / ' +
  ('{0:F2}' -f ($bcT / $billT * 100)) + ' % clock ; Group 4 alone = ' + ('{0:F2}' -f ($cG4 / $billC * 100)) + ' %')
Write-Output ('  mastery block (1.600 Q) vs BC category: BC/mastery = ' + ('{0:F2}' -f ($bcC / (1.6 * $U18))) + ' x')
Write-Output ('  12-lab reading: 171 lines, coins ' + ('{0:F4}' -f ((5.4735 * $U18 + $pC) / $U18)) + ' Q / ' +
  ('{0:F1}' -f (462565.4 + $pT)) + ' d')
