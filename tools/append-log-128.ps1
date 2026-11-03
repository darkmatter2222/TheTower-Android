param()
# Appends the session-119 log entry (iteration 128) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 119 (iteration 128: the Perk category closes as a clock-only layer)

## Asked

Rev 31 left four unpriced categories. One item: price the **Perk** category (9 lines, Sigma 180 levels) from the
`Perk Labs/<name>` pages, test whether its ladders share columns like the Recharge family did, and see what the category
does to the Appendix B bill.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json`. Nine pages, all under the
`Perk Labs/` prefix: `Unlock Perks`, `Waves Required`, `Auto Perk Pick` (= the *Auto Pick Perks* lab),
`Standard Perk Bonus`, `Perk Option Quantity`, `First Perk Choice`, `Ban Perks`, `Improve Trade-Off Perks`,
`Auto Pick Ranking`. Two page quirks worth recording: the cost columns are **not** formatted consistently (WR prints
`100K`/`190.2T`, SPB prints `100,000`/`238,880,000,000`, `Ban Perks` prints `10.00M`/`1.00q`), and `Auto Pick Ranking`
prints its last six times with a `y` unit (`1y 24d 20h` … `2y 37d 9h`), read here as 1 y = 365 d because that makes the
tail ratio sequence monotone (1.1621 … 1.1350). None of the nine pages prints a `Total` row, so all sums are ours.
New script: `tools/perk-research-family.ps1`.

## What was established

**1. The category is 9 lines / Sigma 180 levels = 4.337 329 q coins for 183 173.9 d** (501.5 y of single-slot clock),
which reconciles with the census row `Perk | 9 | 180` exactly: `100 + 25 + 32 + 10 + 8 + 2 + 1 + 1 + 1 = 180`.

**2. It is the first pure-clock layer.** 0.07 % of the bill's coins, **38.65 %** of its clock. Inside the category the
split is 74.6 % / 96.5 % because `Waves Required` alone carries 176 708.27 d — the **most clock-expensive single line in
the whole census**, 37.3 % of the priced bill and x9.8 the 32-lab mastery block. Boosted: 35 341.7 d five-slot, 9 487.7 d
with the x3.725 stack.

**3. `Waves Required` stop-level table** (Sigma through level k): 3 -> 1.26 M / 0.63 d; 5 -> 27.5 M / 1.89 d;
10 -> 2.42 B / 11.43 d; 25 -> 719.40 B / 364.13 d; 50 -> 49.015 T / 7 776.49 d; 100 -> 3.234 165 q / 176 708.27 d.
The knee is between 25 and 50 (level 25 costs 159.25 B, level 50 costs 5.1 T). Tail ratios settle at **1.0521** (cost)
and **1.0361** (time), so the tail is quasi-geometric, not the x1.15 of the named families: a fifth/sixth clock shape.

**4. `Ban Perks` = doubling clock on a decimal price ladder.** Times 3 333 / 6 666 / 13 333 / 29 999 / 60 000 / 120 000 /
239 999 / 480 000 min: ratio 2.0000 on six of seven steps, **2.25 at level 4** (the single break). Costs
10 M, 100 M, 1 B, 15 B, 100 B, 1 T, 100 T, 1 q (ratios 10, 10, 15, 6.67, 10, 100, 10), Sigma 1.101 116 11 q, of which the
last two levels are 1 100 T = 99.9 %. So ban slots 1-6 cost 1 116 B and slots 7-8 cost 1.1 q.

**5. Two exact shared time cells, no shared columns.** `Perk Option Quantity` L1 = `Auto Pick Perks` = 4d 23h 26m
(7 166 min, 0 differing cells); `First Perk Choice` = `Ban Perks` L2 = 4d 15h 6m (6 666 min, 0 differing cells). The two
long ladders are separate: SPB vs WR differ on 24/25 time cells and 18/25 cost cells, **but their step ratios agree to
four decimals from level 6** (2.4758/2.4765, 2.1568/2.1571, 1.9477/1.9478) — same exponential tail, different head.
`Auto Pick Ranking` is the third humped clock (1.1169 -> 1.3274 at L11 -> 1.1350).

**6. Beginner-relevant unit prices.** `Improve Trade-Off Perks` is the cheapest per point (1.726 1e9 coins and 4.19 d per
+1 %, all ten levels 17.26 B / 41.95 d, and its cost ladder *accelerates* 1.1360 -> 1.5232, so never stop early).
`Standard Perk Bonus` 4.316 6e10 per +1 %; `Auto Pick Ranking` 2.964 0e10 per ranked perk but 167.57 d each;
`Waves Required` 3.234 2e13 per -1 wave over the whole line but only 100 K for the first wave. The eight level-1 buys
total **1 901 800 000** coins and 30 560 min = 21.22 d, i.e. 2.7 seconds of printed income (700 T/day) — a sub-T11 player
is slot-bound, not coin-bound.

**7. Gates all below Tier 11**: T2 W250 (`First Perk Choice`), T2 W400 (`Improve Trade-Off`), T4 W50 (`Auto Pick Perks`),
T4 W80 (`Perk Option Quantity`), T5 W40 (`Ban Perks`), T6 W10 (`Auto Pick Ranking`), and `Unlock Perks`/`Waves Required`
print none. Only the deep `Waves Required` tail is out of the reader's tier band.

**8. Bill after the pass.** Appendix B row `N` (9 lines, 4.337 329 q / 183 173.9 d) moves the bill to
**168 / 189 lines = 6.470 3 Q / 473 959.6 d (88.9 %)**: 9 243 d = 25.31 y of coin income at 700 T/day, 1 297.6 y of
single-slot clock (259.5 y five-slot, 69.7 y stacked). T19-band shares now 25.2 % of coins / **14.8 %** of clock (the
clock denominator grew 63.1 %). On the 12-lab reading: 148 / 169 = 87.6 %, 5.470 3 Q / 455 959.6 d.

## Next open question

Three categories remain unpriced: `Bot` (8 lines), `Module` (6 non-assist lines), `Enemies` (the 2 `Boss` lines) and
`Battle Condition` (5 lines) = 21 of the 189. Device list unchanged: H063 first (it decides the denominator), then H062,
H061, then the gate-cell reads. One new device-readable detail: whether `Auto Pick Ranking` really caps at **32** ranked
perks (the wiki's 32-row table implies 32 ranks; the screen may print a higher cap).

## Verdict

**T006 Rev 32** — new section "The Perk Research category priced line by line" (9-row table, 7 findings, 3 checklist
items, 2 falsification notes, 1 Sources bullet); Appendix B row `N` + Sigma row, income units restated for the 168-line
bill, fact 1 coverage 88.9 %, fact 2 shares 25.2 % / 14.8 %, fact 3 extended with the layer-`N` split. INDEX and README
rows bumped.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
