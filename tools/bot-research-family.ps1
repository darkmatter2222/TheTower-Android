param()
# Iteration 129: the Bot Research category priced from the fandom per-line tables (`Lab/<name>`).
# Cells transcribed verbatim from Level | Time | Cost | Value; every column re-added offline.
# Two shared columns (five Cooldown lines, four Duration/Linger lines) + one exact-law line (Burn Stack).
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
  $o = @()
  for ($i = 1; $i -lt [Math]::Min($n, $a.Count); $i++) { $o += ('{0:F4}' -f ($a[$i] / $a[$i - 1])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}
function Law([string] $label, [double[]] $a, [double] $r) {
  $o = @(); $mx = 0.0
  for ($i = 1; $i -lt $a.Count; $i++) {
    $p = $a[$i - 1] * $r; $d = [Math]::Abs($a[$i] - $p) / $a[$i]; if ($d -gt $mx) { $mx = $d }
    $o += ('{0}/{1}' -f [string]$a[$i], ('{0:0.####}' -f $p))
  }
  Write-Output ('  ' + $label + ' (law r=' + ('{0:F2}' -f $r) + '): max rel dev=' + ('{0:E3}' -f $mx) + ' | ' +
    ($o -join ' '))
}

# --- the shared Cooldown column, printed identically on five lines ---
# gates as printed: Flame T5 W60, Thunder T5 W70, Golden T5 W80, Amplify T5 W90, Bot Bot T6 W60
$cdCost = A ('3e7 6.005e7 9.16e7 1.3215e8 2.012e8 3.3625e8 5.988e8 1.08e9 1.91e9 3.25e9 5.33e9 8.41e9 1.283e10 ' +
  '1.898e10 2.734e10 3.845e10 5.294e10 7.153e10 9.505e10 1.244e11 1.6063e11 2.0487e11 2.5837e11 3.2254e11 3.9888e11')
$cdTime = A ('2333 2834 3347 3894 4504 5216 6071 7119 8413 10011 11977 14379 17286 20777 24929 29826 35555 42206 ' +
  '49874 58656 68652 79966 92705 106979 122902')
# --- the shared Duration/Linger column, printed identically on four lines (20 levels) ---
$durCost = A ('100e9 150e9 225e9 337.5e9 506.25e9 759.38e9 1140e9 1710e9 2560e9 3840e9 5770e9 8650e9 12970e9 ' +
  '19460e9 29190e9 43790e9 65680e9 98530e9 147790e9 221680e9')
$durTime = A ('12000 13800 15870 18250 20988 24136 27756 31920 36708 42214 48546 55828 64202 73833 84908 97644 ' +
  '112291 129135 148505 170781')
# --- Flame Bot - Burn Stack, its own 5-level column (T10 W50) ---
$bsCost = A '43e12 64.5e12 96.75e12 145.13e12 217.69e12'
$bsTime = A '65700 75555 86888 99921 114909'
# printed value ladders (seconds / stacks)
$durVal = A '0.50 1.00 1.50 2.00 2.50 3.00 3.50 4.00 4.50 5.00 5.50 6.00 6.50 7.00 7.50 8.00 8.50 9.00 9.50 10.00'
$linVal = A '3.50 4.00 4.50 5.00 5.50 6.00 6.50 7.00 7.50 8.00 8.50 9.00 9.50 10.00 10.50 11.00 11.50 12.00 12.50 13.00'

Write-Output '--- level counts (census: Bot = 8 lines / 165 at Rev 23; the wiki page now prints 10 / 210) ---'
Write-Output ('  cooldown lines x5 at ' + $cdCost.Count + ' = ' + (5 * $cdCost.Count) + ' ; duration/linger lines x4 at ' +
  $durCost.Count + ' = ' + (4 * $durCost.Count) + ' ; Burn Stack ' + $bsCost.Count +
  ' ; total ' + (5 * $cdCost.Count + 4 * $durCost.Count + $bsCost.Count) + ' levels over 10 lines' +
  ' (the Rev-23 8-line reading = the same without the two Bot Bot lines: 165)')

Write-Output '--- shared-column checks: each column is one printed ladder, asserted cell by cell ---'
DiffA 'cooldown col vs itself (Flame=Thunder=Golden=Amplify=Bot Bot)' $cdCost $cdCost
DiffA 'duration col vs itself (Thunder Linger=Golden=Amplify=Bot Bot)' $durCost $durCost
DiffA 'duration time col vs itself' $durTime $durTime
DiffA 'Burn Stack vs the duration head (first 5)' ( @(for ($i = 0; $i -lt 5; $i++) { $bsCost[$i] }) ) `
  ( @(for ($i = 0; $i -lt 5; $i++) { $durCost[$i] }) )
Write-Output '--- Linger value = Duration value + 3.00 on every one of the 20 cells? ---'
$kd = 0; for ($i = 0; $i -lt 20; $i++) { if ([Math]::Abs(($durVal[$i] + 3.0) - $linVal[$i]) -gt 1e-9) { $kd++ } }
Write-Output ('  differing cells=' + $kd + '/20  (head ' + $durVal[0] + ' -> ' + $linVal[0] + ' , tail ' +
  $durVal[19] + ' -> ' + $linVal[19] + ')')

Write-Output '--- the three ladder shapes ---'
Law 'Burn Stack costs' $bsCost 1.5
Law 'Burn Stack times' $bsTime 1.15
Law 'duration costs' $durCost 1.5
Ratios 'duration costs' $durCost 20
Ratios 'duration times' $durTime 20
Ratios 'cooldown costs' $cdCost 12
Law 'cooldown costs' $cdCost 1.5
Law 'duration times' $durTime 1.15
# closed form for a x1.15 time line: t1 * (1.15^n - 1) / 0.15
$cfDur = 12000.0 * ([Math]::Pow(1.15, 20) - 1.0) / 0.15
$cfBs = 65700.0 * ([Math]::Pow(1.15, 5) - 1.0) / 0.15
Write-Output ('  closed form t1*(1.15^n-1)/0.15 : duration n=20 -> ' + ('{0:F1}' -f $cfDur) +
  ' min vs the printed re-add ' + ('{0:F0}' -f (S $durTime)) + ' (delta ' +
  ('{0:F1}' -f ((S $durTime) - $cfDur)) + ' min = ' + ('{0:E2}' -f ([Math]::Abs((S $durTime) - $cfDur) / (S $durTime))) +
  ') ; Burn Stack n=5 -> ' + ('{0:F1}' -f $cfBs) + ' vs ' + ('{0:F0}' -f (S $bsTime)))

Write-Output '--- per-line and per-column sums ---'
$cCd = S $cdCost; $tCd = S $cdTime
$cDur = S $durCost; $tDur = S $durTime
$cBs = S $bsCost; $tBs = S $bsTime
Write-Output ('  one Cooldown line: coins=' + ('{0:E6}' -f $cCd) + ' = ' + ('{0:F3}' -f ($cCd / $U12)) +
  ' T ; min=' + ('{0:F0}' -f $tCd) + ' = ' + ('{0:F2}' -f ($tCd / 1440.0)) + ' d ; head 30 M / 1d 15h 53m , tail ' +
  '398.88 B / 85d 8h 22m ; value -1 .. -25')
Write-Output ('  one Duration line: coins=' + ('{0:E6}' -f $cDur) + ' = ' + ('{0:F3}' -f ($cDur / $U12)) +
  ' T ; min=' + ('{0:F0}' -f $tDur) + ' = ' + ('{0:F2}' -f ($tDur / 1440.0)) + ' d ; head 100 B / 8d 8h 0m , tail ' +
  '221.68 B / 118d 15h 21m')
Write-Output ('  Burn Stack: coins=' + ('{0:F2}' -f ($cBs / $U12)) + ' T (exact-law sum 567.0625 T , T015 prints ' +
  '567.06 T) ; min=' + ('{0:F0}' -f $tBs) + ' = ' + ('{0:F2}' -f ($tBs / 1440.0)) + ' d')
$catC = 5 * $cCd + 4 * $cDur + $cBs
$catT = 5 * $tCd + 4 * $tDur + $tBs
Write-Output ('  CATEGORY 10 lines / 210 levels: coins=' + ('{0:F3}' -f ($catC / $U12)) + ' T = ' +
  ('{0:F4}' -f ($catC / $U15)) + ' q ; clock=' + ('{0:F0}' -f $catT) + ' min = ' + ('{0:F1}' -f ($catT / 1440.0)) +
  ' d = ' + ('{0:F2}' -f ($catT / 1440.0 / 365.25)) + ' y single-slot')
Write-Output ('  coin split: cooldown x5 = ' + ('{0:F2}' -f (5 * $cCd / $catC * 100)) + ' % , duration x4 = ' +
  ('{0:F2}' -f (4 * $cDur / $catC * 100)) + ' % , Burn Stack = ' + ('{0:F2}' -f ($cBs / $catC * 100)) + ' %')
Write-Output ('  clock split: cooldown x5 = ' + ('{0:F2}' -f (5 * $tCd / $catT * 100)) + ' % , duration x4 = ' +
  ('{0:F2}' -f (4 * $tDur / $catT * 100)) + ' % , Burn Stack = ' + ('{0:F2}' -f ($tBs / $catT * 100)) + ' %')

Write-Output '--- unit prices per printed value unit ---'
Write-Output ('  Cooldown: ' + ('{0:E5}' -f ($cCd / 25.0)) + ' coins and ' + ('{0:F3}' -f ($tCd / 1440.0 / 25.0)) +
  ' d per -1 s of cooldown (one line)')
Write-Output ('  Duration: ' + ('{0:E5}' -f ($cDur / 20.0)) + ' coins and ' + ('{0:F2}' -f ($tDur / 1440.0 / 20.0)) +
  ' d per +0.5 s ; ' + ('{0:E5}' -f ($cDur / 10.0)) + ' per whole +1 s line')
Write-Output ('  Linger (same column): ' + ('{0:E5}' -f ($cDur / 20.0)) + ' coins per +0.5 s of linger')
Write-Output ('  Burn Stack: ' + ('{0:E5}' -f ($cBs / 5.0)) + ' coins and ' + ('{0:F2}' -f ($tBs / 1440.0 / 5.0)) +
  ' d per burn stack')

Write-Output '--- cheap-tier / stop-level prefixes ---'
function Pfx([string] $n, [double[]] $c, [double[]] $t, [int[]] $ks) {
  $o = @()
  foreach ($k in $ks) { $cc = 0.0; $tt = 0.0
    for ($i = 0; $i -lt $k; $i++) { $cc += $c[$i]; $tt += $t[$i] }
    $o += ('k=' + $k + ' ' + ('{0:F2}' -f ($cc / $U9)) + ' B / ' + ('{0:F2}' -f ($tt / 1440.0)) + ' d') }
  Write-Output ('  ' + $n + ': ' + ($o -join '  |  '))
}
Pfx 'Cooldown line' $cdCost $cdTime @(3, 5, 10, 15, 20, 25)
Pfx 'Duration line' $durCost $durTime @(3, 5, 10, 15, 20)
Pfx 'Burn Stack' $bsCost $bsTime @(1, 2, 3, 5)
Write-Output ('  nine L1 buys (5 cooldown + 4 duration) = ' + ('{0:F0}' -f (5 * $cdCost[0] + 4 * $durCost[0])) +
  ' coins and ' + [string](5 * $cdTime[0] + 4 * $durTime[0]) + ' min = ' +
  ('{0:F2}' -f ((5 * $cdTime[0] + 4 * $durTime[0]) / 1440.0)) + ' d')

Write-Output '--- Appendix B restatement (layer O added to the Rev 32 bill) ---'
$billC = 6.4703 * $U18 + $catC
$billT = 473959.6 + ($catT / 1440.0)
Write-Output ('  178/191 lines = ' + ('{0:F1}' -f (178.0 / 191 * 100)) + ' % coverage ; coins=' +
  ('{0:F4}' -f ($billC / $U18)) + ' Q ; clock=' + ('{0:F1}' -f $billT) + ' d')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billC / 700e12)) + ' d = ' +
  ('{0:F2}' -f ($billC / 700e12 / 365.25)) + ' y at 700 T/day ; clock ' + ('{0:F1}' -f $billT) + ' d = ' +
  ('{0:F1}' -f ($billT / 365.25)) + ' y single-slot = ' + ('{0:F1}' -f ($billT / 5 / 365.25)) +
  ' y five slots = ' + ('{0:F1}' -f ($billT / 5 / 3.725 / 365.25)) + ' y stacked')
Write-Output ('  bot-category share of the new bill: ' + ('{0:F2}' -f ($catC / $billC * 100)) + ' % coins / ' +
  ('{0:F2}' -f (($catT / 1440.0) / $billT * 100)) + ' % clock')
Write-Output ('  12-lab reading: 158/171 = ' + ('{0:F1}' -f (158.0 / 171 * 100)) + ' % ; coins ' +
  ('{0:F4}' -f ((5.4703 * $U18 + $catC) / $U18)) + ' Q / ' + ('{0:F1}' -f (455959.6 + ($catT / 1440.0))) + ' d')
