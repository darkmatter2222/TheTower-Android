param()
# Appends the session-131 log entry (iteration 140) and the H068 INDEX row. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)

# --- 1. the H068 row after the H067 row ---
$p = 'docs/INDEX.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$a = 'with **one Bonus level** (**x2.2**) as the control |'
$b = $a + "`r`n" +
  '| H068 | [Are Thunder stun and linger **50 %** or **25 %** effective against Bosses and Elites]' +
  '(hypotheses/H068-thunder-boss-effectivity.md) - the fandom prints **50 %** with a half-strength stun, Tower Hub prints ' +
  '**25 %** linger and **no stun** (v29.1.2); the rho table is unaffected because it is built from printed increments | ' +
  'watch a **Boss** wave with the bot on-field and note whether the boss **stops** (the stun survives) or only **slows**, ' +
  'then read the applied linger % (**10 %** vs **5 %** at level 0) |'
$c = ([regex]::Matches($txt, [regex]::Escape($a))).Count
if ($c -ne 1) { Write-Output ('INDEX anchor count=' + $c) } else {
  $txt = $txt.Replace($a, $b)
  [System.IO.File]::WriteAllText($p, $txt, $u8)
  Write-Output 'INDEX H068 row added'
}

# --- 2. the log entry ---
$p2 = 'docs/log/2026-11-03.md'
$txt2 = [System.IO.File]::ReadAllText($p2, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 131 (iteration 140: the Bot Plus block on one scale)

## Asked

Rev 10 ranked the **19 stat lines** but stopped at the bot panels: the five **Bot+** lines are a separate block (they are
bought after all five bots, cost **1 250 stones** each to unlock, and use a different price ladder). One item: put the Bot+
block on the same per-medal scale, find its par-optimal level plan, and decide whether the **stone** gate or the **medal**
gate binds for a sub-Tier-11 player.

## Sources

Three fandom pages re-fetched 2026-11-03 with their **full per-level columns**: `Flame Bot` (**Wild Fire**: prices
0 · 100 · 150 · … · 1050 against multipliers **x1.5 → x3.5** in **+0.1** steps, total **11 500**), `Thunder Bot`
(**Titan Shock**: **5 % → 25 %** in **+1 %** steps, total **11 500**; the four upgrade sections 20/15/20/15 against the
prose "each of the **3** Thunder bot upgrades"; "Stun and linger are **50 %** effective against Bosses and Elites"),
`Amplify Bot` (**Echoing Shot**: prices **100 · 300 · 500 · … · 1 700** for **3 → 12** bullets, total **8 100**; its four
stat lines with base/count/increment). Stone grid from T014 3.3, the 910-stone sync from T008. New script:
`tools/botplus-density.ps1`.

## What was established

**1. One law for all three ladders.** `price(n) = 100 + s(n-1)` with **s = 40** (stat lines), **s = 50** (Bot+ lines),
**s = 200** (Echoing Shot); `Sigma = 100L + s·L(L-1)/2` re-adds **17 500** (L25, s50), **11 500** (L20, s50), **8 100**
(L9, s200), **20 400** and **5 700** (s40) — the three closed forms banked in 1 and 1.4 are one formula. Because every
ladder starts at **100**, the first step of any line in the layer is **100/rho** regardless of slope.

**2. The top of the whole medal layer is Bot+.** With the printed ladders, `rho = base/increment` gives **Echoing Shot
rho = 3 → 33.33e-4** and **Titan Shock rho = 5 → 20.00e-4**, both ahead of the best stat line (Flame Damage, 16.00);
**Wild Fire rho = 15 → 6.67e-4**, and the two cell lines are **rho = 25 → 4.00e-4** like Flame's Cooldown. Wild Fire and
Titan Shock move from **derived** to **printed** in 1.4.

**3. The par-optimal Bot+ block**: Echoing Shot **9/9** (8 100), Titan Shock **20/20** (11 500), Wild Fire **19/20**
(10 450), Bonus Cells **15/25** (6 750), Maximum Power **15/20** (6 750) = **78 levels / 43 550 medals = 72.5 %** of the
capped **60 100**, `Sigma ln = 4.754`, **1.09e-4** per medal (**35.8 events** F2P / 20.2 boosted). The cell lines' stop
lands on **level 15 = 6 750** independently of the block table of 5, and the 25-level cell line is the worst block in the
layer: levels 16-25 are **10 750** medals for x1.25 = **0.21e-4**, under the cosmetic par.

**4. Where it enters the order.** Bot+ levels need all five bot unlocks (3 150 medals), and the fifth unlock is itself only
0.41e-4, so the pure density-greedy opens the block at **tap 332 (cum 140 230)** of the merged **445-tap / 212 660-medal**
plan (**175.0 events ~ 350 weeks** F2P, **98.5 / 197** boosted). Priced as a package, the fifth unlock plus the whole block
is `(0.0488 + 4.754)/(1 200 + 43 550) =` **1.07e-4**, above the rho = 40 uptime lines (0.60) and the cell lines (0.70) — so
the practical rule is: **finish the five unlocks (2.6 events in total), then take Echoing Shot 9 and Titan Shock 20 before
finishing the uptime lines**.

**5. The stone gate is not binding.** Five Bot+ unlocks = **6 250 stones** = **78.1 / 40.6 / 14.5 / 5.8 / 1.0 / 0.3** weeks
on the T014 bands **80 / 154 / 432 / 1 080 / 6 400 / 20 160** stones/week, while the **910-stone** GT+DW+BH sync needs
**0.8-11.4** of the same weeks ⇒ keep the UW sync first, Bot+ second. Bot+ **levels** cost medals, not stones.

## Verdict

**T015 Rev 11**: new **3.4** (the three-slope law, the 25-line ranking, the Bot+ block plan, the package density, the stone
gate), 1.4 statuses upgraded (Wild Fire and Titan Shock printed), 1.3 print notes (the "3 upgrades" prose vs four sections;
the 50 % vs 25 % boss-effectivity conflict), 3 checklist items, 3 falsification bullets, Rev line + 2 Sources bullets; new
**H068**. INDEX: T015 row bumped, H068 row, session-131 anchor; README T015 description + confidence cells.

## Next open question

Device list: **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068** (the new boss-effectivity read),
**H062**, **H061**. Paper candidates: (a) the **lab** layer on the same density scale — the ten bot labs are 25-level and
20-level coin ladders with the printed per-unit bills **7.2330e10** per -1 s and **3.3242e13** per +0.5 s, so their
per-medal analogue is a per-coin density that can be compared with the 930-Q assist layer of T006; (b) the Bot+ cell lines
against the **Elite Cell** income of 1 800/day (T006), i.e. whether the 15-level stop is still right once the cell flow is
converted back into coins.

'@
[System.IO.File]::WriteAllText($p2, ($txt2.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p2).Length)
