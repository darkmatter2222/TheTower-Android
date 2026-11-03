param()
# Iteration 149: INDEX (T006 Rev 43 + T008 Rev 13 + T025 Rev 8 + session-140 anchor) and README (three cells).
# ASCII-only literals. Run ONCE.
$u8 = New-Object System.Text.UTF8Encoding($false)

function Patch([string] $path, [string[]] $flat) {
  $txt = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
  $n = 0
  for ($i = 0; $i -lt $flat.Count; $i += 3) {
    $o = $flat[$i]; $w = $flat[$i + 1]; $expect = [int]$flat[$i + 2]
    $c = ([regex]::Matches($txt, [regex]::Escape($o))).Count
    if ($c -ne $expect) { Write-Output ($path + ' MISS[' + $i + '] [' + $o + '] count=' + $c + ' expect=' + $expect); return }
    $txt = $txt.Replace($o, $w); $n++
  }
  [System.IO.File]::WriteAllText($path, $txt, $u8)
  Write-Output ($path + ' applied=' + $n)
}

# ---------- INDEX ----------
$i1 = '**Verified (Rev 42**, arithmetic: **the four single-law blocks, 16 of 18 rows done**'
$b1 = '**Verified (Rev 43**, arithmetic: **the medal unit is fixed** - the printed **607.5 / 1 080** of T013 2.4 are PER ' +
  'WEEK (1 215 / 2 160 per 2-week event) = **86.786 / 154.286 per day**, so the 445-tap sheet costs **2 450.4 d = ' +
  '350.06 wks = 6.71 y** F2P (**1 378.4 d = 3.78 y** boosted) at density **0.007246/day** and the cosmetic par is ' +
  '**0.002565/day**; the medal-to-lab ratio falls **14.6x to 2.082x**; the merged head becomes **E > D > F > L > Q** with ' +
  'the sheet **12th** (R) / **9th** (P) of 18 and the par **16th** / **14th**; A is **above** par on both readings ' +
  '(**7.07x / 6.81x**), so the Rev 41 straddle was an artefact of the wrong unit; the joint plan is max(legs) = ' +
  '**2 450.4 d** bound by medals in all five states, and the core set without the sheet is **499.5 -> 392.3 -> 349.6 d**, ' +
  '`tools/medal-unit-fix.ps1), ' + $i1

$i2 = '**Verified (Rev 12**, arithmetic: **stones as the third resource of the day model**'
$b2 = '**Verified (Rev 13**, arithmetic: **the two medal rows of the merged schedule are restated** - sheet ' +
  '**0.007246/day** (**2 450.4 d**) and par **0.002565/day**, so the head shrinks from six items to five (**E D F quintet ' +
  'knee-pkg** then `L`) and the sheet and par land **18th / 24th** of 28; every stone figure stands (stage densities ' +
  '**0.041445 / 0.022090 / 0.012283 / 0.003272**, **328.0 vs 611.8 st/ln**) because the stone rows divide by the stone ' +
  'income), ' + $i2

$i3 = '**Verified (Rev 7**, arithmetic: **the whole sheet on one scale**'
$b3 = '**Verified (Rev 8**, arithmetic: **the weekly form and the corrected medal unit** - medals are **607.5/wk = ' +
  '86.786/day** so the sheet leg is **2 450.4 d = 6.71 y** F2P (**1 378.4 d** boosted, **2 197.2** with Fetch, ' +
  '**1 294.5** boosted plus Fetch); the core set without the sheet costs **499.5 -> 392.3 -> 349.6 d** and **263.2 d** ' +
  'from the Copper 13-15 band up where **gems** bind; the self-service weekly recipe is four divisions and one max ' +
  '(**37.6 / 49.9 / 56.0 / 350.06 wks** at the Copper bottom), the whole-census stone column reads **4 638.8 / 2 548.1 / ' +
  '1 798.3 / 854.2 / 384.1 / 69.6 / 22.3 weeks** by band, and the crossovers are **25.3 / 158.2 / 384.2 / 8 070.6** stones ' +
  'per week, `tools/weekly-plan-table.ps1), ' + $i3

$i4 = '- [2026-11-03 - session 139 (T025 Rev 7)](log/2026-11-03.md#2026-11-03---session-139-iteration-148-the-whole-sheet-on-one-scale-five-resources)'
$b4 = $i4 + "`r`n" +
  '- [2026-11-03 - session 140 (T006 Rev 43)](log/2026-11-03.md#2026-11-03---session-140-iteration-149-the-medal-unit-is-per-week-and-the-sheet-is-2450-days)'

Patch 'docs/INDEX.md' @( $i1, $b1, '1', $i2, $b2, '1', $i3, $b3, '1', $i4, $b4, '1' )

# ---------- README ----------
$r1 = '(arith., Rev 42: **16 of 18 rows value-complete**'
$d1 = '(arith., Rev 43: **the medal unit is per week** - 607.5/wk = **86.786/day**, so the bot sheet is **2 450.4 d = ' +
  '6.71 y** F2P (**1 378.4 d** boosted) at density **0.007246/day** and the par is **0.002565/day**; the merged head is ' +
  '**E > D > F > L > Q** (sheet 12th R / 9th P), the medal-to-lab ratio is **2.082x**, and the joint plan is max(legs) = ' +
  '**2 450.4 d** bound by medals), ' + $r1

$r2 = '(arith., Rev 12: **stones as the third resource**'
$d2 = '(arith., Rev 13: **the medal rows restated to the per-week unit** - sheet **0.007246/day** = **2 450.4 d**, par ' +
  '**0.002565/day**, the merged head shrinks to five items (**E D F quintet knee-pkg** then L) with the sheet **18th** and ' +
  'the par **24th** of 28 while every stone figure stands), ' + $r2

$r3 = '(arith., Rev 7: **one scale for nine currencies**'
$d3 = '(arith., Rev 8: **the weekly form** - four divisions and one max (**37.6 / 49.9 / 56.0 / 350.06 wks** at the ' +
  'Copper bottom); the sheet leg is **2 450.4 d = 6.71 y** F2P and **1 378.4 d** boosted; the core set without it is ' +
  '**499.5 -> 392.3 -> 349.6 d** (**263.2 d** from Copper 13-15 up, gem-bound); census in weeks **4 638.8 ... 22.3**; ' +
  'crossovers **25.3 / 158.2 / 384.2 / 8 070.6** st/wk), ' + $r3

Patch 'README.md' @( $r1, $d1, '1', $r2, $d2, '1', $r3, $d3, '1' )
