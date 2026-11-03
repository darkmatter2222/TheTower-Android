param()
# Iteration 131: prepends the Rev 35 (T006) / Rev 10 (T010) clauses and adds the session-122 anchor. ASCII-only literals.
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

$idxT6 = '**Verified (Rev 34**, arithmetic: the **Battle Condition category and the two Boss lines close, and coins become the binding currency**'
$idxT6New = '**Verified (Rev 35**, arithmetic: the **census closes at 100 % - the twelve named Module labs** - **12 lines / ' +
  'Sigma 254 levels = 0.7183 Q** for **5 341.4 d** (254 re-adds to the Module census row exactly); **two master ladders ' +
  'carry all 18 ban levels** - an exact **x10.0000** cost ladder 50 B to 500 q and a time ladder whose differences are the ' +
  '**100-h arithmetic** series 30 000 to 66 000 min on a **24 000 min = 400 h** head - read as the subsequences ' +
  '`Cannon` = `Armor` = {2,4,6,7}, `Generator` = {3,5,7}, `Core` = {1,3,4,5,6,7,8} with one unpaired cell; `Cannon` = ' +
  '`Armor` 0/4 cells and the two Cost lines share their time column (0/30) while **18/30 cost cells differ (Sigma ' +
  '-11.53 B)**, the shard line cheaper; per point **1.9882 x 10^10** coins per +1.00 pp (Common) vs **2.8425 x 10^13** ' +
  '(Rare) = **x1 430**; the four ban labs are **99.70 %** of the layer; bill now **191/191 = 2 314.7693 Q / 497 359.8 d ' +
  '= 100 %**, coins bind **x6.65**), ' + $idxT6

$idxT10 = '| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | **Verified (Rev 9**, arithmetic:'
$idxT10New = '| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | ' +
  '**Verified (Rev 10**, arithmetic: the twelve named lab lines summed from the fandom tables - **Sigma 254 levels = 0.7183 Q ' +
  '/ 5 341.4 d**, the four ban labs 99.70 % of it on **two master ladders** (x10.0000 costs 50 B to 500 q; time differences ' +
  'the 100-h arithmetic series 30 000 to 66 000 min), `Cannon` = `Armor` 0/4 and the two Cost lines sharing one time column ' +
  'with 18/30 cost cells differing (**Sigma -11.53 B**, shard line cheaper), Common-vs-Rare drop chance **x1 430** apart per ' +
  '+1.00 pp, and the two print skews 2 200 410 000 vs 2 240 400 402 and 2.1 B vs 2.19 B logged), ' +
  '**Verified (Rev 9**, arithmetic:'

$sessAnchor = '- [2026-11-03 - session 121 (T006 Rev 34)](log/2026-11-03.md#2026-11-03---session-121-iteration-130-the-bc-labs-close-the-census-and-coins-become-the-binding-currency)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 122 (T006 Rev 35, T010 Rev 10)](log/2026-11-03.md#2026-11-03---session-122-iteration-131-the-named-module-labs-close-the-census-on-two-master-ladders)'

Patch 'docs/INDEX.md' @(
  $idxT6, $idxT6New, '1',
  $idxT10, $idxT10New, '1',
  $sessAnchor, $sessNew, '1'
)

$rdSum = '**+1000 min**) |'
$rdSumNew = '**+1000 min**) ; the **12 named Module labs** add **0.7183 Q** for **5 341.4 d** and close the census at ' +
  '**191/191 = 100 %** (the four ban labs are 99.70 % of the layer on one **x10.0000** cost ladder and one 100-h ' +
  'arithmetic time ladder; Common vs Rare drop chance is **x1 430** apart per +1.00 pp) |'
$rdT6 = '**Verified** (arith., Rev 34: the Battle Condition category + Boss pair'
$rdT6New = '**Verified** (arith., Rev 35: the twelve named Module labs - **12 lines / 254 levels = 0.7183 Q** for ' +
  '**5 341.4 d**, Sigma 254 re-adding to the Module census row; all 18 ban levels sit on **two master ladders** ' +
  '(costs **x10.0000** 50 B to 500 q; time differences the **100-h arithmetic** series 30 000 to 66 000 min on a 400-h ' +
  'head) as the subsequences {2,4,6,7} / {3,5,7} / {1,3,4,5,6,7,8}; `Cannon` = `Armor` 0/4 cells and the two Cost lines ' +
  'share one time column with 18/30 cost cells differing (Sigma **-11.53 B**); per point **1.9882 x 10^10** vs ' +
  '**2.8425 x 10^13** coins per +1.00 pp = **x1 430**; bill **191/191 = 2 314.7693 Q / 497 359.8 d**, coins bind **x6.65**), ' +
  $rdT6
$rdT10 = '**Verified** (arith., Rev 9: the four sub-stat tables parsed in full'
$rdT10New = '**Verified** (arith., Rev 10: the twelve named lab lines summed to **Sigma 254 levels = 0.7183 Q / 5 341.4 d**, ' +
  'the four ban labs on **two master ladders** (x10.0000 costs; 100-h arithmetic time differences), `Cannon` = `Armor` 0/4, ' +
  'the Cost pair sharing one time column with 18/30 prices differing (Sigma -11.53 B) and Common-vs-Rare **x1 430** per pp), ' +
  $rdT10

Patch 'README.md' @(
  $rdSum, $rdSumNew, '1',
  $rdT6, $rdT6New, '1',
  $rdT10, $rdT10New, '1'
)
