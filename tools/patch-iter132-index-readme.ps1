param()
# Iteration 132: prepends the Rev 36 (T006) / Rev 11 (T010) clauses, adds H065 and the session-123 anchor.
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

$idxT6 = '**Verified (Rev 35**, arithmetic: the **census closes at 100 % - the twelve named Module labs**'
$idxT6New = '**Verified (Rev 36**, arithmetic: the **assist layer is 930 Q not 930 q, and the module tail is pinned** - ' +
  'the page header prints `Cost (Q Coins)`, so the 8 assist labs are **930.00 Q = 9.30 x 10^20** coins (one lab **116.25 Q**), ' +
  'corroborated by the same-tier `Battle Conditions Group 1` printing **0.2 Q** at level 1; its time cells re-add exactly ' +
  'on **n x 15 551 min** (L30 = 466 530 min = 323d 23h 30m), 18 s/level below the Hub** 933 078 s**; bill ' +
  '**2 314.7693 Q -> 3 243.8393 Q** (x1.403) so **coins bind x9.32** single-slot / **x46.6** five-slot and the T19 band ' +
  'returns as the second pole (**28.7 %** of coins); beyond the census the 4 `Primary Module Bonus` labs print **1 %/level ' +
  'to +30 % at T23 W500** = **465.00 Q / 20 087.1 d** if the assist ladder applies (**H065**), the unit ladder extends to ' +
  '**s = 10^21** (trapezoid dev **0.3 %** vs 104.4 / 1004.4 % at the neighbours) and the slot ladder prints **L300 = ' +
  '3 136 095 shards / 18.07 s** with slopes 1.4 to 500 per level), ' + $idxT6

$idxT10 = '| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | **Verified (Rev 10**, arithmetic:'
$idxT10New = '| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | ' +
  '**Verified (Rev 11**, arithmetic: the printed stone ledger - weekly boxes 5/6/7 = **10+15+20 = 45 stones/week** ' +
  '(2 340/y), medal trades **15** each, tournament 1st place **20/40/80/180/300/375/475** by league, masteries ' +
  '**500-1 250** each (**28 500** all), assist slots **1 000**, Bot+ **1 250**, Synchronicity **1 500 + 3 x 1 500**; the ' +
  'slot ladder to **L300 = 3 136 095 shards / 18.07 s** with the **s = 10^21** pin (trapezoid dev 0.3 %) and the assist ' +
  'header **Cost (Q Coins)** = 930.00 Q), ' + '**Verified (Rev 10**, arithmetic:'

$idxH64 = 'then the total on the **Tournaments** condition panel with all five capped: **58.5** / **80** / **54.4** |'
$idxH64New = $idxH64 + "`r`n" +
  '| H065 | [Do the four `Primary Module Bonus` labs share the assist ladder (**0.25 Q** / **15 551 min** per level)?](hypotheses/H065-primary-module-bonus-ladder.md) ' +
  '- the labs print **30 lv, +1 %/lv, T23 W500** but no cost table exists; if shared they are **465.00 Q / 20 087.1 d** ' +
  'beyond the census | read level 1 of `Primary Module Bonus (Cannon)` in the **Lab** screen (**0.25 Q** and `10d 19h 11m`) ' +
  'then level 2 (**0.5 Q**, `21d 14h 22m`), and count the labs (**4**?) |'

$sessAnchor = '- [2026-11-03 - session 122 (T006 Rev 35, T010 Rev 10)](log/2026-11-03.md#2026-11-03---session-122-iteration-131-the-named-module-labs-close-the-census-on-two-master-ladders)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 123 (T006 Rev 36, T010 Rev 11, H065)](log/2026-11-03.md#2026-11-03---session-123-iteration-132-the-assist-layer-is-q-and-the-module-tail-is-pinned)'

Patch 'docs/INDEX.md' @(
  $idxT6, $idxT6New, '1',
  $idxT10, $idxT10New, '1',
  $idxH64, $idxH64New, '1',
  $sessAnchor, $sessNew, '1'
)

$rdSum = '**x1 430** apart per +1.00 pp) |'
$rdSumNew = '**x1 430** apart per +1.00 pp) ; the assist labs are **930.00 Q** (the page prints `Cost (Q Coins)`), which ' +
  'lifts the bill to **3 243.8393 Q** and the coin bind to **x9.32**, and the unit ladder reaches **s = 10^21** (L300 of ' +
  'the slot ladder = 3 136 095 shards / 18.07 s) |'
$rdT6 = '**Verified** (arith., Rev 35: the twelve named Module labs'
$rdT6New = '**Verified** (arith., Rev 36: **unit correction + the module tail** - the assist page header is ' +
  '**`Cost (Q Coins)`** so the 8 labs are **930.00 Q** (one lab **116.25 Q**) against the same-tier BC Group 1 at **0.2 Q**; ' +
  'time cells re-add on **n x 15 551 min** (L30 = 466 530 min = 323d 23h 30m); bill **3 243.8393 Q / 497 359.8 d** => ' +
  '**coins bind x9.32** / x46.6 five-slot, T19 band **28.7 %**; the 4 `Primary Module Bonus` labs = **465.00 Q / ' +
  '20 087.1 d** if the ladder is shared (**H065**); **s = 10^21** pinned by the trapezoid test (dev **0.3 %**), slot ' +
  'ladder **L300 = 3 136 095 shards / 18.07 s**), ' + $rdT6
$rdT10 = '**Verified** (arith., Rev 10: the twelve named lab lines summed to'
$rdT10New = '**Verified** (arith., Rev 11: the printed stone ledger - **45 stones/week** from boxes 5/6/7, **15** per medal ' +
  'trade, tournament 1st place **20/40/80/180/300/375/475**, masteries **500-1 250** (28 500 all), assist slots 1 000, ' +
  'Bot+ 1 250, Synchronicity 1 500 x 4; the slot ladder to **L300 = 3 136 095 shards / 18.07 s** with **s = 10^21** ' +
  'pinned (trapezoid dev 0.3 %) and the assist header `Cost (Q Coins)` = 930.00 Q), ' + $rdT10

Patch 'README.md' @(
  $rdSum, $rdSumNew, '1',
  $rdT6, $rdT6New, '1',
  $rdT10, $rdT10New, '1'
)
