param()
# Iteration 130: prepends the Rev 34 clause (T006), adds the H064 row and the session-121 anchor. ASCII-only literals.
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

$idxT6 = '**Verified (Rev 33**, arithmetic: the **Bot Research category closes on two shared columns**'
$idxT6New = '**Verified (Rev 34**, arithmetic: the **Battle Condition category and the two Boss lines close, and coins ' +
  'become the binding currency** - 7 lines / Sigma 130 levels = **2 307.577 5 Q** for **11 453.0 d**; the five BC labs ' +
  'alone are **99.72 %** of the priced coins (**Group 4 88.42 %** - doubling ladder 2 Q to 1024 Q, ratio **2.0000** on all ' +
  'nine steps) for only **1.83 %** of the clock; **four of the five BC time columns are exact multiples of the assist unit ' +
  '933 078 s = 15 551.3 min** (x1.25 / x1.50 / x1.00 / x1.65, four decimals) and the generic line uses **24 000 min = 400 h**' +
  '; costs mix arithmetic (**+0.2 Q** / **+0.5 Q** per level), the **x1.5** family law and exact doubling; `Boss Attack` = ' +
  '`Boss Health` cell for cell (0 differing cells) and their time column is the bot `* Cooldown` column **+ 1000 min** on all ' +
  '25 shared levels - one ladder for nine census lines; the Boss pair is the only in-band buy (**T9 W50**, **1.013 74 x 10^12** ' +
  'coins and **41.20 d** per -0.30 %); bill now **185/191 lines = 2 314.051 Q / 492 018.4 d = 96.9 %** and **coins bind over ' +
  'the clock (x6.72 single-slot)**), ' + $idxT6

$idxH63 = 'read the `Cells` mastery lab level 1 (**1.10 q** if it shares the ladder) |'
$idxH63New = $idxH63 + "`r`n" +
  '| H064 | [Is the max battle-condition reduction **58.5 %**, **80 pp** or **54.4 %**?](hypotheses/H064-battle-condition-reduction-ceiling.md) ' +
  '- the five lab pages print 20/20/20/10/10 pp but the model uses 0.21 %/0.51 % steps for Groups 1-2; the value-55 skip ' +
  '**x0.7492** and the **16/23** bracket floor both derive from 54.4 % | read one Group-1 lab''s value per level (**1 pp** ' +
  'vs **~0.21 pp**), then the total on the **Tournaments** condition panel with all five capped: **58.5** / **80** / **54.4** |'

$sessAnchor = '- [2026-11-03 - session 120 (T006 Rev 33, T015 Rev 7)](log/2026-11-03.md#2026-11-03---session-120-iteration-129-the-bot-category-closes-on-two-shared-columns)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 121 (T006 Rev 34)](log/2026-11-03.md#2026-11-03---session-121-iteration-130-the-bc-labs-close-the-census-and-coins-become-the-binding-currency)'

Patch 'docs/INDEX.md' @(
  $idxT6, $idxT6New, '1',
  $idxH63, $idxH63New, '1',
  $sessAnchor, $sessNew, '1'
)

$rdSum = '**3.235 5 q** for **6 605.8 d** |'
$rdSumNew = '**3.235 5 q** for **6 605.8 d** ; the **BC labs + Boss pair** add **2 307.577 5 Q** for **11 453.0 d** ' +
  '(**99.72 %** of the priced coins from five T18-T21 labs; four of their time columns are exact multiples of **933 078 s**, ' +
  'Group 4 doubles at **x2.0000**, and the Boss pair is the bot Cooldown ladder **+1000 min**) |'
$rdT6 = '**Verified** (arith., Rev 33: the Bot Research category'
$rdT6New = '**Verified** (arith., Rev 34: the Battle Condition category + Boss pair - **7 lines / 130 levels = 2 307.577 5 Q** ' +
  'for **11 453.0 d**, i.e. **99.72 %** of the priced coins for **1.83 %** of the clock; **Group 4 88.42 %** with a ' +
  '**x2.0000** doubling ladder 2 Q to 1024 Q, Group 3 the x1.5 law, Groups 1-2 arithmetic +0.2 Q / +0.5 Q; four of five time ' +
  'columns are exact multiples of the assist unit **933 078 s** (x1.25 / x1.50 / x1.00 / x1.65) and the generic line uses ' +
  '400 h; `Boss Attack` = `Boss Health` and = the bot Cooldown column **+1000 min** on 25/25 cells; bill **185/191 = ' +
  '2 314.051 Q / 492 018.4 d** and **coins bind x6.72**), ' + $rdT6

Patch 'README.md' @(
  $rdSum, $rdSumNew, '1',
  $rdT6, $rdT6New, '1'
)
