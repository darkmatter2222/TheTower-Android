param()
# Appends the session-111 log entry (iteration 120) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 111 (iteration 120: the milestone page totals ledger closes four ways and the card gates are printed)

## Asked

T019 priced the milestone layer from the per-tier rows of the fandom wikitext. The Tower Hub page also carries **Totals**
rows per 3-tier block plus a grand table, which had never been transcribed. One item: transcribe those rows, check whether
they re-add, and see what else the same table prints (the card gates behind H047).

## Sources

`wiki/guide/milestones` (last verified 2026-07-29, "10 data tables", 244 rows in the combined table), re-pulled 2026-11-03.
Eight blocks x three **Totals** rows (coins / gems / stones), six columns each in print order
`tA free | tA paid | tB free | tB paid | tC free | tC paid`, plus the grand table (`Coins - - 1.3q~`,
`Gems 19230 23955 43185`, `Stones 4430 7870 12300`). Income anchors 435 gems/day and 55 stones/day, 1 stone = 10 gems.
New script: `tools/milestone-totals.ps1`.

## What was established

**1. Three of the four columns close exactly, and the coins close to one decimal.** Free gems **19 230** (delta 0), free
stones **4 430** (delta 0), paid stones **7 870** (delta 0); the coin columns add to **1.34357 x 10^15 = 1.3436 q**
against the printed `1.3q~`. The grand table is internally consistent too (`19 230 + 23 955 = 43 185`, `4 430 + 7 870 =
12 300`).

**2. One skew, localised to a single block.** The paid-gem columns add to **29 495**, the grand row prints **23 955**; the
difference **5 540** is *exactly* the T19-21 paid gem cell (`1 390 + 1 820 + 2 330`), so the grand row omits one of its own
eight blocks. The block-basis **29 495** is within **20** of fandom's premium total **29 515** (which the per-tier rows
re-add), so the premium layer is ~29.5 k and **23 955 is the stale print** - the opposite of what T019 Rev 3 assumed.

**3. Coins are a rounding error before T13.** The 24-tier coin ledger is **98.6 %** the T22-24 block, **1.4 %** the
T13-T21 blocks; T1-T12 contribute **1.076 B = 0.08 %**. So below T13 the whole milestone layer is *gems + stones + lab
unlocks*, and the coin cells are worth one tap each and nothing more.

**4. The through-T12 window, on two bases.** Block basis: free **4 735** gems / **540** stones, paid **7 850** / **1 380**
(= 10.9 days of gem income and 9.8 days of stone income for the free track; both tracks = 12 585 gems + 1 920 stones =
**31 785 ge**). Per-tier basis: **4 675** free gems. The **60-gem** gap is one cell: `T4` free gems print **320** in the
per-tier table and **380** inside the block's Totals row. Stones and the whole premium column agree on both bases.

**5. The stone ladder saturates at T16.** T16-18 and T19-21 print the identical stone pair `1 000 free / 1 685 paid`,
so per 3-tier block the stone yield is flat from T16 on - the same knee shape T008 uses.

**6. H047 resolved: `Card: Land Mine Stun` = T7 W250, `Card: Nuke` = T11 W10.** The named cells place the card in the
wave-250 row's first column of the T7/T8/T9 block (odd column = that tier's free track) and `Nuke` in the T11 column of
the wave-10 row, so game-vault's "both at T11 W10" is a one-row offset and nothing in the sub-T11 plan changes. The same
table double-sources nine other gates (`Second Wind Blast` T3 W150, `Double Death Ray` T3 W300, `Super Tower Bonus`
T8 W300, `Recovery Package Chance` T2 W750, `Garlic Thorns` T2 W1000, `Death Wave Labs` T3 W250, `Enemy Attack Level Skip`
T11 W200, `Workshop Enhancement` T12 W60, `Area of Effect Card` T20 W80, `Card: UW Crit` T14 W50) - every one matching the
gate already used in T006 / T011 / T012 / T020. `Recharge Nuke` keeps a one-tier cell ambiguity (T14 vs T15 W60).

## Next open question

The `Death Ray` **card** is not a named cell in any of the 244 rows (only the `Double Death Ray` **lab** is), so its gate
("any tier, W250" vs "each of the first 10 tiers") is still open and is now the only remaining card-gate question. Device
list unchanged: H062, H061, then the 15 `Main Research` level-1 prices.

## Verdict

**T019 Rev 4** (new section 2.1 with the block ledger and the five findings, one Value-line and one section-2 note
updated, two checklist items, three falsification notes, one Sources bullet) and **T012 Rev 7** extended (milestones
double-source in Sources + a gate checklist item and falsification note); **H047** marked resolved with its reasoning and
the surviving Death Ray question. INDEX rows for T019 / T012 / H047 bumped; README T019 + T012 rows patched (25 rows,
0 bad). **Next:** the Death Ray card gate (its own page), then the device pass.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
