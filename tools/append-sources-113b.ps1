param()
# Appends the iteration-113 source bullet to T004 (the exploration guide's two currency prints).
$u8 = New-Object System.Text.UTF8Encoding($false)
$b = @'

- Tower Hub ``wiki/guide/beginner-s-exploration-guide`` (last verified **2026-07-29**) - the hands-off priority list,
  which prints **35 missions per week** for the weekly boxes (second source for 6's ladder), the four universal gem
  sinks (**lab slots, cards, card slots, modules**), the in-run gem sources (gems orbit the tower, plus an on-screen gem
  every **10-15 minutes** on the left edge), and the **150-gem** full Workshop respec available from **Tier 10-15**
  (distinct from the 300-gem medal respec of T009 and the 150-gem Guardian respec).
'@
$p = 'docs/techniques/T004-mission-farming-low-tier.md'
$t = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
[System.IO.File]::WriteAllText($p, $t.TrimEnd() + "`r`n" + ($b -replace "`r?`n", "`r`n"), $u8)
Write-Output ('bytes=' + (Get-Item $p).Length)
