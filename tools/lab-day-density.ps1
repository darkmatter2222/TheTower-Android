param()
# Iteration 141: the ten bot lab lines on a calendar-day scale, joint with the medal layer.
# Cost model (two resources, both printed): cost_days = max( coin_price / coin_income , clock_min / (1440 * slots) )
# Medal buys have no clock: cost_days = medal_price / 607.5 (F2P) or / 1 080 (boosted, T013 2.4).
# Gain = ln(final value / base value) with rho = printed base / printed increment.
# Printed bills/clocks from T006 "The Bot Research category priced line by line" (Rev 33).
$u8 = $null
function LabDens([double] $gain, [double] $coins, [double] $clockMin, [double] $income, [int] $slots) {
  $coinDays = $coins / $income
  $clockDays = $clockMin / (1440.0 * $slots)
  $d = [Math]::Max($coinDays, $clockDays)
  return @{ per = $gain / $d; bind = $(if ($coinDays -gt $clockDays) { 'coins' } else { 'clock' });
    coinDays = $coinDays; clockDays = $clockDays }
}

# name, levels, rho, gain-form(g|s), Sigma coins, Sigma clock min
$labs = @(
  @('Golden Cooldown',  25, 120.0, 's', 1.80824e12, 830411.0),
  @('Thunder Cooldown', 25, 120.0, 's', 1.80824e12, 830411.0),
  @('Amplify Cooldown', 25, 120.0, 's', 1.80824e12, 830411.0),
  @('BotBot Cooldown',  25, 120.0, 's', 1.80824e12, 830411.0),
  @('Flame Cooldown',   25,  75.0, 's', 1.80824e12, 830411.0),
  @('Golden Duration',  20,  40.0, 'g', 6.64838e14, 1229315.0),
  @('Amplify Duration', 20,  40.0, 'g', 6.64838e14, 1229315.0),
  @('BotBot Duration',  20,  40.0, 'g', 6.64838e14, 1229315.0),
  @('Thunder Linger',   20,   7.0, 'g', 6.64838e14, 1229315.0),
  @('Flame BurnStack',   5,   5.0, 'g', 5.670625e14, 442973.0)
)
foreach ($inc in @(1e11, 1e12, 7e14)) {
  Write-Output ('--- 1. the ten lab lines, coin income ' + (('{0:E2}' -f $inc)) + ' per day ---')
  foreach ($slots in @(1, 3, 5)) {
    $rows = @()
    foreach ($l in $labs) {
      $lvl = [int]$l[1]; $rho = [double]$l[2]
      $gain = $(if ($l[3] -eq 's') { [Math]::Log($rho / ($rho - $lvl)) } else { [Math]::Log(1.0 + $lvl / $rho) })
      $r = LabDens $gain $l[4] $l[5] $inc $slots
      $rows += [pscustomobject]@{ name = $l[0]; gain = $gain; per = $r.per; bind = $r.bind }
    }
    Write-Output ('  slots=' + $slots + ' : ' +
      (($rows | Sort-Object -Property per -Descending | ForEach-Object { $_.name + ' ' + (('{0,9:F6}' -f $_.per)) + '(' + $_.bind + ')' }) -join ' ; '))
  }
}
Write-Output '--- 2. the medal layer on the same scale (607.5 medals/day F2P) ---'
$medalBlocks = @(
  @('cosmetics 1 000',            0.029559, 1000.0),
  @('Echoing Shot 9 lv',          1.3863,   8100.0),
  @('Titan Shock 20 lv',          1.6094,  11500.0),
  @('Flame C 15 lv',              0.9163,   5700.0),
  @('Golden R20+B24+D14+C15',    3.0920,  33780.0),
  @('Thunder all 4 lines',        3.9850,  30600.0),
  @('whole medal sheet 445 taps',17.7550, 212660.0)
)
foreach ($m in $medalBlocks) {
  $days = $m[2] / 607.5
  Write-Output ('  ' + $m[0].PadRight(24) + ' ' + (('{0,7}' -f $m[2])) + ' medals = ' + (('{0,8:F2}' -f $days)) +
    ' days ; ln ' + (('{0,6:F3}' -f $m[1])) + ' ; ' + (('{0,9:F6}' -f ($m[1] / $days))) + ' per day')
}
Write-Output '--- 3. the crossover income where coins start to bind (slots = 5) ---'
foreach ($l in @(@('Cooldown lab', 1.80824e12, 830411.0), @('Duration lab', 6.64838e14, 1229315.0),
                 @('Burn Stack', 5.670625e14, 442973.0))) {
  $clockDays = $l[2] / (1440.0 * 5)
  Write-Output ('  ' + $l[0].PadRight(13) + ' : coins bind when income < ' + (('{0,11:F4}' -f ($l[1] / $clockDays))) +
    ' per day = ' + (('{0:E3}' -f ($l[1] / $clockDays))) + ' ; clock = ' + (('{0,7:F2}' -f $clockDays)) + ' days at 5 slots')
}
Write-Output '--- 4. per-coin density of the three lab ladders (whole line, coins only) ---'
$per = @(
  @('Cooldown (5 lines, rho 120 / 75)', [Math]::Log(120.0 / 95), 1.80824e12),
  @('Cooldown Flame  (rho 75)',         [Math]::Log(75.0 / 50),  1.80824e12),
  @('Duration (rho 40)',                [Math]::Log(30.0 / 20),  6.64838e14),
  @('Linger Time (rho 7)',              [Math]::Log(13.5 / 3.5), 6.64838e14),
  @('Burn Stack (rho 5)',               [Math]::Log(10.0 / 5),   5.670625e14)
)
foreach ($x in $per) { Write-Output ('  ' + $x[0].PadRight(32) + ' ln ' + (('{0,6:F4}' -f $x[1])) + ' / ' +
  (('{0:E4}' -f $x[2])) + ' coins = ' + (('{0:E3}' -f ($x[1] / $x[2]))) + ' per coin') }
