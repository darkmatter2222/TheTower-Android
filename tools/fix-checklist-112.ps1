param()
# Moves T002's two Rev-5 checklist items from the orphan block (before the heading) into `## Reproduction checklist`.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/techniques/T002-run-phase-order.md'
$ls = [System.IO.File]::ReadAllLines($p, [System.Text.Encoding]::UTF8)
$i0 = -1; $i1 = -1; $anchor = -1
for ($n = 0; $n -lt $ls.Count; $n++) {
  if ($ls[$n].StartsWith('- [ ] **Rev 5 attribution:**')) { $i0 = $n }
  if ($ls[$n].Trim().StartsWith('(10 hits') -and $n -lt 220) { $i1 = $n }
  if ($ls[$n].Trim().StartsWith('- [ ] The Scatter chain costs')) { $anchor = $n }
}
Write-Output ('i0=' + $i0 + ' i1=' + $i1 + ' anchor=' + $anchor + ' lines=' + $ls.Count)
if ($i0 -lt 0 -or $i1 -lt $i0 -or $anchor -lt $i1) { exit 1 }
$block = @($ls[$i0..$i1] | ForEach-Object { $_ })
for ($k = 1; $k -lt $block.Count; $k++) { if ($block[$k].Trim().Length -gt 0) { $block[$k] = (' ' * 7) + $block[$k].Trim() } }
$out = New-Object System.Collections.Generic.List[string]
for ($n = 0; $n -lt $ls.Count; $n++) {
  if ($n -ge $i0 -and $n -le $i1) { continue }
  if ($n -eq ($i1 + 1) -and $ls[$n].Trim() -eq '') { continue }
  $out.Add($ls[$n])
  if ($n -eq $anchor) { foreach ($b in $block) { $out.Add($b) } }
}
[System.IO.File]::WriteAllText($p, (($out -join "`r`n") + "`r`n"), $u8)
Write-Output ('lines ' + $ls.Count + ' -> ' + $out.Count)
