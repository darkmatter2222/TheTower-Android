param()
# Iteration 133 (part b): INDEX-only patch - T004 Rev 5 clause + the session-124 anchor.
$u8 = New-Object System.Text.UTF8Encoding($false)
$path = 'docs/INDEX.md'
$txt = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

$idxT4 = '| T004 | [Mission farming on low tier](techniques/T004-mission-farming-low-tier.md) | Gems, Coins, Shards, Medals, Tokens | **Verified (Rev 4**, arithmetic) |'
$idxT4New = '| T004 | [Mission farming on low tier](techniques/T004-mission-farming-low-tier.md) | Gems, Coins, Shards, Medals, Tokens | ' +
  '**Verified (Rev 5**, arithmetic: the **printed 32-row mission pool** - the `Needs` column is a pool-size ladder ' +
  '**5 (15.6 %) to 6 at T2 to 7 at T3 to 9 at T4 to 25 to 30 to 32** with the 16 Workshop rows alone being half of it; ' +
  'shape law **15 arithmetic + 12 two-step + 5 single-rung = 32 rows, 27/27 pass** over **17 distinct shapes**; pay is ' +
  'fixed while work is not - **18 of 27** ladders span **>= x3** (top x5.00) and expected work is **1.50-3.00 x** the best ' +
  'case, which is the reroll number; the weekly rows are **milestone-gated** (stones T1 W60, medals T1 W70, tokens and ' +
  'contribution T3 W10) and reset **Monday 00:00 UTC**, the tournament tile only in the **00:00 UTC** Wed/Sat batch; ' +
  '**T1 = 1 shard** reconciled against the Hub dash), **Verified (Rev 4**, arithmetic) |'

$sess123 = '- [2026-11-03 - session 123 (T006 Rev 36, T010 Rev 11, H065)](log/2026-11-03.md#2026-11-03---session-123-iteration-132-the-assist-layer-is-q-and-the-module-tail-is-pinned)'
$sessNew = $sess123 + "`r`n" +
  '- [2026-11-03 - session 124 (T004 Rev 5)](log/2026-11-03.md#2026-11-03---session-124-iteration-133-the-mission-pool-is-printed---32-rows-and-17-ladder-shapes)'

$flat = @($idxT4, $idxT4New, 1, $sess123, $sessNew, 1)
$n = 0
for ($i = 0; $i -lt $flat.Count; $i += 3) {
  $o = $flat[$i]; $w = $flat[$i + 1]; $expect = [int]$flat[$i + 2]
  $c = ([regex]::Matches($txt, [regex]::Escape($o))).Count
  if ($c -ne $expect) { Write-Output ($path + ' MISS[' + $i + '] [' + $o + '] count=' + $c + ' expect=' + $expect); return }
  $txt = $txt.Replace($o, $w); $n++
}
[System.IO.File]::WriteAllText($path, $txt, $u8)
Write-Output ($path + ' applied=' + $n)