Write-Output ('  ratio cooldown/duration = ' + (('{0,8:F1}' -f (([Math]::Log(120.0 / 95) / 1.80824e12) / ([Math]::Log(30.0 / 20) / 6.64838e14)))))
Write-Output '--- 5. the printed prefix bills re-add (blocks of five) ---'
$cdp = @(0, 181.65e6, 515.0e6, 7.69e9, 80.58e9, 462.95e9, 1808.24e9)
$names = @('k3', 'k5', 'k10', 'k15', 'k20', 'k25')
for ($i = 1; $i -le 6; $i++) {
  Write-Output ('  cooldown ' + $names[$i - 1].PadRight(4) + ' = ' + (('{0:E4}' -f $cdp[$i])) + ' ; block delta = ' +
    (('{0:E4}' -f ($cdp[$i] - $cdp[$i - 1]))))
}
$dupN = @('k3', 'k5', 'k10', 'k15', 'k20')
$dup = @(0, 475e9, 1318.75e9, 11328.13e9, 87368.13e9, 664838e9)
for ($i = 1; $i -le 5; $i++) {
  Write-Output ('  duration ' + $dupN[$i - 1].PadRight(4) + ' = ' + (('{0:E4}' -f $dup[$i])) + ' ; block delta = ' +
    (('{0:E4}' -f ($dup[$i] - $dup[$i - 1]))))
}
Write-Output ('  Burn Stack 43 + 64.5 + 96.75 = ' + (43 + 64.5 + 96.75) + ' T for k3 (T006 prints 204.25 with a B suffix, a unit typo) ;' +
  ' + 145.12 + 217.69 = ' + (43 + 64.5 + 96.75 + 145.12 + 217.69) + ' T for k5 (printed 567.06 T)')
Write-Output ('  5 cooldown + 4 duration + 1 burnstack = ' + (5 * 1.80824e12 + 4 * 6.64838e14 + 5.670625e14) +
  ' coins (T006 prints 3.235 5 q)')

Write-Output '--- 6. the clock-bound order (all ten lines, 5 slots) against the cosmetic par 0.017957/day ---'
$catLn = 4 * [Math]::Log(120.0 / 95) + [Math]::Log(75.0 / 50) + 3 * [Math]::Log(1.5) + [Math]::Log(1 + 20 / 7) + [Math]::Log(2.0)
$cb = @(
  @('Flame BurnStack (5 lv)',  [Math]::Log(2.0),        442973.0),
  @('Thunder Linger (20 lv)',  [Math]::Log(1 + 20 / 7), 1229315.0),
  @('Flame Cooldown (25 lv)',  [Math]::Log(75.0 / 50),  830411.0),
  @('Duration x3 (20 lv)',     [Math]::Log(1.5),        1229315.0),
  @('Cooldown x4 (25 lv)',     [Math]::Log(120.0 / 95), 830411.0)
)
foreach ($x in $cb) {
  $d5 = $x[1] / ($x[2] / (1440.0 * 5))
  $d1 = $x[1] / ($x[2] / (1440.0 * 1))
  Write-Output ('  ' + $x[0].PadRight(24) + ' ln ' + (('{0,6:F4}' -f $x[1])) + ' / ' + (('{0,8:F1}' -f ($x[2] / 1440))) +
    ' slot-days = ' + (('{0,9:F6}' -f $d5)) + '/day at 5 slots ; ' + (('{0,9:F6}' -f $d1)) + ' at 1 slot ; ' +
    $(if ($d5 -ge 0.017957) { 'ABOVE par' } else { 'below par' }))
}
Write-Output ('  medal layer reference : whole sheet 0.050720/day ; best single block (Echoing Shot) 0.103973/day ;' +
  ' cosmetics par 0.017957/day')
Write-Output ('  category totals : lab clock 9 512 288 min = 6 605.8 slot-days = ' + (('{0,8:F1}' -f (6605.8 / 5))) +
  ' calendar days at 5 slots for ln ' + (('{0,6:F3}' -f $catLn)) + ' => ' + (('{0,9:F6}' -f ($catLn / (6605.8 / 5)))) +
  '/day (the whole category)')
