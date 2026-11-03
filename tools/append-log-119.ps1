param()
# Appends the session-110 log entry (iteration 119) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 110 (iteration 119: the Recharge family shares one ladder and the save order is printed)

## Asked

Four labs are named `Recharge *` and all sit behind the same **T14 W60** milestone. Do they share their price and clock
ladders (so one printed table prices the whole family), and does the value column follow the same rule? Plus: what does the
Nuke page add that the card ledger did not already carry?

## Sources

`wiki/card/nuke` (last verified 2026-11-01, 1 data table) and `wiki/lab/second-wind-labs` (2026-11-01, 2 data tables), both
re-pulled 2026-11-03; the Smart Missiles page supplies the third line via T006 Appendix A.1. Per-level cells as printed:
costs **550.00B / 1.05T / 1.55T / 2.05T / 2.56T / 3.07T / 3.60T**, times **5d 5h 0m / 6d 14h 21m / 8d 0h 55m / 9d 23h 10m /
14d 1h 59m / 24d 19h 29m / 51d 8h 12m**. Value ladders: Second Wind **2 000 to 400**, Nuke **1 500 to 300**, Missile Barrage
**1 500 to 200**. Also from the Nuke page: star ladder **25/35/45/55/65/80/100 %**, mastery print **0.05 to 0.5 step 0.05**,
save order, v27.3 15-s note, "not projectiles", "only after used once". New script: `tools/recharge-family.ps1`.

## What was established

**1. Cost and time are cell-for-cell identical across the family (7/7 on both columns).** Every Recharge line therefore
costs **14.43 T** coins over **10 374 360 s = 120 d 1 h 46 m** of single-slot clock, re-added from the seven printed cells.
That corrects this repo's earlier **10 371 960 s** by 2 400 s (40 min of truncation in a quoted sum, not in a cell). The
three printed lines are **43.29 T / 360.22 d**; with `Recharge Demon Mode` at the family ladder, four saves for
**57.72 T / 480.29 d** - about one quarter-year of queue time each.

**2. Value is per-lab, and two of the ladders are one ladder at an offset:** `Nuke(k) = Second Wind(k + 1)` on **6/6**
steps with a new terminal **300**. `Missile Barrage` shares L1-L4 and departs at L5 (**550 vs 500**). So the family rule
covers price and clock only; the value column must still be read per lab.

**3. The clock, not the coins, is the cost at this gate.** Level 1 alone holds a slot **5 d 5h**; the whole line is
**120 d**. A Recharge line is **0.04 %** of one `L-IV` line (14.43 T vs **38.34 q**), so the family belongs in the
late-queue block of the packing order even though it is four separate saves.

**4. The save-order law is printed** (`wiki/card/nuke`, from the automation labs): on a lethal hit the saves fire
**`Death Defy` -> an `Energy Shield` charge -> `Second Wind` -> `Demon Mode` (needs its own automation lab) -> `Nuke`**.
Two mechanics details change what a save is worth: the automatic Nuke does **not** clear projectiles already in flight, and
since **v27.3 (18 December 2025)** `Smart Nuke Automation` also grants **15 s** of invulnerability; it re-fires after its
cooldown **only if** Nuke was used once that run. The Nuke page additionally prints the card's own star ladder
(**25/35/45/55/65/80/100 %** = +10 x4 then +15, +20, a non-arithmetic shape like the two §1 exceptions) and the mastery print
**0.05 -> 0.5 in steps of 0.05** - a different step from the same card's `x1.05 ... x2.00` mastery ladder, logged as
**H062** with a two-read test (delta **0.05** vs **0.10**, endpoint **1.50** vs **2.00**).

## Next open question

**H062** needs the device (two mastery reads on the Card Detail screen). Then the same screen can serve **H061** (count the
slot frames) and the cheapest lab gap: the 15 `Main Research` lines need **one** printed level-1 price each, because the
family law (cost x1.5, time x1.15) is already proven.

## Verdict

**T006 Rev 26** (Recharge-family block, corrected pair Sigma, Appendix B layer D 128.75 d, one checklist item, three
falsification notes, one Sources bullet) and **T012 Rev 7** (2.3 item 2 corrected, item 8 added, two checklist items, two
falsification notes, one Sources bullet); **H062** opened. INDEX rows for T006 / T012 bumped, H062 row added, both README
rows patched (25 rows, 0 bad). **Next:** device pass (H062, H061, Main-research level-1 prices), or the residual `guide`
slugs.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
