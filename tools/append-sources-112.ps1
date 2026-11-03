param()
# Appends the new source bullets to T002 and T003.
$u8 = New-Object System.Text.UTF8Encoding($false)
$b2 = @"

- Tower Hub ``wiki/guide/frequently-asked-questions`` (last verified **2026-07-29**, fandom cross-check 2025-11-19) — the
  v27 coin-attribution rule with its worked example (100 base, GT x20, BH x10 => 20 000 true; rows 19 000 + 18 000 =
  37 000), the negative ``(BH, GB, SL)`` display bug, and the **heat-up** law (**x1.04** per surviving hit).
"@
$b3 = @"

- Tower Hub ``wiki/guide/frequently-asked-questions`` (**2026-07-29**) — the Wall readiness conditions (income in the
  hundreds of billions per day, >= three lab slots, "costs trillions") and the heat-up law (**x1.04** per surviving hit).
  Tower Hub ``wiki/guide/guides-100-afk-orb-devo`` (**2026-11-01**) — the Tier 1-13 orb instant-kill set (Basic / Fast /
  Tank / Ranged, not Protectors or shielded), the Tier 14 ``Orb Resistance`` share-of-max-health change, and the Orb Devo
  vs Reverse Orb Devo hoard geometry. Tower Hub ``wiki/guide/strategies`` (**2026-07-29**) — the midgame order (Health
  first, Thorns and Orb Speed maxed, Shockwave, the four essential cards) and the **-50 % / -50 %** perk trade printed as
  x2 effective health.
"@
$p = 'docs/techniques/T002-run-phase-order.md'
$t = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
[System.IO.File]::WriteAllText($p, $t.TrimEnd() + "`r`n" + ($b2 -replace "`r?`n", "`r`n"), $u8)
$p = 'docs/techniques/T003-turtle-build-t1-t2.md'
$t = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
[System.IO.File]::WriteAllText($p, $t.TrimEnd() + "`r`n" + ($b3 -replace "`r?`n", "`r`n"), $u8)
Write-Output 'sources appended'
