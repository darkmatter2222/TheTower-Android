param()
# Rewrites the Rev-5 checklist block of T002 with the file's 7-space continuation indent, as two clean items.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/techniques/T002-run-phase-order.md'
$ls = [System.IO.File]::ReadAllLines($p, [System.Text.Encoding]::UTF8)
$a = -1; $b = -1
for ($n = 0; $n -lt $ls.Count; $n++) {
  if ($ls[$n].StartsWith('- [ ] **Rev 5 attribution:**')) { $a = $n }
  if ($ls[$n].Trim().StartsWith('(10 hits') ) { $b = $n }
}
Write-Output ('a=' + $a + ' b=' + $b + ' lines=' + $ls.Count)
if ($a -lt 0 -or $b -le $a) { exit 1 }
$new = @(
  '- [ ] **Rev 5 attribution:** with **GT and BH both active** the stats page rows sum to **more** than the printed total',
  '       (with `x20 / x10` on a 100-coin wave: 19 000 + 18 000 vs 20 000); the factor is `n - sum(1/m_i)`, and a',
  '       **negative** `(BH, GB, SL)` row leaves the total unchanged.',
  '- [ ] **Rev 5 heat-up:** count the hits one juggling enemy takes before it dies and check its damage against **1.04^k**',
  '       (10 hits = **1.48x**, 20 = **2.19x**); raising thorns so it dies on hit 1-2 collapses the multiplier.'
)
$out = New-Object System.Collections.Generic.List[string]
for ($n = 0; $n -lt $ls.Count; $n++) {
  if ($n -eq $a) { foreach ($x in $new) { $out.Add($x) }; continue }
  if ($n -gt $a -and $n -le $b) { continue }
  $out.Add($ls[$n])
}
[System.IO.File]::WriteAllText($p, (($out -join "`r`n") + "`r`n"), $u8)
Write-Output ('now ' + $out.Count + ' lines')
