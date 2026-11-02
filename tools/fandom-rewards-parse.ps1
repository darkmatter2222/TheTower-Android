param([string]$File = 'C:\Users\ryans\.local\share\opencode\tool-output\tool_19db5c234001c2LiSgd6GuiSLG')
# Parses the seven per-rank reward tables out of the fandom "Tournaments" page text (one value per line).
# Prints, per league, the rank bands, the gem/stone/key columns, and the column sums (band widths applied).
$L = Get-Content $File
$names = 'Copper', 'Silver', 'Gold', 'Platinum', 'Champion', 'Legend', 'Mythic'
$heads = @()
for ($i = 0; $i -lt $L.Count; $i++) {
  foreach ($n in $names) { if ($L[$i] -eq ($n + ' Rewards[]')) { $heads += , @($n, $i) } }
}
for ($h = 0; $h -lt $heads.Count; $h++) {
  $start = $heads[$h][1]
  $end = if ($h -lt $heads.Count - 1) { $heads[$h + 1][1] - 1 } else { $L.Count - 1 }
  $vals = @()
  for ($i = $start + 1; $i -le $end; $i++) {
    $t = $L[$i].Trim()
    if ($t -eq '') { continue }
    if ($t -match '^(Rank|Gems|Stones|Keys|.*Rewards\[\])$') { continue }
    $vals += $t
  }
  # rows: label, gems, stones[, keys] -> label patterns are "1", "2", "3 - 4"
  $bands = @(); $g = @(); $s = @(); $k = @(); $w = @()
  $idx = 0
  while ($idx -lt $vals.Count) {
    $lab = $vals[$idx]
    if ($lab -notmatch '^\d+\s*(-\s*\d+)?$') { $idx++; continue }
    $wNum = if ($lab -match '^(\d+)\s*-\s*(\d+)$') { [int]$Matches[2] - [int]$Matches[1] + 1 } else { 1 }
    $bands += $lab; $w += $wNum
    $g += [int]$vals[$idx + 1]; $s += [int]$vals[$idx + 2]
    if ($h -ge 5) { $k += [int]$vals[$idx + 3]; $idx += 4 } else { $idx += 3 }
  }
  $sg = 0; $ss = 0; $sk = 0; $sw = 0
  for ($j = 0; $j -lt $bands.Count; $j++) {
    $sg += $g[$j] * $w[$j]; $ss += $s[$j] * $w[$j]; $sk += ($k[$j] * $w[$j]); $sw += $w[$j]
  }
  Write-Output ($heads[$h][0] + ' | bands ' + $bands.Count + ' | widthsum ' + $sw + ' | Sigma gems ' + $sg + ' | Sigma stones ' + $ss + ' | Sigma keys ' + $sk)
  Write-Output ('   gems   ' + ($g -join ', '))
  Write-Output ('   stones ' + ($s -join ', '))
  if ($h -ge 5) { Write-Output ('   keys   ' + ($k -join ', ')) }
  Write-Output ('   gems/stone at rank 1 = ' + ([math]::Round($g[0] / $s[0], 2)) + ' | 1st / last band gems = ' + ([math]::Round($g[0] / $g[$g.Count - 1], 2)) + 'x | mean gems ' + ([math]::Round($sg / $sw, 2)) + ' mean stones ' + ([math]::Round($ss / $sw, 2)) + ' mean keys ' + ([math]::Round($sk / $sw, 2)))
}
