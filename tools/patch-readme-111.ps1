param()
# Iteration 111: T006 Rev 23 (census reconciliation) + T020 Rev 15 (the Range pair) in the ranked table.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$pairs = @(
  @{ pre = '| [T006]'; old = '(arith., Rev 22:';
     new = '(arith., Rev 23: the lab census has two consistent readings - mastery labs counted one-per-card give Card ' +
           'Research **21** lines / Sigma **198** and the whole census **169 lines / Sigma 4 792** instead of ' +
           '158 / 4 693), (arith., Rev 22:' },
  @{ pre = '| [T020]'; old = '(arith., Rev 14:';
     new = '(arith., Rev 15: the Range pair closed - workshop **79** levels of **30 + 0.5n** metres for **1.46 M** ' +
           'coins unlocked at **50** after Critical Factor, lab **T2 W30 / 80** levels of **1 + 0.02n** with L1 ' +
           '**30 coins / 0 s** and **Sigma 50 027 193**, card x lab so the printed maxima give **180.7 m**, and the ' +
           'usual x1.15 price fit misses the cap by **19 %**), (arith., Rev 14:' }
)
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  foreach ($p in $pairs) {
    if (-not $lines[$n].StartsWith($p.pre)) { continue }
    $f = $lines[$n] -split '\|'
    if ($f.Count -ne 8) { Write-Output ($p.pre + ' fields=' + $f.Count); exit 1 }
    $a = 0
    if ($f[5].Contains($p.old)) { $f[5] = $f[5] -replace ([regex]::Escape($p.old)), $p.new; $a++ }
    if ($a -ne 1) { Write-Output ($p.pre + ' anchor count=' + $a); exit 1 }
    $lines[$n] = ($f -join '|')
    $done++
  }
}
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('rows=' + $done + ' totalRows=' + $rows.Count + ' badRows=' + $bad +
  ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
