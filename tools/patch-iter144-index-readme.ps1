param()
# Iteration 144: INDEX (T006 Rev 40 + H069 + the session-135 anchor) and README (T006 cells). ASCII-only literals.
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
$a1 = '**Verified (Rev 39**, arithmetic: the **value side of the cheap layers**'
$b1 = '**Verified (Rev 40**, arithmetic: the **value side completed for eleven of eighteen rows** - `Sigma ln` adds ' +
  '**Q 27.3513 / J 42.5290 / H 38.3905 / K 20.0516** (densities **0.025603 / 0.014128 / 0.011422 / 0.009941** per day), so ' +
  'the schedule is **E D F sheet L Q par J H M K O G** and the **J/H/K** block is the only pp-convention-sensitive part ' +
  '(reading pp laws as 1+pp gives **Q 0.014562 > M 0.011315 > J 0.008155 > K 0.005625 > H 0.004099**); two one-line-deep ' +
  'layers: **Q**s four ban labs are **99.70 %** of the coins for **21.27 %** of the ln (**1 216x** per coin elsewhere) and ' +
  '**H**s `Enhancement Coin Discount` is **100 %** of the coins for **12.00 %** (**171 464x**); coverage **11 rows / 106 of ' +
  '197 lines / Sigma ln 193.565**; two print corrections: **Defense is 655 levels not 635**, and the presets row is ' +
  '**H069**, `tools/lab-value-layers-2.ps1`), ' + $a1

$a2 = '(the stun survives) or only **slows**, then read the applied linger % (**10 %** vs **5 %** at level 0) |'
$b2 = $a2 + "`r`n" +
  '| H069 | [Is the Main presets line **5** levels or **1**](hypotheses/H069-presets-line-level-count.md) - the category ' +
  'itemises to **712** levels only with the 1-level reading (**716** with the 5-level one), and that single row moves layer ' +
  'H**s** density from **0.011 422** to **0.010 943**, past **M** at **0.011 315** | count the **Main** rows on the **Lab** ' +
  'screen (**15** or **16**) and read the presets row**s** **Max Lv** (**5** or **1**) |'

$a3 = '- [2026-11-03 - session 134 (T006 Rev 39)](log/2026-11-03.md#2026-11-03---session-134-iteration-143-the-value-side-of-the-cheap-lab-layers)'
$b3 = $a3 + "`r`n" +
  '- [2026-11-03 - session 135 (T006 Rev 40)](log/2026-11-03.md#2026-11-03---session-135-iteration-144-four-more-lab-layers-priced-on-value)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1', $a3, $b3, '1' )

# ---------- README ----------
$c1 = '(Garlic Thorns **0.452/day**, 94x the par with the stack)'
$d1 = '(Garlic Thorns **0.452/day**, 94x the par with the stack); eleven of eighteen rows are now value-complete and the ' +
  'schedule reads **E D F sheet L Q par J H M K O G**'

$c2 = '**Verified** (arith., Rev 39: the **value side of the cheap layers**'
$d2 = '**Verified** (arith., Rev 40: the **value side completed for eleven of eighteen rows** - `Sigma ln` **27.3513 / ' +
  '42.5290 / 38.3905 / 20.0516** for Q, J, H, K on top of the Rev 39 set, densities **0.025603 / 0.014128 / 0.011422 / ' +
  '0.009941** per day, schedule **E D F sheet L Q par J H M K O G**, **Q**s bans **99.70 %** of coins for **21.27 %** of ln, ' +
  '**H**s big line **100 %** for **12.00 %**, **11 rows / 106 lines / Sigma ln 193.565**, **Defense = 655 levels**, ' +
  '`tools/lab-value-layers-2.ps1`), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
