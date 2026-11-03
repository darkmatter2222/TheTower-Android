param()
# Iteration 128: prepends the Rev 32 (T006) clauses to INDEX/README and adds the session-119 anchor.
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

$idxAnchor = '**Verified (Rev 31**, arithmetic: the **Card Research category closes and the mastery block enters the bill**'
$idx32 = '**Verified (Rev 32**, arithmetic: the **Perk Research category closes** - 9 lines / Sigma 180 levels = ' +
  '**4.337 329 q** coins for **183 173.9 d** (0.07 % of the priced coins, 38.65 % of the clock), `Waves Required` the ' +
  'most clock-expensive single line in the census at **176 708.27 d** = 37.3 % of the bill with a stop-level knee between ' +
  '25 and 50 and tail ratios 1.0521/1.0361, `Ban Perks` a new **doubling** clock shape (ratio 2 with one break at level 4) ' +
  'on a decimal cost ladder 10 M to 1 q, two exact shared time cells (4d 23h 26m and 4d 15h 6m) while the two long ' +
  'ladders share a tail not a head (step ratios agree to 4 decimals from level 6), `Improve Trade-Off Perks` cheapest per ' +
  'point at **1.726 1 x 10^9** coins per +1 %, the eight level-1 buys = **1 901 800 000** coins for **21.22 d**; the ' +
  'priced bill is now **168/189 lines = 6.470 3 Q / 473 959.6 d = 88.9 %**), '

$sessAnchor = '- [2026-11-03 - session 118 (T006 Rev 31, T012 Rev 10, H063)](log/2026-11-03.md#2026-11-03---session-118-iteration-127-the-card-category-closes-and-32-mastery-labs-enter-the-bill)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 119 (T006 Rev 32)](log/2026-11-03.md#2026-11-03---session-119-iteration-128-the-perk-category-closes-as-a-clock-only-layer)'

Patch 'docs/INDEX.md' @(
  $idxAnchor, ($idx32 + $idxAnchor), '1',
  $sessAnchor, $sessNew, '1'
)

$rdSum = 'each = **1.600 Q / 18 000 d** |'
$rdSumNew = 'each = **1.600 Q / 18 000 d** ; the **Perk category closes** at 9 lines / 180 levels = **4.337 329 q** ' +
  'coins for **183 173.9 d** (0.07 % of the priced coins, 38.65 % of the clock), `Waves Required` alone at ' +
  '**176 708.27 d** = 37.3 % of the bill |'
$rdStat = '**Verified** (arith., Rev 31: the Card Research category'
$rdStatNew = '**Verified** (arith., Rev 32: the Perk Research category - 9 lines / 180 levels = **4.337 329 q** coins ' +
  'for **183 173.9 d** (0.07 % of the priced coins, 38.65 % of the clock), `Waves Required` the most clock-expensive ' +
  'single line in the census at **176 708.27 d** with a stop-level knee between 25 and 50 and tail ratios 1.0521/1.0361, ' +
  '`Ban Perks` a **doubling** clock shape (ratio 2, one break at level 4) on a decimal cost ladder 10 M to 1 q, two exact ' +
  'shared time cells (4d 23h 26m / 4d 15h 6m), `Improve Trade-Off Perks` cheapest per point at **1.726 1 x 10^9** coins ' +
  'per +1 %, the eight level-1 buys = **1 901 800 000** coins for **21.22 d**, bill now **168/189 lines = 6.470 3 Q / ' +
  '473 959.6 d = 88.9 %**), ' + $rdStat

Patch 'README.md' @(
  $rdSum, $rdSumNew, '1',
  $rdStat, $rdStatNew, '1'
)
