param()
# Appends the session-118 log entry (iteration 127) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 118 (iteration 127: the Card category closes and 32 mastery labs enter the bill)

## Asked

Rev 30 left the Card category as the last large unpriced block. One item: price the unpriced Card lines from the per-line
fandom tables, settle how the mastery labs count toward the census, and see whether the Recharge family (started at Rev 26)
keeps absorbing lines.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json`. Pages: `Lab Category/Card Research`
(10 rows, mastery row `Max Lv 9`), `Lab/Double Death Ray`, `Lab/Extra Orb Adjuster`, `Lab/Extra Extra Orbs`,
`Lab/Energy Shield` (that is the *Energy Shield Extra Hit* line), `Lab/Recharge Demon Mode`, `Lab/Recharge Nuke`,
`Lab/Recharge Missile Barrage`, `Second Wind Labs/Recharge Second Wind`, `Second Wind Labs/Second Wind Blast`,
`Lab/Super Tower Bonus`, `Card Masteries`. Note the wall-style sub-prefixes again: the Second Wind labs live under
`Second Wind Labs/`, the others under `Lab/`. New script: `tools/card-research-family.ps1`.

## What was established

**1. The Recharge family now has four members.** `Recharge Second Wind`, `Recharge Demon Mode`, `Recharge Nuke` and
`Recharge Missile Barrage` print the same 7 costs (550 B, 1.05 T, 1.55 T, 2.05 T, 2.56 T, 3.07 T, 3.6 T) and the same 7
times (5d 4h 59m ... 51d 8h 11m): Sigma 14.430 T / 172 622 min = 119.88 d each, and the coin re-add is exact
(0.55+1.05+1.55+2.05+2.56+3.07+3.6 = 14.430). Only the value column separates them, so the buy order is: Second Wind
(2 000 -> 400 waves = 1 600 saved, 9.018 8e9 coins per 100 waves), Missile Barrage (1 500 -> 200, 1.11e10), Nuke and
Demon Mode (1 500 -> 300, 1.2025e10).

**2. `Super Tower Bonus` prints 30 levels now.** The 10-level prefix re-adds to 115.95 B / 22.19 d — the same numbers the
Rev 11 print recorded (115.94 B / 22.2 d), which proves the same table — and the full line is **12.304 T / 897.30 d** with
value law `1 + 0.03n` (1.03 ... 1.90), i.e. 1.367 1e11 coins per +0.01. Appendix B layer `G` is restated.

**3. The mastery labs are the census's largest block.** The wiki prints one shared 9-level ladder (`1.10 q ... 10.00 q`,
`20d 20h ... 104d 4h`, `Total 50.00q / 562d 12h`) and **32** mastered cards, so the block is **1.600 Q** coins over
**18 000 d** — 24.7 % of the priced bill's coins for 6.2 % of its clock. Both printed totals re-add exactly
(50.00 q; 13 500 h = 562.5 d), the times differ by a constant 250 h, and the coin increments are mirror-symmetric
(+0.20 +0.70 +1.40 +2.20 +2.10 +1.40 +0.70 +0.20 q). Per unit of printed value the mastery labs are the dearest thing in
the census (1.388 9e16 coins per unit on the `Damage` mastery, x1.4 -> x5).

**4. Two mastery-lab counts, two consistent censuses.** 32 labs (the wiki's current list) give Card = **41 lines /
Sigma 378** and a **189-line** census; the Rev 23 reading of 12 labs gives 21 lines / Sigma 198 and the **169**-line census
the docs have been using. Both re-add (`90 + 32 x 9 = 378` vs `99 - 9 + 12 x 9 = 198`), so this is a device-read question:
**H063**. Rev 31 uses the 32-lab reading.

**5. Stone-bucket reconciliation (T012 Rev 10).** `500 x2 + 750 x13 + 1 000 x13 + 1 250 x3 = 27 500` over 31 rows and
`500 x2 + 750 x13 + 1 000 x14 + 1 250 x3 = 28 500` over the current 32 rows — the extra card is `Area of Effect` at
1 000 stones, so the two T012 prints were both right for their own list.

**6. The cheap Card unlocks are pure clock.** `Extra Orb Adjuster` 1.5 M / 2.08 d, `Extra Extra Orbs` 925 M / 7.41 d (the
2nd orb alone is 900 M = 36x the first), `Energy Shield Extra Hit` 890 B / 43.98 d for two extra charges, `Double Death
Ray` 1.097 08 T / 892.30 d at 3.656 9e10 coins per pp. The three unlocks together are 0.92 B coins — under one printed
income second at 700 T/day.

**7. Bill after the pass.** Layers `L` (6 newly priced Card lines, 30.848 T / 1 185.5 d) and `M` (32 mastery labs,
1.600 Q / 18 000 d) plus the restated `G` give **159 / 189 lines = 6.466 Q / 290 785.7 d (84.1 %)**: 9 237 d = 25.29 y of
coin income at 700 T/day and 796.1 y of single-slot clock (159.2 y five-slot, 42.7 y with the x3.725 stack). T19-band
shares move to 25.2 % of coins / 24.2 % of clock. Under the 12-lab reading the same table reads 139 / 169 = 82.2 % and
5.466 Q.

## Next open question

`Perk` (9 lines, the `Perk Labs/` prefix), `Bot` (8), `Module` (6 non-assist lines), the 2 `Boss` lines and `Battle
Condition` (5) are all that remains of the 189-line census. Device list: H063 first (it decides the denominator), then
H062, H061, then the gate-cell reads.

## Verdict

**T006 Rev 31** (new §Card Research section with the 9-row table and eight findings, three checklist items, two
falsification notes, one Sources bullet; Appendix B rows `L`/`M`, `G` restated, Σ row, income units and the three facts
restated) + **T012 Rev 10** (stone-bucket reconciliation) + **H063** opened. INDEX and README rows bumped; validator clean
after the log anchor was added.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
