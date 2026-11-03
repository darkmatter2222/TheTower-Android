param()
# Appends the session-114 log entry (iteration 123) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 114 (iteration 123: the Main Research category is priced line by line and one line holds a fifth of the census)

## Asked

T006's priced census covered **72 of 169** lines, and the Main Research category was listed only with its caps (`Max Lv`
per line, 712 levels in total) - no coin or clock sums. One item: find a print that carries the per-level cost and time
columns for that category and price it end to end.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json` (the plain page URLs sit behind a
Cloudflare challenge for this client, the API does not). Pages used: `Lab Category/Main Research` (the 20-line name list
with caps), `Lab Upgrades` (slot ladder, rush ladder with the discount column, both Elite-Cell boost tables),
`Lab/Starting Cash`, `Workshop_Attack_Discount`, `Workshop_Defense_Discount`, `Workshop_Utility_Discount`,
`Lab/Labs Coin Discount`, `Lab/Enhancement Coin Discount`, `Lab/Game Speed`, `Lab/Buy Multiplier`, `Card_Presets`,
`More_Round_Stats`, `Target_Priority`, `Workshop_Respec`, `Daily_Missions`, `Workshop_Enhancement`. Each line page prints
its own `Level | Time | Cost | Value` table (some inline, some through a `{{:Lab/X}}` transclusion) and its own milestone
gate sentence. New script: `tools/main-research-family.ps1`.

## What was established

**1. Four lines share one 99-level column.** `Starting Cash` and the three `Workshop … Discount` lines print identical
costs and times cell for cell (L1 **30 / 0 m**, L2 **71 / 6 m**, L3 **178 / 16 m**, L98 **4 070 000 / 47 d 20 h 27 m**,
L99 **4 190 000 / 49 d 0 h 57 m**). Sum over the 99 cells = **111 695 939** coins and **2 080 765 min = 34 679.4 h =
1 444.98 d** per line, so the block costs **446 783 756** coins and **5 779.9 d** (15.82 y) of one slot. Their per-level
cost ratios decay monotonically from **2.37** (L1 to L2) via **1.37** (L9 to L10) to a flat **1.03** tail (L90-L98
average **1.030**) - the fifth (decaying-ratio) clock shape, now on a second ladder.

**2. One line carries a fifth of the entire priced census.** `Enhancement Coin Discount` (100 levels) sums to
**826.445 q** coins, against the census total of **4 039 q** ⇒ **20.46 %** in a single line, while the other twelve
priced lines of the same category add **0.005 q** between them. The line is also the census's cleanest:
price **1.00 B x 1.30^(n-1)** exactly (1.00 / 1.30 / 1.69 / 2.20 / 2.86 as printed) and time **1 555 x n min** exactly
(L1 `1d 1h 55m`, L100 `107d 23h 40m`), so its clock is 1 555 x 5 050 = **7 852 750 min = 5 453.3 d**. Per percentage
point of its 30 % cap: **27.548 q** and **181.8 d**.

**3. The 3-significant-figure print explains the small skew against Tower Hub.** `Labs Coin Discount` sums to
**472 509 506** coins on fandom and the Hub's exact integers for `Labs Speed` sum to **472 456 246** - Δ **53 260** =
**0.011 %**, and both clocks are **2 751 d** (the Hub's 237 689 238 s = 2 751.03 d). Same ladder, two print precisions,
so the two sources are consistent once the rounding is accounted for.

**4. The category's practical order falls out of the sums.** `Buy multiplier` is the cheapest complete line in the game:
**562 500** coins (**2 500 / 10 000 / 50 000 / 500 000**) and **89.8 h** for the whole x100 buy capability - with the
printed quirk that level 3 is `Max` and level 4 is `100` ("Max was added before x100"). Then the three workshop-discount
lines at **2 256 484 coins per pp**, then `Labs Coin Discount` at **15.91 M per pp** (and **171 759 coins per day** of
its own clock), then `Game Speed` as a fixed **1 714 800 coins / 45.33 d** bill for x2.0 to x5.0, and only then the
27.5 q-per-pp `Enhancement Coin Discount`. QoL one-level lines: `More Round Stats` **250 000 / 11 h 59 m**,
`Workshop Respec` **3 000 000 / 2 d 13 h 6 m** (and the respec itself costs **150 gems** per use), `Reroll Daily Mission`
**20 000 000 / 1 d 15 h 59 m**, `Workshop Enhancements` **5 B / 6 d 15 h 59 m**, `Target Priority` **1 001 000 000 /
14 399 min** for its two levels, `Presets` **3.5 x 10^(2n+3)** (350 000 to 35 T, x100 per level, one preset class each).
Category total: **826.45 q** over **14 055 d = 38.5 y** of one slot.

**5. A second source for the gates, with one skew.** The lab pages print their own gates - `Workshop Attack Discount`
**T1 W40**, `More Round Stats` **T1 W250**, `Workshop Respec` **T4 W30**, `Target Priority` **T4 W150** - all agreeing
with the per-tier table T019 uses. The Hub's block table, read with the column rule from iteration 120, puts
`Workshop Attack Discount` in the **second** tier's free column of the wave-40 row, i.e. T2 W40. Same one-column offset as
the `Nuke` / `Land Mine Stun` case, same single test: read the Tier 1 wave-40 cell of the **Milestones** screen.

**6. Two tables on `Lab Upgrades` that close by construction.** The five lab slots cost **Free / 100 / 400 / 1 400 /
3 000 = 4 900** gems (the printed total); the rush ladder's own day-rate column is exactly `gems / days-of-timer`
(**192 / 163 / 142.9 / 118.3 / 88.9 / 69.4**) and its discount column is `1 - rate/192` on all five rows
(**0 / 15 / 26 / 38 / 54 / 64 %**), with **>360 d = 25 000 flat** and **<1 min = 1 gem**, and prices "between the times
listed scale evenly" (piecewise-linear interpolation, so any timer is predictable from the six anchors). The Elite-Cell
boost tables re-add by two laws: each row scales **x8** from 1 h to 8 h and **x24** from 1 h to 24 h (8/8 rows), and the
40-row five-lab table is just the sum of the five single-lab 1-hour costs with day = hour x 24. Reading skipped time as
`(m - 1) x duration` gives **30 / 100 / 420 / 1 120 / 2 975 / 12 000 / 41 667 / 142 857** cells per skipped hour for
x1.5 to x8 - the page's own example (seven x1.5 one-hour boosts = 105 cells = 3.5 h vs one 2x = 100 cells = 1 h) is the
same law. Five slots at x1.5 = **75 cells/h = 1 800 cells/day**, which is exactly the printed daily cell income: the
x1.5-on-all-slots row is the budget-exact configuration, and the first row above income is x2 on one slot
(**160/h = 3 840/day**).

## Next open question

The four `Dissonant Echo - <category>` lines of the Main Research category (cap 20 each) still have no price table - the
`Dissonance` page prints the run mechanics but not those labs - so the category total above is 13 of 20 lines. Device
list unchanged: H062, H061, the 15 `Main Research` level-1 prices are now largely closed, then the mastery-lab line count.

## Verdict

**T006 Rev 27** (new section with the priced table and the five findings, three checklist items, two falsification notes,
one Sources bullet); INDEX and README rows bumped; the INDEX table row was collapsed back onto one line by
`tools/fix-index-row-123.ps1` (25 rows, all five pipes). **Next:** the four Dissonant Echo lab lines, or another fandom
lab category (Attack / Defense / Utility have the same per-line pages).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
