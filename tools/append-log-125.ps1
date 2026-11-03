param()
# Appends the session-116 log entry (iteration 125) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 116 (iteration 125: the Defense Research category closes and one price column now holds seven lines)

## Asked

Rev 28 closed the Attack category and predicted that the shared 99-level column might repeat again. One item: price the
whole Defense Research category from the same per-line fandom tables and test whether the shared column recurs, whether
the value steps stay exact, and which currency binds the layer.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json`. Pages:
`Lab Category/Defense Research` (16 lines, caps 100/100/100/50/20/20/35/20/10/50/20/30/20/10/60/10) and
`Lab Category/Utility Research` (12 lines, used only to confirm the census count), then `Lab/Health`,
`Lab/Health Regen`, `Lab/Defense Absolute`, `Lab/Defense Percent`, `Lab/Orb Speed`, `Lab/Orb Boss Hit`,
`Lab/Land Mine Damage`, `Lab/Land Mine Decay`, `Lab/Shockwave Size` and the six `Wall Labs/<name>` pages (the wall labs
live under `Wall Labs/`, the orb labs under `Lab/Orb ...` singular - both found through `action=opensearch`). New script:
`tools/defense-research-family.ps1`.

## What was established

**1. The category totals 16 lines / 635 levels = 174 678.551 T coins over 15 050.9 d = 41.3 y.** Per line (coins / clock /
cap): `Health`, `Health Regen`, `Defense Absolute` (100 lv each) 116 005 939 / 1 495.22 d / x4.00; `Defense Percent` (50)
59 428 431 500 / 3 690.57 d / 10.00; `Orb Speed` (20) 3 712 537 770 / 101.51 d / 2.00; `Land Mine Damage` (20)
12 936 316 980 / 142.53 d / 200 %; `Land Mine Decay` (35) 266 556 316 980 / 1 582.39 d / 17.5; `Shockwave Size` (20)
12 937 873 980 / 206.47 d / 1.00; `Orb Boss Hit` (10) 76 950 000 000 / 32.69 d / 2.00 %; `Wall Health` (50) 745.04 B /
152.02 d / +100 %; `Wall Rebuild` (20) 193.9 B / 250.61 d / -200 s; `Wall Regen` (30) 3.540 84 T / 2 056.72 d / 300 %;
`Wall Thorns` (20) 2.265 71 T / 1 137.22 d / 20 %; `Wall Invincibility` (10) 5.383 72 T / 83.76 d / 10.0 s;
`Wall Fortification` (60) 174.665 99 T / 1 128.70 d / 1200 %; `Garlic Thorns` (10) 1.35 M / 25.45 d.

**2. The shared column recurs - seven census lines now sit on it.** `Health`, `Health Regen` and `Defense Absolute` print
L1 30 coins / 0 m and L99 4 190 000 / 49 d 0 h 57 m, plus the same level-100 cell 4 310 000 / 72 352 min, so each is
116 005 939 coins / 1 495.22 d, identical to `Damage`. Their value column is `1 + 0.03n` (cap 4.00) against `Damage`'s
`1 + 0.02n` (cap 3.00): at the same price the Defense trio pays **386 686 coins per +0.01** where `Damage` pays
**580 030**. Full ranking of the shared-column lines by coins per +0.01: `Range` 312 725 < `Critical Factor` 376 081 <
the trio 386 686 < `Attack Speed` 564 121 < `Damage Per Meter` 564 122 < `Damage` 580 030. So price is not the ordering
key - the printed step is.

**3. Prefix relation proved.** `Land Mine Decay` (35 levels) reproduces `Land Mine Damage` (20 levels) with **0 differing
cells** in both the cost and the time column; the 21-35 tail is 253.62 B coins / 2 073 401 min. One table prices both.

**4. Coin-twins with different clocks.** `Shockwave Size` vs `Land Mine Damage`: 15 of 20 cost cells differ by +1 557 000
coins in total (0.012 %), all 20 time cells differ by +92 076 min, clock ratio **1.449**. Two lines with the same price
and half-again the waiting time - the clearest case yet for reading the two columns separately.

**5. Two clock shapes confirmed inside one category.** `Wall Regen`: consecutive-time ratios are exactly **1.1500** on 18
straight steps (L12-L30) after an eleven-level head (1 666 to 28 278 min) - the family clock law with a head/tail split.
`Wall Fortification`: ratios decay 1.054 to 1.042 over L41-L60 (decaying-ratio shape).

**6. The arithmetic-price family has four members now**: `Max Rend Armor Multiplier` (+40 B), `Wall Regen` (5.1 to
7.63 B), `Wall Thorns` (8.1 to 10.18 B), `Wall Invincibility` (51 to 55.77 B). Their last cell costs 1.1x to 2.6x their
first, against 139 667x for the shared ladder (4 190 000 / 30). Practical rule that falls out: finish the arithmetic
lines to their caps, stop the geometric lines near level 80.

**7. One line carries the layer.** `Wall Fortification` = 174.666 T of the category's 174.679 T coins (**99.9928 %**) for
7.49 % of its clock; the other 15 lines together cost 12.562 T. The layer as a whole is **3.47 %** of the Appendix B coin
bill against **5.8 %** of its clock - the mirror image of the Attack layer (0.0005 % coins, clock-bound).

**8. Gates** printed on the lab pages: `Health` / `Health Regen` / `Defense Absolute` T1 W30, `Shockwave Size` T3 W50,
`Orb Speed` T3 W80, `Defense Percent` T5 W30, `Land Mine Damage` and `Land Mine Decay` T6 W30, `Orb Boss Hit` T6 W750,
`Wall Fortification` T14 W60 (the six wall-lab pages print no gate sentence).

**9. Appendix B now covers 111 of 169 lines (65.7 %) = 5.040 Q coins / 260 639.7 d of clock**, i.e. 7 200 d = 19.71 y of
coin income at 700 T/day and 713.6 y of single-slot clock (142.7 y on five slots, 38.3 y with the x3.725 stack). The T19
band's share moves to 32.3 % of coins / 27.0 % of clock. A parser note worth keeping: the wall tables write decimals with
a comma (`48,61B` = 48.61 B), so a naive comma-strip mis-scales those cells by 10x.

## Next open question

`Utility` (10 lines) and `Card` (18) should close the same way; `Utility` is where the coin-side lines live (`Cash Bonus`,
`Coins/Kill Bonus`, `Interest`), so pricing it converts three of T001/T002/T003's assumed income constants into printed
ladders. Device list unchanged: H062, H061, then the gate-cell reads (now 18 printed gate cells to compare against the
Milestones screen).

## Verdict

**T006 Rev 29** (new section with the 14-row table and eight findings, three checklist items, two falsification notes, one
Sources bullet; Appendix B row `J` + restated coverage, income units and band shares). INDEX and README rows bumped and
the INDEX row re-collapsed to one line (25 rows, all five pipes).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
