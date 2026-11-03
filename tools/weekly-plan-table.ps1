param()
# Iteration 149: the WEEKLY form of the five-resource sheet (T025 1.5 in per-week units), so a player can put their own
# four counters into it. Legs are in weeks; the plan costs max(legs). Cross-checks T013 2.5 (2 548 / 56.0 / 37.6).
$stack = 3.725
$gemsW = 435 * 7
$gemsW8 = 360 * 7
$cellsW = 1000 * 7
$medalsW = 607.5
$shW = 1470
$shWL = 3570
$clockW = 5 * 7
$clockWStack = 5 * 7 * $stack

Write-Output '--- 1. the weekly income row ---'
Write-Output ('  fixed : gems ' + $gemsW + ' (24 h claims) or ' + $gemsW8 + ' (8 h) ; cells ' + $cellsW +
  ' ; medals ' + $medalsW + ' ; shards ' + $shW + ' -> ' + $shWL + ' with the L50 lab ; tokens 185 ; bits ' +
  (('{0,7:F3}' -f (1555 / 8))) + ' ; keys 16 ; coins ' + (('{0,7:F0}' -f (700 * 7))) + ' T ; clock ' + $clockW +
  ' slot-days (stacked ' + (('{0,8:F3}' -f $clockWStack)) + ')')
$bands = @(
  @('no tournaments', 97.5), @('Copper 23-30', 177.5), @('Copper 13-15', 251.5), @('Silver 23-30', 529.5),
  @('Gold 23-30', 1177.5), @('Platinum 16-24', 6497.5), @('Champion 16-24', 20257.5)
)
foreach ($b in $bands) {
  Write-Output ('  ' + $b[0].PadLeft(14) + ' : stones ' + (('{0,9:F1}' -f $b[1])) + ' /wk ; in ge ' +
    (('{0,9:F1}' -f ($b[1] * 10))) + ' ; gems ' + $gemsW + ' ; shards ' + $shW + ' -> ge ' + (0.6 * $shW))
}
Write-Output ('  ge/wk ranking at the Copper bottom : gems ' + $gemsW + ' > stones ' + (177.5 * 10) +
  ' > shards ' + (('{0,6:F1}' -f (0.6 * $shW))) + ' (unlabbed) / ' + (('{0,6:F1}' -f (0.6 * $shWL))) + ' (lab L50)')

Write-Output '--- 2. the legs of the first-year plan, in weeks, per band ---'
# bills: gems 114 500 ; stone knee package 8 865 ; four slots to L50 82 380 ; medal sheet 212 660 ; clock 2 497.5 slot-days
$clockLegRaw = 2497.5 / $clockW
$clockLegStack = 2497.5 / $clockWStack
$gemLeg = 114500 / $gemsW
$gemLeg8 = 114500 / $gemsW8
$medLeg = 212660 / $medalsW
foreach ($b in $bands) {
  $st = 8865 / $b[1]
  $sh1 = 82380 / $shW
  $sh2 = 82380 / $shWL
  $mxA = [Math]::Max([Math]::Max($gemLeg, $st), [Math]::Max([Math]::Max($sh1, $medLeg), $clockLegRaw))
  $mxB = [Math]::Max([Math]::Max($gemLeg, $st), [Math]::Max([Math]::Max($sh1, $medLeg), $clockLegStack))
  $mxC = [Math]::Max([Math]::Max($gemLeg, $st), [Math]::Max([Math]::Max($sh2, $medLeg), $clockLegStack))
  # the same three states WITHOUT the medal sheet (the four-counter set)
  $nA = [Math]::Max([Math]::Max($gemLeg, $st), [Math]::Max($sh1, $clockLegRaw))
  $nB = [Math]::Max([Math]::Max($gemLeg, $st), [Math]::Max($sh1, $clockLegStack))
  $nC = [Math]::Max([Math]::Max($gemLeg, $st), [Math]::Max($sh2, $clockLegStack))
  $whoN = 'clock'
  if ($nB -eq $st) { $whoN = 'stones' } elseif ($nB -eq $sh1) { $whoN = 'shards' } elseif ($nB -eq $gemLeg) { $whoN = 'gems' }
  Write-Output ('  ' + $b[0].PadLeft(14) + ' : stones ' + (('{0,7:F1}' -f $st)) + ' ; shards ' + (('{0,7:F1}' -f $sh1)) +
    ' / ' + (('{0,6:F1}' -f $sh2)) + ' ; medals ' + (('{0,6:F1}' -f $medLeg)) + ' ; gems ' + (('{0,6:F1}' -f $gemLeg)) +
    ' ; clock ' + (('{0,6:F1}' -f $clockLegRaw)) + ' / ' + (('{0,5:F1}' -f $clockLegStack)) +
    ' => full set ' + (('{0,6:F1}' -f $mxA)) + ' / ' + (('{0,6:F1}' -f $mxB)) + ' / ' + (('{0,6:F1}' -f $mxC)) +
    ' wks ; no-medal set ' + (('{0,6:F1}' -f $nA)) + ' / ' + (('{0,6:F1}' -f $nB)) + ' / ' + (('{0,6:F1}' -f $nC)) +
    ' (B binds ' + $whoN + ')')
}
Write-Output ('  fixed legs : gems ' + (('{0,6:F1}' -f $gemLeg)) + ' wks (' + (('{0,6:F1}' -f $gemLeg8)) +
  ' at the 8-h rate) ; medals ' + (('{0,6:F1}' -f $medLeg)) + ' ; clock ' + (('{0,6:F1}' -f $clockLegRaw)) +
  ' raw / ' + (('{0,5:F1}' -f $clockLegStack)) + ' stacked ; shards ' + (('{0,6:F1}' -f (82380 / $shW))) +
  ' or ' + (('{0,5:F1}' -f (82380 / $shWL))) + ' ; the whole stone census in weeks is band-bound (next row)')

