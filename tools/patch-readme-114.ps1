param()
# Iteration 114: T012 Rev 6 in the ranked table.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$new = '(arith., Rev 6: one script re-adds the whole card/cards block - the **31 x 10** mastery cells are linear on ' +
       '**30** rows (worst residual **0.0000**, `Ultimate Crit` **0.0667** = the rounded 1/3 pp ladder), the shared ' +
       'mastery lab prints a **single 250 h difference** (=> 250n + 250) and its nine coin cells sum to **exactly ' +
       '50.00 q**, the slot ladder is triple-printed at **22 rows / Sigma 58 400** with new cumulative marks ' +
       '**15 900** at slot 16 and **32 400** at slot 19, and `Shatter Shards` closes at **Sigma 2 063.56 T** and ' +
       '**Sigma 1 473 d**), (arith., Rev 5:'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T012]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0
  if ($f[5].Contains('(arith., Rev 5:')) { $f[5] = $f[5] -replace ([regex]::Escape('(arith., Rev 5:')), $new; $a++ }
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
