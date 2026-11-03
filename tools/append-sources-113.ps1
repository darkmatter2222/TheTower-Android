param()
# Appends the iteration-113 source bullets to T008, T020 and T021.
$u8 = New-Object System.Text.UTF8Encoding($false)
$b = @{}
$b['docs/techniques/T021-dissonant-runs-echo.md'] = @'

- Tower Hub ``wiki/guide/dissonant-runs-guide`` (last verified **2026-11-01**, "6 data tables") - the four printed
  exclusion lists (**17 / 17 / 12 / 9** lines), the per-variant module loadouts and respec rules, the printed run order
  (**Attack -> UW -> Health -> Utility**, started from the farming tier), the UW-disco numbers (max vs min range
  **~+2 000 waves**, damage **x4 vs x43.5**, **AD** at **3.8 / 6.5 / 10.5x** by rarity, **22** bounce targets, bullets
  past **1 000x** the mine output), and the card / module / perk rating matrices. Tower Hub
  ``wiki/guide/common-abbreviations`` - **DWEW**, **SMEW**, **WAWSIS**, **CTO**, **eHP**, and the module names behind the
  abbreviations (Astral Deliverance, Space Displacer, Project Funding, Magnetic Hook, Anti-Cube Portal, ...).
'@
$b['docs/techniques/T008-uw-sync-with-stones.md'] = @'

- Tower Hub ``wiki/guide/orbless-guide`` (last verified **2026-11-01**) - the acceptance numbers of the synced set used in
  §4.1: uptime **> 50 %** with a second Black Hole, **GT bonus >= 16x**, maxed ``BH Coins``, **BH size 44-48 m at 30 m
  range**, Spotlight **3 beams / >= 40 degrees / >= 20x** (**>= 60 degrees** for SL4), maxed ``SL Coins``, kills **>= 20x**
  faster inside the beam, ``Wall Regen`` **10** and ``Wall Thorns`` **11** with **SPB 25** and **Def % 23**, the
  ``Disable Ranged Enemies`` card, **CL <= 596x** with shock chance **>= 10**, **SLM >= 34x** with maxed Missile Amp and
  Radius, the **SH -> GComp** crossover near **60 %** uptime, ``Anticube Portal`` **+1 000 waves** at ancestral, and
  ``Target Priority 2`` = "In Spotlight".
'@
$b['docs/techniques/T020-workshop-coin-order.md'] = @'

- Tower Hub ``wiki/guide/common-abbreviations`` - the printed number-suffix table behind §6's notation key: ``K`` 10^3 …
  ``O`` 10^27, then ``N`` 10^30 · ``D`` 10^33 · ``aa`` 10^36 … ``av`` 10^99 (Undecillion … Duotrigintillion), each step
  **x1 000**.
'@
foreach ($p in $b.Keys) {
  $t = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
  [System.IO.File]::WriteAllText($p, $t.TrimEnd() + "`r`n" + ($b[$p] -replace "`r?`n", "`r`n"), $u8)
  Write-Output ($p + ' bytes=' + (Get-Item $p).Length)
}
