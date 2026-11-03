param()
# Appends the session-113 log entry (iteration 122) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 113 (iteration 122: the mastery layer gets a second source and closes at 32 rows)

## Asked

T012 had built the mastery layer from the Tower Hub per-card pages (**31** rows, 22 of them with a per-page stone price,
`27 500` stones, plus the 9-level shared lab at **50.00 q / 562.5 d**). The open questions were the missing ladder for
`Enhanced Ray` (the lab the `death-ray` card names but never tables) and whether the whole layer has one printed source.
One item: find a single page that prints the entire census and check it re-adds.

## Sources

fandom **`Card Masteries`** (fetched through `api.php?action=parse&prop=wikitext` - the plain page URL sits behind a
Cloudflare challenge for this client), pulled 2026-11-03. It carries: the gate sentence (“unlocks once you have claimed
the **Tier 16, Wave 100** milestone and have **30 cards at level 7** … Masteries cannot be bought during a round”),
“**Mastering all 32 cards costs 28,500 stones**”, the `Mastery lab costs` table (9 rows plus a printed totals row), and the
32-row `Card | Mastery | Effect | Stones | 0..9` block. The 0-column is the value right after the purchase, columns 1-9
are the lab levels. New script: `tools/mastery-census.ps1`.

## What was established

**1. The stones column closes exactly, and it is the same 28 500 the per-page pass reached.** The 32 printed prices are
**500 x2 + 750 x13 + 1 000 x14 + 1 250 x3 = 28 500**, delta **0** against the page's own total, and identical to T012's
**27 500** (31 rows) **+ 1 000** (`Cells`, the row the Hub pages do not list). Mean price **890.6 st** = **518 d** of
stone income (55/day) for the full layer.

**2. The mastery lab clock has a closed form; its price column does not.** The nine times are **500 / 750 / 1 000 /
1 250 / 1 500 / 1 750 / 2 000 / 2 250 / 2 500 h**, i.e. `t(n) = 250 x (n + 1)` h, summing to **13 500 h = 562.5 d**, which
is the printed `562d 12h`. The nine costs (1.10 q … 10.00 q) sum to exactly **50.00 q** but their ratios wander
(**1.182, 1.538, 1.700, 1.647, 1.375, 1.182, 1.077, 1.020**) - hand-set. So inside one ladder the *time* column is
extrapolable and the *cost* column is not, which is the cleanest statement yet of the lab-clock law. All **32** labs full
= **1 600 q** coins and **18 000 d = 49.3 y** of base clock, **4 832 d = 13.2 y** under the x3.725 speed stack.

**3. Linearity is settled at 31/32.** With the 32-row print, **31** rows are exactly linear with a clean step
(`step = (v9 - v0) / 9`, worst residual 0.0000); only `Ultimate Crit+` (0.3 → 3.3) needs the rounded-print reading
(step = 1/3 pp). So `v(k) = base + (k + 1) s` covers every printed mastery row and no mastery needs a device read.

**4. `Enhanced Ray` is finally printed - and it is the mastery lab itself.** **750 st**, **5 % to 50 %** in 5-pp steps,
effect “protectors and the enemies they shield take this share of max health when the ray touches them” ⇒ **150 st/pp**,
tied with `Radiation` for the cheapest pp-class row. The open “mastery-granted lab with no table” item is closed: the
`Enhanced Ray Mastery` line is the shared 9-level ladder carrying that 5…50 % column.

**5. Two ranking classes, not one.** The multiplier rows (`Coins+` 1 250 st x1.03→x1.30, `Cells+` 1 000 st x1.05→x1.32,
`Coin Orb` 750 st x1.04→x1.40, `Attack Speed+` 750 st x1.03→x1.30) cost **18 750 … 41 667 st per 0.01 x** and look
terrible per point while being the only compounding sources in the layer; the pp-class leaders are `Double Coins` and
`Spawn Accelerator` at **100 st/pp**, `Enhanced Ray` / `Radiation` **150**, `Elite Balance` **167** (more elites ⇒ more
cells), `Double Wave Skip` / `Slow Attack` / `Repel` **200**, `Elite Cannon` **250**, then `Elite Farming` **1 250 st/pp**
of module-reroll-shard chance and `Care Package` **2 500**. For a sub-T11 reader the practical order is: the four
multipliers first (they multiply every wave's coins and cells), then the 100-200 st/pp block.

**6. Gate rules worth UI time.** The layer needs **T16 W100 + 30 cards at L7** (two of the 32 may sit below L7), no
mastery can be bought during a run, and a mastery only applies **while its card is equipped** - so the equipped deck
governs which of the 28 500 stones are actually earning.

## Next open question

`AdvancedAnalysis` (the page this one points to for “in-depth analysis of masteries”) is table-free here, so the *per-pp*
ordering above is still the whole ranking. Device list unchanged: H062, H061, then the 15 `Main Research` level-1 prices.
One new device check added: whether the Lab panel really grows by one line per mastered card (32 lines on top of T006's
census), which is the only structural consequence of the mastery purchase.

## Verdict

**T012 Rev 9** (§2.3 item 10 added with the six findings, one §2.2 note updated, two checklist items, two falsification
notes, one Sources bullet); INDEX and README rows bumped (25 rows, 0 bad). **Next:** the mastery-lab line-count device
check, or the `Main Research` level-1 prices, or a new wiki surface (`wiki/guide/*` still has two table-free pages).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
