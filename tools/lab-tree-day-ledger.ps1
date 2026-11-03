param()
# Iteration 142: the whole lab tree (17 priced layers) on the calendar, joint with the medal sheet.
# Printed inputs: T006 census layer table (Sigma coins / Sigma clock per layer).
# Model: coin-days = Sigma coins / 700 T ; slot-days = Sigma clock / (5 slots) ; with the x3.725 stack the clock divides further.
# Bind = max(coin-days, slot-days). Medal sheet reference = 212 660 medals / 607.5 = 350.06 days (T015 3.4).
function Num([double] $v, [string] $u) {
  # NB: PowerShell switch/hashtable matching is case-insensitive, and the unit ladder has BOTH 'q' (10^15)
  # and 'Q' (10^18); compare with -ceq.
  $p = 3
  if ($u -ceq 'K') { $p = 3 } elseif ($u -ceq 'M') { $p = 6 } elseif ($u -ceq 'B') { $p = 9 }
  elseif ($u -ceq 'T') { $p = 12 } elseif ($u -ceq 'q') { $p = 15 } elseif ($u -ceq 'Q') { $p = 18 }
  elseif ($u -ceq 's') { $p = 21 } else { Write-Output ('unknown unit ' + $u) }
  return $v * [Math]::Pow(10, $p)
}
$layers = @(
  @('A', 'the 39 UW lab tables',               39, 2.4111, 'Q', 18165.95),
  @('B', 'enemy-stat T9-T13 band',             13, 383.113, 'T', 15127.87),
  @('B2', 'the T19 trio',                       6, 697.5,  'q', 30130.08),
  @('C', 'the 8 assist module labs',            8, 930.00, 'Q', 40174.20),
  @('D', 'the Second Wind pair',                2, 14.4301,'T', 128.75),
  @('E', 'Garlic Thorns',                       1, 1.35,   'M', 25.45),
  @('F', 'the two Level Skip labs',             2, 1.49,   'T', 260.62),
  @('G', 'Super Tower Bonus',                   1, 12.304, 'T', 897.30),
  @('H', 'Main Research category',             15, 826.445,'q', 16806.00),
  @('I', 'Attack Research category',            9, 25.594, 'T', 124747.50),
  @('J', 'Defense Research category',          15, 187.228,'T', 15050.90),
  @('K', 'Utility Research category',          10, 8.906,  'T', 10085.40),
  @('L', 'six named Card Research lines',       6, 30.848, 'T', 1185.50),
  @('M', 'the 32 mastery labs',                32, 1.600,  'Q', 18000.00),
  @('N', 'Perk Research category',              9, 4.337329,'q', 183173.90),
  @('O', 'Bot Research category',              10, 3.2355, 'q', 6605.80),
  @('P', 'Battle Condition + two Boss lines',   7, 2307.5775,'Q', 11453.00),
  @('Q', 'twelve named Module labs',           12, 0.7183, 'Q', 5341.40)
)
$income = 700e12
$slots = 5
$stack = 3.725
Write-Output ('--- 1. per layer: the two costs in calendar days (coin income 700 T/day, 5 slots) ---')
$rows = @()
foreach ($l in $layers) {
  $coins = Num $l[3] $l[4]
  $cd = $coins / $income
  $sd = $l[5] / $slots
  $sdS = $l[5] / $slots / $stack
  $bind = $(if ($cd -gt $sd) { 'COINS' } else { 'clock' })
  $cost = [Math]::Max($cd, $sd)
  $rows += [pscustomobject]@{ id = $l[0]; name = $l[1]; lines = $l[2]; coins = $coins; cd = $cd; sd = $sd; sdS = $sdS
    bind = $bind; cost = $cost }
  Write-Output ('  ' + $l[0].PadRight(3) + ' ' + $l[1].PadRight(34) + ' lines ' + (('{0,3}' -f $l[2])) +
    ' ; coins ' + (('{0:E3}' -f $coins)) + ' = ' + (('{0,12:F2}' -f $cd)) + ' coin-days ; clock ' +
    (('{0,10:F1}' -f $l[5])) + ' slot-d = ' + (('{0,9:F1}' -f $sd)) + ' d at 5 slots (' + (('{0,9:F1}' -f $sdS)) +
    ' with the stack) ; binds ' + $bind + ' at ' + (('{0,12:F1}' -f $cost)) + ' d')
}
Write-Output '--- 2. the totals re-add ---'
$sumC = ($rows | Measure-Object -Property coins -Sum).Sum
$sumCd = ($rows | Measure-Object -Property cd -Sum).Sum
$sumSd = ($rows | Measure-Object -Property sd -Sum).Sum
$sumClock = ($layers | ForEach-Object { $_[5] } | Measure-Object -Sum).Sum
Write-Output ('  Sigma coins ' + (('{0:E4}' -f $sumC)) + ' = ' + (('{0,12:F1}' -f $sumCd)) +
  ' coin-days (the doc prints 3 243.8393 Q and 4 634 056 d) ; Sigma clock ' + (('{0,10:F1}' -f $sumClock)) +
  ' slot-days = ' + (('{0,9:F1}' -f $sumSd)) + ' calendar days at 5 slots (the doc prints 497 359.8 and 272.3 y)')
