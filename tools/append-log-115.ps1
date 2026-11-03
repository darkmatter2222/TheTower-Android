param()
# Appends the session-106 log entry (iteration 115) to today's log.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$star = ([string][char]0x2605) * 4
$entry = @'


# 2026-11-03 - Session 106 (iteration 115: the years-to-max ledger turns the printed bills into one time axis)

## Asked

With the wiki surface exhausted (coverage: `card` 1 slug, `enemy` 1 prose page, `system` chrome), the open gap was
structural rather than textual: the bills live in one doc each and the income figures in another, so no single page tells
a sub-T11 player **how long** each sink takes. One item: build that page and make every number re-addable.

## Sources

Internal only - the bills are the printed `Total` rows / ladders already re-added in their own docs
(T008 **244 542** + **179 240**, T012 **58 400 / 51 200 / 27 500-28 500**, T010 **20 595 / 466 095 / 3 136 095 /
7.45 M / 18.07 s**, T017 **73 000** keys, T023 **1 555** bits and `Ally` **14 470**, T020 **12.374 S**, T009 the
**4 900** lab-slot ladder) and the income figures are T022 §1 (**360-435 gems/day**, ~**1 000 cells/day** at T5),
T004 §1 (weekly mission income at T10) and T014 §3.2 (stones/week by band). New helper: `tools/years-ledger.ps1`,
which prints every sum and division in the doc's checklist in order.

## What was established

**The ledger (`T025`, new).** Six rows carry a complete bill plus a payoff time, all reproduced:

| Row | Sum | Time |
|---|---|---|
| gem framework | `4 900 + 58 400 + 51 200 = 114 500` | **263.2 d** at 435/day, **318.1 d** at 360/day |
| stones | `244 542 + 179 240 + 28 500 = 452 282` | **108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 y** by band (the 910-sync alone: 11.4 / 5.9 / 2.1 / 0.84 / 0.14 / 0.05 weeks - the same six cells T014 prints) |
| module shards | slot **L50 = 20 595**, **L201 = 466 095**, **L300 = 3 136 095** | **14.0 / 5.8 weeks**, **6.1 / 2.5 y**, **41 / 16.9 y** (1 470 vs 3 570 shards/week) |
| Vault keys | **73 000** | **87.7 y** at 16/week, **56.2 y** at 25/week |
| Guardian bits | `14 470 / 1 555` | **9.31 seasons** |
| Elite Cells | five slots at x1.5 = **1 800/day**, one slot **360/day** | **1.8x** vs **0.36x** of a day's income |

Two derived conclusions worth the table: the **gem side closes in under a year** (263 d) while every **stone** sink is
league-bound, and the band ladder is **x252** on income (80 -> 20 160 stones/week), so promotion outranks any single stone
purchase. The enhancement layer's **12.374 S** coins is **4.84 x 10^7 years** at 700 T/day - which is the arithmetic
reason T020's knee rule is not a stylistic preference.

**Tooling lesson (encoding).** Non-ASCII literals inside a `.ps1` are decoded as ANSI by Windows PowerShell 5.1, so the
new README row's stars were written double-encoded (four U+00E2 sequences). Repair: build the literals from char codes
(`([string][char]0x2605) * 4`) and verify with a codepoint check - now `tools/cell-codepoints.ps1`, which asserts the
value cell of a row is exactly four U+2605 (`tools/fix-stars-115.ps1` did the repair). After it: README has **25** rows,
**0** bad rows, `moji=0`, and `validate-docs.ps1` reports **505 links, 0 missing, 0 badAnchors**.

## Next open question

Three ways to extend the ledger without a device: ① the **27-line workshop stone grand total** (T008 §3.1 lists all 27
per-line `Total` cells but they were never summed - the current 452 282 uses only the nine basic UW pages, so the real
stone bill is higher); ② the **lab census in coins** (T006 gives per-family bills but no grand total for the 169 lines);
③ the **module slot-level coin ladder** beyond L41 as a table of years per level band. All three are pure summations over
already-parsed tables. Device reads unchanged (**H061** first).

## Verdict

**T025 Rev 1 (new doc)**, indexed and in the ranked table. The corpus now has one page where every sink is priced against
the free income flow, with each number traceable to a printed `Total` and reproducible by one script. **Next:** sum the
27 workshop stone lines into the ledger (making 452 282 the *nine-page* subtotal rather than the stone bill).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