Write-Output '--- 3. the whole stone census in weeks (the long-term leg), + the T013 2.5 cross-check ---'
foreach ($b in $bands) {
  Write-Output ('  ' + $b[0].PadLeft(14) + ' : ' + (('{0,9:F1}' -f (452282 / $b[1]))) + ' wks')
}
Write-Output ('  T013 2.5 prints stones 2 548 / shards 56.0 (no lab) or 23.1 / gems 37.6 weeks -> here ' +
  (('{0,7:F1}' -f (452282 / 177.5))) + ' / ' + (('{0,6:F1}' -f (82380 / $shW))) + ' and ' +
  (('{0,5:F1}' -f (82380 / $shWL))) + ' / ' + (('{0,5:F1}' -f $gemLeg)))

Write-Output '--- 4. the three-division self-service rule, worked at the Copper bottom ---'
$G = 3045.0; $S = 177.5; $H = 1470.0; $M = 607.5
Write-Output ('  read your week : gems ' + $G + ' ; stones ' + $S + ' ; shards ' + $H + ' ; medals ' + $M)
Write-Output ('  divide         : 114 500/' + $G + ' = ' + (('{0,6:F1}' -f (114500 / $G))) + ' ; 8 865/' + $S +
  ' = ' + (('{0,6:F1}' -f (8865 / $S))) + ' ; 82 380/' + $H + ' = ' + (('{0,6:F1}' -f (82380 / $H))) +
  ' ; 212 660/' + $M + ' = ' + (('{0,6:F1}' -f (212660 / $M))) + ' ; the plan is the largest of the four')
Write-Output ('  the four legs are ' + (('{0,6:F1}' -f (114500 / $G))) + ' / ' + (('{0,6:F1}' -f (8865 / $S))) +
  ' / ' + (('{0,6:F1}' -f (82380 / $H))) + ' / ' + (('{0,6:F1}' -f (212660 / $M))) +
  ' wks => binding ' + (('{0,6:F1}' -f [Math]::Max([Math]::Max(114500 / $G, 8865 / $S), [Math]::Max(82380 / $H, 212660 / $M)))))

Write-Output '--- 5. crossover points : where each leg stops being the binding one (stones/week) ---'
# with the stack + shard lab the rivals are fixed: medals 50.01 , gems 37.60 , clock 19.16 , shards 23.07
Write-Output ('  stones overtake the medal leg when 8 865/S > 212 660/6 07.5 = ' + (('{0,6:F2}' -f $medLeg)) +
  ' wks => S < ' + (('{0,6:F1}' -f (8865 / $medLeg))) + ' st/wk')
Write-Output ('  stones overtake the shard leg (lab) when 8 865/S > ' + (('{0,6:F2}' -f (82380 / $shWL))) +
  ' => S < ' + (('{0,6:F1}' -f (8865 / (82380 / $shWL)))) + ' st/wk ; (no lab) S < ' +
  (('{0,6:F1}' -f (8865 / (82380 / $shW)))) + ' st/wk')
Write-Output ('  the whole-census stone leg vs the fleet leg : S < ' + (('{0,7:F1}' -f (452282 / (82380 / $shW)))) +
  ' st/wk (no lab) = the T013 2.5 crossover 8 071')