Write-Output ('  max(coin-side, clock-side) = ' + (('{0,12:F1}' -f ([Math]::Max($sumCd, $sumSd)))) +
  ' days = ' + (('{0,8:F1}' -f ([Math]::Max($sumCd, $sumSd) / 365.25))) + ' years ; the bind ratio = x' +
  (('{0,8:F1}' -f ($sumCd / $sumSd))))
Write-Output '--- 3. the cheapest-first queue, with the medal sheet inserted ---'
$medal = [pscustomobject]@{ id = 'M-'; name = 'the whole medal sheet (445 taps)'; lines = 445; coins = 0.0; cd = 0.0
  sd = 350.06; sdS = 350.06; bind = 'medals'; cost = 350.06 }
$all = @($rows) + @($medal)
$cum = 0.0; $i = 0
foreach ($r in ($all | Sort-Object -Property cost)) {
  $i++
  $cum += $r.cost
  Write-Output ('  ' + (('{0,2}' -f $i)) + '. ' + $r.id.PadRight(3) + $r.name.PadRight(36) +
    (('{0,12:F1}' -f $r.cost)) + ' d ; cumulative ' + (('{0,12:F1}' -f $cum)) + ' d = ' +
    (('{0,8:F1}' -f ($cum / 365.25))) + ' y')
}
Write-Output '--- 4. the coin-per-clock-day ratio per layer (T006 finding 6 measure) ---'
foreach ($r in $rows) {
  Write-Output ('  ' + $r.id.PadRight(3) + ' coins per slot-day = ' + (('{0,14:E3}' -f ($r.coins / ($r.sd * 1440)))) +
    ' ; coin-days / clock-days = ' + (('{0,10:F3}' -f ($r.cd / $r.sd))))
}
Write-Output '--- 5b. the crossover income per layer (coins/slot-day x slots = the income where the bind flips) ---'
foreach ($r in $rows) {
  Write-Output ('  ' + $r.id.PadRight(3) + ' coin-bound below ' + (('{0,12:E3}' -f ($r.coins / $r.sd))) +
    ' per day (slots x coins/clock = ' + (('{0,12:E3}' -f ($slots * $r.coins / ($r.sd * $slots)))) + ') ; per-line cost ' +
    (('{0,10:F1}' -f ($r.cost / $r.lines))) + ' d')
}
Write-Output '--- 6. the with-stack plan: lab clock inside the medal sheet ---'
$order = $rows | Sort-Object -Property cost
$cumS = 0.0
foreach ($r in $order) {
  $cumS += $r.sd / $stack
  Write-Output ('  after ' + $r.id.PadRight(3) + ' lab clock used = ' + (('{0,10:F1}' -f $cumS)) +
    ' calendar days with the stack (the medal sheet is 350.1 d) ; ' +
    $(if ($cumS -le 350.06) { 'fits inside the medal sheet' } else { 'past the medal sheet' }))
}
Write-Output '--- 5. the sensitivity: which layers are coin-bound at other coin incomes ---'
foreach ($inc in @(1e11, 1e12, 1e13, 1e14, 7e14, 1e15)) {
  $cb = @()
  foreach ($r in $rows) { if (($r.coins / $inc) -gt $r.sd) { $cb += $r.id } }
  $cdT = $sumC / $inc
  Write-Output ('  income ' + (('{0:E2}' -f $inc)) + ' per day : coin-bound layers = ' +
    $(if ($cb.Count -eq 0) { 'none' } else { ($cb -join ',') }) + ' ; coin-side total ' + (('{0,12:F1}' -f $cdT)) +
    ' days vs clock-side ' + (('{0,9:F1}' -f $sumSd)) + ' => bind ' + $(if ($cdT -gt $sumSd) { 'COINS' } else { 'clock' }))
}
