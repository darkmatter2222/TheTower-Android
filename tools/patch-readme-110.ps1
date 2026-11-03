param()
# Iteration 110: T010 Rev 9 in the ranked table (the 73-row sub-stat census).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$old = '(arith., Rev 8:'
$new = '(arith., Rev 9: the four sub-stat tables parsed in full - **73 rows** (Cannon 17 / Armor 17 / Generator 13 / ' +
       'Core 26), start-rarity histogram **23/9/24/16/1** giving the cumulative pool **23/32/56/72/73**, **24** ' +
       'arithmetic rows, **7** shared ladders over 22 rows (**8/15/25/50/100/250** on five Core damage lines), ' +
       'reroll sensitivity **66.7 / 33.3 / 31.25 / 17.5**, and `Poison Swamp - Cooldown` as the only Rare-start ' +
       'cooldown), (arith., Rev 8:'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T010]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($a -ne 1) { Write-Output ('anchor count=' + $a); exit 1 }
  $lines[$n] = ($f -join '|')
  $done++
}
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('rows=' + $done + ' totalRows=' + $rows.Count + ' badRows=' + $bad +
  ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
