param()
# Iteration 117: patches the T006 and T025 ranked-table rows for Rev 24 / Rev 3. ASCII-only, flat pair array.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = '(**x4.43**) so block 1 is the whole practical buy, and its **x1.30** lifts the card product **270 -> 351** (T012)'
$n1 = $o1 + ' ; **Appendix A.2** prices the whole 39-table UW lab layer - **Sigma = 2.4111 Q** coins and ' +
  '**18 165.95 d** of slot clock (**9.95 y** on five slots, **2.67 y** with the **x3.725** stack), closed three ways, ' +
  'with **six lines = 99.99 %** of the coins and `Inner Land Mine - Chrono Jump` alone at **51.74 %** => exhaust the ' +
  '**33** cheap lines (**289.2 T** = 0.41 d of income, cell-boost those) before the two Q-scale singles'

$o2 = '**Verified** (arith., Rev 23: the lab census has two consistent readings'
$n2 = '**Verified** (arith., Rev 24: the 39-table grand totals **2.4111 Q / 18 165.95 d** with the two-tier binding law ' +
  '(cells bind the 33 cheap lines by **x5 203**, coins the six by **x1.56**), (arith., Rev 23: the lab census has two ' +
  'consistent readings'

$o3 = '**Verified** (arith., Rev 2: the 27-line + nine-page closure, the four stages, the fleet bill and the 52-week split, ' +
  '`tools/ledger-year1.ps1` / `1b` / `1c`)'
$n3 = '**Verified** (arith., Rev 3: the 27-line + nine-page closure, the four stages, the fleet bill, the 52-week split ' +
  'and the UW lab layer **2.4111 Q / 18 165.95 d** with its two-tier law, `tools/ledger-year1.ps1` / `1b` / `1c` and ' +
  '`tools/lab-summit2.ps1`)'

$o4 = 'the enhancement layer **12.374 S** = **4.84 x 10^7 years**'
$n4 = $o4 + ' ; the UW lab layer is **2.4111 Q** coins (**9.43 y**) or **4.36 M** cells (**11.94 y**), and **six** of ' +
  'its 39 lines carry **99.99 %** of that bill'

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
  ' hasA2=' + $chk.Contains('closed three ways') + ' hasCellsBind=' + $chk.Contains('coins the six by **x1.56**') +
  ' hasSixLines=' + $chk.Contains('of that bill'))
