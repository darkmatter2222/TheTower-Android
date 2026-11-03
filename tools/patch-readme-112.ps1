param()
# Iteration 112: T002 Rev 5 (stats-page attribution law + heat-up) and T003 Rev 4 (three printed gates) in the ranked table.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$pairs = @(
  @{ pre = '| [T002]'; old = '(arith., Rev 4)';
     new = '(arith., Rev 5: the stats-page rows are marginal credits P - P/m_i so they sum to P x (n - sum(1/m_i)) ' +
           '= **1.85x** on the printed 100-coin / x20 / x10 example and **4.71x** with five overlapping sources, and ' +
           'heat-up is **1.04^k** = 1.48 / 2.19 / 4.80 / 10.52 / 50.5 at k = 10 / 20 / 40 / 60 / 100), (arith., Rev 4)' },
  @{ pre = '| [T003]'; old = '(arith., Rev 3)';
     new = '(arith., Rev 4: three printed gates - the orb breakpoint at **T13 vs T14** (below T14 orbs instantly kill ' +
           'Basic / Fast / Tank / Ranged, not Protectors or shielded), the Wall gates at hundreds of billions per day ' +
           'plus three lab slots, and the -50 % / -50 % perk trade printed as **x2** effective health), (arith., Rev 3)' }
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
