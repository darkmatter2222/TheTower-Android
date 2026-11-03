param()
# Iteration 148: the five-resource day scale for the whole budget sheet (T025 1), plus the
# gem-equivalent (ge) cross-check of the exchange rates, plus the binding-resource sensitivity.
#   cost_days(resource) = bill / income ; the plan costs max(over the resources it consumes)
$coins = 700e12
$gems = 435.0
$gemsLow = 360.0
$cells = 1000.0
# Rev 43 (T006): the printed 607.5 / 1 080 of T013 2.4 are PER WEEK (an event is 2 weeks, 1 215 / 2 160 medals).
$medals = 607.5 / 7
$tokens = 185 / 7
$bits = 1555 / 56
$keys = 16 / 7
$shUn = 1470 / 7
$shLab = 3570 / 7
$stack = 3.725

Write-Output '--- 1. the ge-numeraire: the printed exchange 1 st = 10 ge, 1 shard = 0.6 ge ---'
Write-Output ('  income in ge/day : gems ' + (('{0,9:F2}' -f $gems)) + ' ; stones (Copper-bottom F2P 177.5/wk) ' +
  (('{0,9:F2}' -f (177.5 / 7 * 10))) + ' ; shards unlabbed ' + (('{0,9:F2}' -f ($shUn * 0.6))) +
  ' ; shards with the L50 lab ' + (('{0,9:F2}' -f ($shLab * 0.6))) + ')')
Write-Output ('  150-identity check : 150 x 1 = ' + (150 * 1) + ' ; 15 x 10 = ' + (15 * 10) + ' ; 250 x 0.6 = ' +
  (250 * 0.6) + ' -> all three event lines pay the same ge')

Write-Output '--- 2. every bill of T025 1 on the calendar ---'
# label, bill, income/day, ge per unit
$rows = @(
  @('Gems  the framework (4 900 + 58 400 + 51 200)', 114500, $gems, 1),
  @('Gems  framework at the 8-h claim rate        ', 114500, $gemsLow, 1),
  @('Cells the whole lab census at x1.5           ', 24968000, $cells, 0),
  @('Medals the full bot sheet (445 taps)          ', 212660, $medals, 0),
  @('Shards four slots to L50 (unlabbed)           ', 82380, $shUn, 0.6),
  @('Shards four slots to L50 (lab L50)            ', 82380, $shLab, 0.6),
  @('Shards four slots to L101 (lab L50)           ', 94380, $shLab, 0.6),
  @('Shards four slots to L201 (lab L50)           ', 1864380, $shLab, 0.6),
  @('Tokens one full Guild Store                   ', 1225, $tokens, 0),
  @('Bits  the Ally chip                           ', 14470, $bits, 0),
  @('Keys  the whole Vault                         ', 73000, $keys, 0)
)
foreach ($r in $rows) {
  $d = $r[1] / $r[2]
  Write-Output ('  ' + $r[0] + ' ' + (('{0,10}' -f $r[1])) + ' at ' + (('{0,9:F3}' -f $r[2])) + ' /d = ' +
    (('{0,10:F1}' -f $d)) + ' d = ' + (('{0,7:F2}' -f ($d / 365))) + ' y')
}
$nt = 97.5
$stoneBills = @($nt, 177.5, 251.5, 529.5, 1177.5, 6497.5, 20257.5)
$nms = @('no tournaments', 'Copper 23-30', 'Copper 13-15', 'Silver 23-30', 'Gold 23-30', 'Platinum 16-24', 'Champion 16-24')
for ($i = 0; $i -lt $stoneBills.Count; $i++) {
  $d = 452282 / ($stoneBills[$i] / 7)
  Write-Output ('  Stones the 452 282 census, ' + $nms[$i].PadRight(15) + ' ' + (('{0,9:F1}' -f $stoneBills[$i])) +
    ' st/wk = ' + (('{0,10:F1}' -f $d)) + ' d = ' + (('{0,7:F2}' -f ($d / 365))) + ' y')
}
Write-Output ('  Coins the lab census 3 243.8393 Q = ' + (('{0,12:F1}' -f (3243.8393e18 / $coins))) +
  ' d ; clock 497 359.8 slot-d / 5 = ' + (('{0,9:F1}' -f (497359.8 / 5))) + ' d (stacked ' +
  (('{0,9:F1}' -f (497359.8 / 5 / $stack))) + ' d')

