param()
# Appends the session-123 log entry (iteration 132) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 123 (iteration 132: the assist layer is Q and the module tail is pinned)

## Asked

Rev 35 closed the census but left three open numbers in the same family: the assist labs' unit letter (q or Q), the four
`Primary Module Bonus` labs (30 levels each, no price table found yet), and the top of the module slot ladder. One item:
pin the units and price the tail.

## Sources

fandom raw wikitext (2026-11-03): `Assist Module Labs` (one 30-row table, header `Cost (Q Coins)`, cells `0.25 ... 7.5`,
times `10d 19h 11m ... 323d 23h 30m`), `Modules` (the `Main Effect` prose: Ancestral stars x1.04 ... x1.20, the sub-stat
rarity chances 61.2/25/10/2.5/1/0.3 %, and the `Primary Module Bonus` labs "Tier 23 Wave 500 ... 1 % per level, up to
+30 %"), `Modules/Cost` (28 milestone rows L1 -> L300, cumulative `3 136 095` shards / `18.07s` coins),
`Currency/Power Stones` (income and price lists). New script: `tools/assist-primary-tail.ps1`.

## What was established

**1. The assist labs are Q, not q: 930.00 Q = 9.30 x 10^20 coins for the eight, 116.25 Q each** (closed forms 0.25 x 465
and 933 078 x 465 s = 433 881 270 s = 5 021.8 d). Corroboration: the same-tier `Battle Conditions Group 1` (T19 W100)
prints **0.2 Q** at level 1 against the assist labs' **0.25 Q** - one order-of-magnitude family; under the q reading the
T19 pair would sit 1000x apart for no printed reason.

**2. The time column is `n x 15 551 min` exactly.** L1 = 15 551 min, L10 = 155 510, L30 = 466 530 min = 323d 23h 30m
(all three re-add with no residual); that is **18 s per level below the Hub's 933 078 s** = 15 551.3 min, which is exactly
the 9-min gap at L30 between the two wikis. Both prints are kept; 15 551 min is also the unit the four BC Group columns
proved to be multiples of at Rev 34 (x1.25 / x1.50 / x1.00 / x1.65).

**3. The bill moves x1.403: 2 314.7693 Q -> 3 243.8393 Q** for the same **497 359.8 d** of clock ⇒ **coins 4 634 056 d =
12 687.4 y** at 700 T/day vs **1 361.7 y** single-slot (272.3 y five-slot) ⇒ **coins bind x9.32** single-slot, **x46.6**
five-slot. Layer shares: `P` (BC + Boss) 71.34 %, `C` (assist) 28.67 %, everything else < 0.1 %. The T19 band (`B2` + `C`)
returns as the second pole at **28.7 %** of the coins / **14.1 %** of the clock.

**4. The four `Primary Module Bonus` labs have no printed table** (the `Module Labs` tabber stops at the 12 named lines +
the assist page), so the tail is a hypothesis: if they share the assist ladder they are **4 x 116.25 Q = 465.00 Q** for
**4 x 5 021.8 d = 20 087.1 d** and +120 pp of primary effect; if they follow the x1.5 family law instead they are ~113.6 Q.
Logged as **H065** with the two-cell device read (L1 **0.25 Q** / `10d 19h 11m`, L2 **0.5 Q** / `21d 14h 22m`) and the
same-screen count that also settles H063.

**5. `s` = 10^21.** The slot table prints cumulative 804.46Q (L261), 5.79s (L281), 18.07s (L300) against per-level coins
106Q / 411Q / 886Q. Trapezoid sums of the two printed segments vs the cumulative deltas give deviations **104.4 % and
90.0 %** for s = 10^20, **3.6 % and 0.3 %** for **10^21**, **1004.4 % and 896.6 %** for 10^22 ⇒ the ladder is
`K M B T q Q s = 10^3 ... 10^21`.

**6. The slot ladder's shard column is piecewise-linear** - printed per-level column `7, 7, 20, 40, 75, 120, 180, 250,
350, 500, 700, 1000, 1300, 1800, 2500, 3000, 4000, 5000, 5125, 6250, 7500, 8750, 10000, 15000, 20000, 30000, 40000,
49500`, implied slopes 1.4 / 2 / 3.5 / 4.5 / 6 / 7 / 10 / 15 / 20 / 30 / 50 / 70 / 100 / 125 / 250 / 500 per level. The
top five segments' trapezoid sums match the printed cumulative deltas within **<= 1 %**; the early milestone gaps need the
full 300 rows (7-22 %), so the printed `Total Shard` column (**3 136 095** at L300) is authoritative.

**7. The stone ledger is now printed end to end** (`Currency/Power Stones`): income = weekly boxes 5/6/7 (**10 + 15 + 20 =
45 per week**, 2 340/y), **15 stones per medal trade**, tournament 1st place **20 / 40 / 80 / 180 / 300 / 375 / 475** by
league, plus milestones and paid packs; spend = masteries **500-1 250** each (**28 500** all - matches the T025 anchor),
assist slots **1 000** each, Bot+ **1 250** each, Synchronicity **1 500 + 3 x 1 500**; every purchase >= 100 stones shows
a confirmation dialog and stones are never refunded.

## Verdict

**T006 Rev 36** (unit correction + the time-law restatement in §The Assist Module Labs; findings 8-10 in §Module named
labs; Appendix B row `C` -> 930.00 Q and the Sigma row -> 3 243.8393 Q; the income paragraph re-derived (bind x9.32 /
x46.6); fact 2's shares 28.7 % / 14.1 %; 3 checklist items + 1 falsification note + 1 Sources bullet) + **T010 Rev 11**
(the stone ledger, the slot ladder to L300, the `s` = 10^21 pin, the `Cost (Q Coins)` note) + new **H065**. INDEX and
README rows bumped; validator clean after the log anchor.

## Next open question

Device list, in one pass: **H063** (mastery-lab count + the `Cells` ladder), **H065** (`Primary Module Bonus` level 1-2 +
the lab count), **H064** (BC ceiling 58.5 / 80 / 54.4 %), **H062**, **H061**, the `Bot Bot` / `Boss` gate prints, the
gate-cell reads, and the full 300-row slot ladder if the early segments are ever needed.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
