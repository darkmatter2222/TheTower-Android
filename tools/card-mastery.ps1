param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s114a.txt')
# Iteration 114 arithmetic: the 32-row mastery table (per-row linearity + stone bill), the mastery-lab clock,
# the Shatter Shards lab ladder, and the 22-row card-slot gem ladder.
function Mins([string]$s) {
  $m = [regex]::Match($s, '(?:(\d+)y)?\s*(?:(\d+)d)?\s*(?:(\d+)h)?\s*(?:(\d+)m)?')
  return ([int]$m.Groups[1].Value) * 525960 + ([int]$m.Groups[2].Value) * 1440 + ([int]$m.Groups[3].Value) * 60 + [int]$m.Groups[4].Value
}
function Num([string]$s) {
  $t = ($s -replace ',', '').Trim()
  $m = [regex]::Match($t, '(-?[0-9.]+)\s*([KMBTqQsSO])?$')
  if (-not $m.Success) { return $null }
  $v = [double]$m.Groups[1].Value
  if ($m.Groups[2].Success) { $v *= (SufMult $m.Groups[2].Value) }
  return $v
}
function Plain([string]$s) {
  $m = [regex]::Match($s, '-?[0-9]+(\.[0-9]+)?')
  if (-not $m.Success) { return $null }
  return [double]$m.Value
}
function SufMult([string]$g) {
  switch -CaseSensitive ($g) {
    'K' { return 1e3 } 'M' { return 1e6 } 'B' { return 1e9 } 'T' { return 1e12 }
    'q' { return 1e15 } 'Q' { return 1e18 } 's' { return 1e21 } 'S' { return 1e24 }
    'O' { return 1e27 } default { return 1 }
  }
}
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
$mast = $null; $slots = $null; $hdr = ''
foreach ($l in $ls) {
  if ($l.StartsWith('HDR:')) { $hdr = $l; continue }
  if (-not $l.StartsWith('ROWS:')) { continue }
  $cells = @([regex]::Matches($l, '"(?:[^"]|(?:""))*"').Value | ForEach-Object { $_.Trim('"') })
  if ($cells.Count -eq 0) { continue }
  if ($hdr.Contains('"Slot","Gem Cost"')) { $slots = $cells }
  elseif ($hdr.Contains('"Stone Cost","Unlock"')) { $mast = $cells }
}
Write-Output ('mastery cells=' + $mast.Count + ' (31 rows x 13 expected = 403)')
$rows = @()
for ($i = 0; $i + 12 -lt $mast.Count + 1; $i += 13) {
  if ($i + 12 -ge $mast.Count) { break }
  $rows += ,@($mast[$i..($i + 12)])
}
$bill = 0; $nonlin = @(); $n = 0
foreach ($r in $rows) {
  $n++
  $bill += [int]$r[2]
  $vals = @($r[3..12] | ForEach-Object { Plain $_ })
  if ($null -eq $vals[0] -or $null -eq $vals[9]) { $nonlin += ($r[0] + ' (unparsed)'); continue }
  $step = ($vals[9] - $vals[0]) / 9.0
  $worst = 0
  for ($k = 0; $k -lt 10; $k++) {
    $exp = $vals[0] + $step * $k
    $err = [Math]::Abs($exp - $vals[$k])
    if ($err -gt $worst) { $worst = $err }
  }
  if ($worst -gt 0.051) { $nonlin += ($r[0] + ' worst=' + [Math]::Round($worst, 4)) }
  if ($n -le 6) { Write-Output ('  ' + $r[0] + ' first=' + $vals[0] + ' last=' + $vals[9] + ' step=' + [Math]::Round($step, 5) + ' worst=' + [Math]::Round($worst, 4)) }
}
Write-Output ('mastery rows=' + $n + ' stone bill (per-level price column) = ' + $bill)
Write-Output ('non-linear rows = ' + $nonlin.Count + ' : ' + ($nonlin -join ' | '))
$tally = @{}
foreach ($r in $rows) { $tally[$r[2]] = 1 + [int]$tally[$r[2]] }
foreach ($k in ($tally.Keys | Sort-Object)) { Write-Output ('  stone ' + $k + ' x ' + $tally[$k]) }
Write-Output ('full bill if each of the 10 columns costs its price = ' + ($bill * 10))
# --- card slots (22 rows, cells alternate Slot / Gem Cost)
$sv = @()
for ($i = 1; $i -lt $slots.Count; $i += 2) {
  if ($slots[$i] -eq 'Free') { $sv += 0 } else { $v = Num $slots[$i]; if ($null -ne $v) { $sv += $v } }
}
$run = 0; $cums = @()
foreach ($s in $sv) { $run += $s; $cums += $run }
Write-Output ('slot prices=' + $sv.Count + ' total=' + $run + ' cum(10)=' + $cums[9] + ' cum(16)=' + $cums[15] +
  ' cum(19)=' + $cums[18] + ' cum(21)=' + $cums[20] + ' last=' + $sv[-1])
# --- mastery lab + shatter, hard-coded from the page (5 and 9 rows)
$cmT = @('20d 20h 0m 0s','31d 6h 0m 0s','41d 16h 0m 0s','52d 2h 0m 0s','62d 12h 0m 0s','72d 22h 0m 0s','83d 8h 0m 0s','93d 18h 0m 0s','104d 4h 0m 0s')
$cmC = @(1.10,1.30,2.00,3.40,5.60,7.70,9.10,9.80,10.00)
$mins = @($cmT | ForEach-Object { Mins $_ })
$d = @(); for ($k = 1; $k -lt $mins.Count; $k++) { $d += ($mins[$k] - $mins[$k - 1]) }
Write-Output ('mastery lab times=' + ($mins -join ',') + ' diffs=' + ($d -join ',') +
  ' distinct diffs=' + (($d | Select-Object -Unique).Count))
Write-Output ('mastery lab coins sum=' + [Math]::Round(($cmC | Measure-Object -Sum).Sum, 4) + ' q')
$ssT = @('142d 14h 13m','191d 4h 53m','256d 10h 58m','359d 8h 9m','1y 158d 6h 15m')
$ssC = @(10.00, 87.00, 229.20, 547.36, 1190.00)
$ssM = @($ssT | ForEach-Object { Mins $_ })
$sd = @(); for ($k = 1; $k -lt $ssM.Count; $k++) { $sd += ($ssM[$k] - $ssM[$k - 1]) }
$cr = @(); for ($k = 1; $k -lt $ssC.Count; $k++) { $cr += [Math]::Round($ssC[$k] / $ssC[$k - 1], 4) }
Write-Output ('shatter times=' + ($ssM -join ',') + ' diffs=' + ($sd -join ','))
Write-Output ('shatter costs=' + ($ssC -join ',') + ' ratios=' + ($cr -join ',') +
  ' sum(T)=' + [Math]::Round(($ssC | Measure-Object -Sum).Sum, 2))
Write-Output ('shatter per-level sum=' + (($ssM | Measure-Object -Sum).Sum) + ' min = ' +
  [Math]::Round(($ssM | Measure-Object -Sum).Sum / 1440, 1) + ' d ; last=' + [Math]::Round($ssM[-1] / 1440, 1) + ' d')
Write-Output ('shatter 20% x n value law: 1..5 -> 20 40 60 80 100 (printed 20/40/60/80/100)')
