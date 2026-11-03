param()
# Iteration 118: patches the T006 and T025 ranked-table rows for Rev 25 / Rev 4. ASCII-only, flat pair array.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = 'before the two Q-scale singles'
$n1 = 'before the two Q-scale singles ; **Appendix B** sums the layers that are priced end to end - **72 / 169** census ' +
  'lines = **4.039 Q** coins and **104 035.3 d** of clock (**15.80 y** of coin income, **57.01 y** on five slots, ' +
  '**15.3 y** stacked), cells bind by **x4.33**, and the fourteen T19-band lines are **40.29 %** of the coins and ' +
  '**67.6 %** of the clock'

$o2 = '**Verified** (arith., Rev 24: the 39-table grand totals'
$n2 = '**Verified** (arith., Rev 25: the running bill of the priced lab layers - **72 / 169** lines = **4.039 Q** coins / ' +
  '**104 035.3 d** clock with **cells binding x4.33** and the T19 band at **40.29 % / 67.6 %**), (arith., Rev 24: the ' +
  '39-table grand totals'

$o3 = '**Verified** (arith., Rev 3: the 27-line + nine-page closure, the four stages, the fleet bill, the 52-week split ' +
  'and the UW lab layer **2.4111 Q / 18 165.95 d** with its two-tier law, `tools/ledger-year1.ps1` / `1b` / `1c` and ' +
  '`tools/lab-summit2.ps1`)'
$n3 = '**Verified** (arith., Rev 4: the 27-line + nine-page closure, the four stages, the fleet bill, the 52-week split, ' +
  'the UW lab layer **2.4111 Q / 18 165.95 d** and the whole priced lab census **4.039 Q / 104 035.3 d**, ' +
  '`tools/ledger-year1.ps1` / `1b` / `1c`, `tools/lab-summit2.ps1` and `tools/lab-summit-e.ps1`)'

$o4 = 'and **six** of its 39 lines carry **99.99 %** of that bill'
$n4 = 'and **six** of its 39 lines carry **99.99 %** of that bill ; the whole priced lab census is **4.039 Q** = ' +
  '**15.80 years** of coin income with **cells binding x4.33**'

$map = @($o1, $n1, $o2, $n2, $o3, $n3, $o4, $n4)
for ($i = 0; $i -lt $map.Length; $i += 2) {
  $c = ([regex]::Matches($txt, [regex]::Escape($map[$i]))).Count
  if ($c -ne 1) { Write-Output ('pair ' + ($i / 2 + 1) + ' count=' + $c); exit 1 }
  $txt = $txt.Replace($map[$i], $map[$i + 1])
}
[System.IO.File]::WriteAllText('README.md', $txt, $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('applied=4 rows=' + $rows.Count + ' badRows=' + $bad +
  ' strayE2=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count +
  ' appB=' + $chk.Contains('104 035.3 d') + ' rev4=' + $chk.Contains('arith., Rev 4:') +
  ' cellsBind=' + $chk.Contains('cells binding x4.33'))