Write-Output '--- 3. the joint plan : cost = max over the resources it consumes ---'
$clockRaw = 2497.5 / 5
$clockStack = 2497.5 / 5 / $stack
$gemLeg = 114500 / $gems
$stLeg = 8865 / 25.3571
$mdLeg = 212660 / $medals
$shA = 82380 / $shUn
$shB = 82380 / $shLab
$plans = @(
  @('A  no shard lab, no lab-speed stack ', $gemLeg, $stLeg, $shA, $mdLeg, $clockRaw),
  @('B  no shard lab, x3.725 stack       ', $gemLeg, $stLeg, $shA, $mdLeg, $clockStack),
  @('C  shard lab L50, x3.725 stack      ', $gemLeg, $stLeg, $shB, $mdLeg, $clockStack)
)
$names = @('gems', 'stones', 'shards', 'medals', 'clock')
foreach ($p in $plans) {
  $legs = @($p[1], $p[2], $p[3], $p[4], $p[5])
  $mx = 0.0; $who = ''
  for ($k = 0; $k -lt $legs.Count; $k++) {
    if ($legs[$k] -gt $mx) { $mx = $legs[$k]; $who = $names[$k] }
  }
  $t = @()
  for ($k = 0; $k -lt $legs.Count; $k++) { $t += ($names[$k] + ' ' + (('{0,6:F1}' -f $legs[$k]))) }
  Write-Output ('  plan ' + $p[0] + ' : ' + ($t -join ' | '))
  Write-Output ('     => the joint cost is ' + (('{0,7:F1}' -f $mx)) + ' d = ' + (('{0,6:F2}' -f ($mx / 365))) +
    ' y, bound by ' + $who)
}

Write-Output '--- 4. binding-resource sensitivity : what one extra unit of income saves ---'
$base = 452282 / 25.3571
foreach ($add in @(1, 5, 13.9286)) {
  $new = 452282 / (25.3571 + $add)
  Write-Output ('  stones + ' + (('{0,7:F3}' -f $add)) + ' st/day -> ' + (('{0,9:F1}' -f $new)) + ' d (saves ' +
    (('{0,8:F1}' -f ($base - $new))) + ' d = ' + (('{0,6:F2}' -f (($base - $new) / 365))) + ' y)')
}
Write-Output ('  the same +1/unit on the non-binding legs saves 0 d : gems ' + (('{0,7:F1}' -f (114500 / $gems))) +
  ' d , shards ' + (('{0,7:F1}' -f (82380 / $shUn))) + ' d , medals ' + (('{0,7:F1}' -f (212660 / $medals))) + ' d')

Write-Output '--- 5. the 52-week vs 365-day convention on the shard leg ---'
$w52 = 1470 * 52
$d365 = $shUn * 365
Write-Output ('  52 weeks = ' + $w52 + ' shards (short of 82 380 by ' + (82380 - $w52) + ') ; 365 days = ' +
  (('{0,9:F1}' -f $d365)) + ' (short by ' + (('{0,7:F1}' -f (82380 - $d365))) + ') ; with the lab 52 wks = ' +
  (1470 * 0 + 3570 * 52) + ' ; surplus over 82 380 = ' + (3570 * 52 - 82380))
Write-Output ('  one year of stones (Copper bottom, F2P) = ' + (('{0,9:F1}' -f (25.3571 * 365))) +
  ' st vs the 8 865 knee package -> fits with ' + (('{0,7:F1}' -f (25.3571 * 365 - 8865))) + ' to spare')
