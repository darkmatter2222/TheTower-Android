param()
# Census of the four sub-module-effects tables: start-column histogram, arithmetic rows, duplicate ladders, ratios.
$tables = @{}
$tables['Cannon'] = @(
  @('Attack Speed',0.3,0.5,0.7,1,3,5),
  @('Crit Chance',2,3,4,6,8,10),
  @('Crit Factor',2,4,6,8,12,15),
  @('Attack Range',2,4,8,12,20,30),
  @('Damage / Meter',0.005,0.01,0.025,0.04,0.075,0.15),
  @('Multishot Chance',[string]'n/a',3,5,7,10,13),
  @('Multishot Targets',[string]'n/a',[string]'n/a',1,2,3,4),
  @('Rapid Fire Chance',[string]'n/a',2,4,6,9,12),
  @('Rapid Fire Duration',[string]'n/a',0.4,0.8,1.4,2.5,3.5),
  @('Bounce Shot Chance',[string]'n/a',2,3,5,9,12),
  @('Bounce Shot Targets',[string]'n/a',[string]'n/a',1,2,3,4),
  @('Bounce Shot Range',[string]'n/a',0.5,0.8,1.2,1.8,2.0),
  @('Super Crit Chance',[string]'n/a',[string]'n/a',3,5,7,10),
  @('Super Crit Multi',[string]'n/a',[string]'n/a',2,3,5,7),
  @('Rend Armor Chance',[string]'n/a',[string]'n/a',[string]'n/a',2,5,8),
  @('Rend Armor Multi',[string]'n/a',[string]'n/a',[string]'n/a',2,5,8),
  @('Max Rend Armor Multi',[string]'n/a',[string]'n/a',[string]'n/a',200,300,500)
)
$tables['Armor'] = @(
  @('Health Regen',20,40,60,100,200,400),
  @('Defense',1,2,3,5,6,8),
  @('Defense Absolute',15,25,40,100,500,1000),
  @('Thorns Damage',[string]'n/a',[string]'n/a',2,4,7,10),
  @('Lifesteal',[string]'n/a',[string]'n/a',0.3,0.5,1.5,2.0),
  @('Knockback Chance',[string]'n/a',[string]'n/a',2,4,6,9),
  @('Knockback Force',[string]'n/a',[string]'n/a',0.1,0.4,0.9,1.5),
  @('Orb Speed',[string]'n/a',[string]'n/a',1,1.5,2,3),
  @('Orbs',[string]'n/a',[string]'n/a',[string]'n/a',[string]'n/a',1,2),
  @('Shockwave Size',[string]'n/a',[string]'n/a',0.1,0.3,0.7,1),
  @('Shockwave Frequency',[string]'n/a',[string]'n/a',-1,-2,-3,-4),
  @('Land Mine Damage',[string]'n/a',30,50,150,500,800),
  @('Land Mine Chance',[string]'n/a',1.5,3,6,9,12),
  @('Land Mine Radius',[string]'n/a',0.1,0.15,0.3,0.75,1),
  @('Death Defy',[string]'n/a',[string]'n/a',[string]'n/a',1.5,3.5,5),
  @('Wall Health',[string]'n/a',[string]'n/a',20,40,90,120),
  @('Wall Rebuild',[string]'n/a',[string]'n/a',-20,-40,-80,-100)
)
$tables['Generator'] = @(
  @('Cash Bonus',0.1,0.2,0.3,0.5,1.2,2.5),
  @('Cash / Wave',30,50,100,200,500,1000),
  @('Coins / Kill Bonus',0.1,0.2,0.3,0.4,0.5,0.6),
  @('Coins / Wave',20,35,60,120,200,350),
  @('Free Attack Upgrade',2,4,6,8,10,12),
  @('Free Defense Upgrade',2,4,6,8,10,12),
  @('Free Utility Upgrade',2,4,6,8,10,12),
  @('Interest / Wave',[string]'n/a',[string]'n/a',2,4,6,8),
  @('Recovery Amount',[string]'n/a',[string]'n/a',3,5,7,10),
  @('Max Recovery',[string]'n/a',[string]'n/a',0.4,0.7,1.0,1.5),
  @('Package Chance',[string]'n/a',[string]'n/a',5,8,11,15),
  @('Enemy Attack Level Skip',[string]'n/a',[string]'n/a',2,4,6,8),
  @('Enemy Health Level Skip',[string]'n/a',[string]'n/a',2,4,6,8)
)
$tables['Core'] = @(
  @('Golden Tower - Bonus',[string]'n/a',[string]'n/a',1,2,3,4),
  @('Golden Tower - Duration',[string]'n/a',[string]'n/a',[string]'n/a',2,4,7),
  @('Golden Tower - Cooldown',[string]'n/a',[string]'n/a',[string]'n/a',-5,-8,-12),
  @('Black Hole - Size',2,4,6,8,10,12),
  @('Black Hole - Duration',[string]'n/a',[string]'n/a',[string]'n/a',2,3,4),
  @('Black Hole - Cooldown',[string]'n/a',[string]'n/a',[string]'n/a',-2,-3,-4),
  @('Spotlight - Bonus',1.2,2.5,3.5,10,15,20),
  @('Spotlight - Angle',[string]'n/a',[string]'n/a',3,6,11,15),
  @('Chrono Field - Duration',[string]'n/a',[string]'n/a',[string]'n/a',4,7,10),
  @('Chrono Field - Speed Reduction',[string]'n/a',[string]'n/a',3,8,11,15),
  @('Chrono Field - Cooldown',[string]'n/a',[string]'n/a',[string]'n/a',-4,-7,-10),
  @('Death Wave - Damage',8,15,25,50,100,250),
  @('Death Wave - Quantity',[string]'n/a',[string]'n/a',[string]'n/a',1,2,3),
  @('Death Wave - Cooldown',[string]'n/a',[string]'n/a',[string]'n/a',-6,-10,-13),
  @('Smart Missiles - Damage',8,15,25,50,100,250),
  @('Smart Missiles - Quantity',[string]'n/a',[string]'n/a',1,2,4,5),
  @('Smart Missiles - Cooldown',[string]'n/a',[string]'n/a',[string]'n/a',-2,-4,-6),
  @('Inner Land Mines - Damage',8,15,25,50,100,250),
  @('Inner Land Mines - Quantity',[string]'n/a',[string]'n/a',[string]'n/a',1,2,3),
  @('Inner Land Mines - Cooldown',[string]'n/a',[string]'n/a',[string]'n/a',-5,-8,-10),
  @('Poison Swamp - Damage',8,15,25,50,100,250),
  @('Poison Swamp - Duration',[string]'n/a',[string]'n/a',[string]'n/a',2,5,10),
  @('Poison Swamp - Cooldown',[string]'n/a',-2,-4,-6,-8,-10),
  @('Chain Lightning - Damage',8,15,25,50,100,250),
  @('Chain Lightning - Quantity',[string]'n/a',[string]'n/a',1,2,3,4),
  @('Chain Lightning - Chance',2,4,6,9,12,15)
)
$names = @('Cannon','Armor','Generator','Core')
$hist = @{}
$arith = 0; $total = 0
$ladders = @{}
foreach ($tn in $names) {
  $rows = $tables[$tn]
  $cnt = 0; $sum = 0
  foreach ($r in $rows) {
    $total++
    $vals = @()
    for ($i = 1; $i -lt $r.Count; $i++) { $vals += $r[$i] }
    $start = 0
    while ($start -lt $vals.Count -and [string]$vals[$start] -eq 'n/a') { $start++ }
    if (-not $hist.ContainsKey($start)) { $hist[$start] = 0 }
    $hist[$start] = $hist[$start] + 1
    $nums = @($vals[$start..($vals.Count - 1)] | ForEach-Object { [double]$_ })
    $key = ($nums -join '/')
    if (-not $ladders.ContainsKey($key)) { $ladders[$key] = New-Object System.Collections.Generic.List[string] }
    $ladders[$key].Add($tn + ':' + $r[0])
    $d = @()
    for ($i = 1; $i -lt $nums.Count; $i++) { $d += [Math]::Round($nums[$i] - $nums[$i - 1], 6) }
    $same = $true
    foreach ($x in $d) { if ([Math]::Abs($x - $d[0]) -gt 1e-9) { $same = $false } }
    if ($same) { $arith++; $cnt++ }
    $sum += $nums.Count
    if ($nums.Count -lt 4) { Write-Output ($tn + ' SHORT ' + $r[0] + ' ' + $key) }
  }
  Write-Output ($tn + ' rows=' + $rows.Count + ' arithmetic=' + $cnt + ' cells=' + $sum)
}
Write-Output ('TOTAL rows=' + $total + ' arithmetic=' + $arith)
foreach ($k in ($hist.Keys | Sort-Object)) { Write-Output ('starts-at-column-' + $k + ' (0-based) count=' + $hist[$k]) }
Write-Output '--- duplicate ladders (>= 2 rows) ---'
foreach ($k in $ladders.Keys) {
  if ($ladders[$k].Count -ge 2) { Write-Output ($k + '  <=  ' + (($ladders[$k]) -join ' | ')) }
}
Write-Output '--- Common->Ancestral ratios (top / bottom) ---'
$rats = @()
foreach ($tn in $names) {
  foreach ($r in $tables[$tn]) {
    $v = @(); for ($i = 1; $i -lt $r.Count; $i++) { $v += $r[$i] }
    $nums = @($v | Where-Object { [string]$_ -ne 'n/a' } | ForEach-Object { [double]$_ })
    if ($nums[0] -ne 0) { $rats += ,@(($tn + ':' + $r[0]), [Math]::Round($nums[-1] / $nums[0], 3)) }
  }
}
$rats | Sort-Object { $args = $_ } | ForEach-Object { '' } | Out-Null
$sorted = $rats | Sort-Object -Property @{Expression = { $_[1] }}
Write-Output ('lowest: ' + (($sorted[0..4] | ForEach-Object { $_[0] + ' ' + $_[1] }) -join ' ; '))
Write-Output ('highest: ' + (($sorted[-1..-5] | ForEach-Object { $_[0] + ' ' + $_[1] }) -join ' ; '))
