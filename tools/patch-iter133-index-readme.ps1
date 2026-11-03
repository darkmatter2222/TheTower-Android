param()
# Iteration 133: prepends the Rev 5 clauses for T004 (INDEX + README) and adds the session-124 anchor.
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

$idxT4 = '| T004 | [Farm daily missions at the lowest tier](techniques/T004-mission-farming-low-tier.md) | Coins, Gems, Shards, Stones, Medals, Tokens | **Verified (Rev 4**,'
$idxT4New = '| T004 | [Farm daily missions at the lowest tier](techniques/T004-mission-farming-low-tier.md) | Coins, Gems, Shards, Stones, Medals, Tokens | ' +
  '**Verified (Rev 5**, arithmetic: the **printed 32-row mission pool** - the `Needs` column is a pool-size ladder ' +
  '**5 (15.6 %) to 9 by T4 to 25 to 30 to 32** with the 16 Workshop rows alone being half of it; **15 arithmetic + 12 ' +
  'piecewise-two-step + 5 single-rung = 32 ladders, 27/27 pass the two-step shape law** over 17 distinct shapes; pay is ' +
  'fixed while work is not - **18 of 27** ladders span **>= x3** (top x5.00) and expected work is **1.50-3.00 x** the best ' +
  'case, which is the reroll number; the weekly rows are **milestone-gated** (stones T1 W60, medals T1 W70, tokens and ' +
  'contribution T3 W10) and reset **Monday 00:00 UTC**, the tournament tile only in the **00:00 UTC** Wed/Sat batch; ' +
  'fandom prints **T1 = 1 shard** where the Hub prints "-", reconciled by the module-unlock rule), ' + '**Verified (Rev 4**,'

$sessAnchor = '- [2026-11-03 - session 123 (T006 Rev 36, T010 Rev 11, H065)](log/2026-11-03.md#2026-11-03---session-123-iteration-132-the-assist-layer-is-q-and-the-module-tail-is-pinned)'
$sessNew = $sessAnchor + "`r`n" +
  '- [2026-11-03 - session 124 (T004 Rev 5)](log/2026-11-03.md#2026-11-03---session-124-iteration-133-the-mission-pool-is-printed-32-rows-17-ladder-shapes)'

Patch 'docs/INDEX.md' @(
  $idxT4, $idxT4New, '1',
  $sessAnchor, $sessNew, '1'
)

$rdT4 = '5 min | **Verified** (arith., Rev 4) | Tier 2 |'
$rdT4New = '5 min | **Verified** (arith., Rev 5: the printed **32-row mission pool** - pool-size ladder 5 (15.6 %) to 9 ' +
  'by T4 to 25 to 30 to **32** with the 16 Workshop rows = half the pool; shape law **15 arithmetic + 12 two-step + 5 ' +
  'single-rung, 27/27 pass** over 17 distinct shapes; pay fixed while work is not - **18 of 27** ladders span **>= x3** ' +
  '(top x5.00), expected work **1.50-3.00 x** the best case = the reroll number; boxes reset **Monday 00:00 UTC**; ' +
  'milestone gates stones **T1 W60** / medals **T1 W70** / tokens **T3 W10**; the Wed/Sat 00:00 UTC tournament tile; ' +
  '**T1 = 1 shard** reconciled), (arith., Rev 4) | Tier 2 |'

Patch 'README.md' @(
  $rdT4, $rdT4New, '1'
)
