param()
# Appends the session-105 log entry (iteration 114) to today's log.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 105 (iteration 114: the card layer is re-added by one script and the slot ladder closes at 22 rows)

## Asked

With `guide/*` closed, `tools/coverage.ps1` shows the other sections nearly exhausted (`card` 1 missing, `currency` 0,
`enemy` 1, `bot` / `uw` 0, `patch` 23 false negatives from the brace-range citation in T005). One item was worth a pass:
re-add the **whole** `wiki/card/cards` block with a single parser, and see whether that settles the card-slot question
(**H061**, which the corpus had derived as 19 from patch notes while T012 quoted a 22-row ladder).

## Sources

Tower Hub `wiki/card/cards` (last verified **2026-10-13**, “9 data tables”), fetched with `tools/fetch-hub.ps1` (cap 4 000)
and parsed by the new `tools/card-mastery.ps1` (suffix-aware number parser, per-row endpoint linearity test with worst
residual, stone-column tally, gem-ladder cumulative marks, minutes-from-`Yd h m` parser). Second prints used as before:
fandom and game-vault for the gem ladder, `wiki/card/card-masteries` for the same mastery block.

## What was established

**A. The slot ladder is settled on print (H061 partially resolved).** The page carries `Slot | Gem Cost` with exactly
**22 rows**: `1 = Free`, then **50 · 100 · 200 · 300 · 400 · 500 · 600 · 750 · 1 000 · 1 200 · 1 400 · 1 600 · 1 800 ·
2 500 · 3 500 · 4 500 · 5 500 · 6 500 · 7 500 · 8 500 · 10 000**. The script sums them to **58 400** and reproduces the
cumulative marks **3 900** (slot 10), **15 900** (16), **32 400** (19), **48 400** (21) — the last two are new to the
corpus, and the tail is `1 200 … 10 000`, not the guessed `1 250, 1 500, 2 000 …` in H061. Consequence for T009: the gem
ladder past slot 10 is now tabulated, not extrapolated. The **active** count in the panel is still a one-tap read, and the
patch-note arithmetic (**16** at v0.14, **+1** v0.16, **+2** v0.23 = 19) cannot both be complete alongside a 22-row price
table — either three prices exist ahead of grants, or v0.24 → v0.28 raised the cap silently.

**B. The mastery block re-adds independently (T012 Rev 6, §2.1 + checklist).** The 31 × 10 grid was fitted row by row from
its own endpoints: **30 rows are exactly linear (worst residual 0.0000)** and the only break is **`Ultimate Crit`** at
**0.0667**, which is the rounded **⅓ pp** ladder (+0.3 / +0.7 / +1.0 / +1.3 / +1.7 …) — so §2.1’s “one break, and it is a
rounding artefact” now has a second print and a second derivation. Stone column: **Σ 27 500** on the buckets
**500 ×2 · 750 ×13 · 1 000 ×13 · 1 250 ×3** ✓ (the 1 250 tier is `Coins` / `Plasma Cannon` / `Intro Sprint`).

**C. The shared mastery lab is a third `Time`-is-per-level witness.** Its nine times parse to
**30 000 · 45 000 · … · 150 000 min** with **exactly one distinct difference (15 000 min = 250 h)** ⇒ the printed
`250n + 250` law, Σ = 13 500 h = **562.5 d**; the nine coin cells sum to **exactly 50.00 q**, matching the page’s own
“about 50q coins and 562 days”. Cumulative reading would give 104 d, so the page’s prose again decides **H050**.

**D. Two small ladders closed.** `Shatter Shards` (T16 W40, 5 levels, value `+20 % × n`): **Σ 2 063.56 T** coins, Σ base
time **1 473 d**, price ratios **8.7 · 2.63 · 2.39 · 2.17** (decaying, so tabulate rather than fit). `Light Speed Shots`
stays the one-level **3 000 000 coins / 19 h 59 m** line. The page also prints the two base facts used across the card
docs: **20 gems per pull** and **7 stars** per card.

## Next open question

`card/nuke` is the only uncited `card` slug, and `enemy/brick-discriptions` the only uncited `enemy` one (prose-only) —
both marginal. The binding constraint is still the device: **H061** (active slot count vs the printed 22), **H058**
(1.885 vs 1.585 on the Coins card), **H060**, **H059**, **H057**, **H053–H056**, T010 §8 skews, T024 §6, and the 55-line
lock census from iteration 113. A second wiki pass would now mean the per-UW ability rows and the remaining `system/*`
chrome pages.

## Verdict

**T012 Rev 6** (plus H061 marked partially resolved). The card layer is now one-script re-addable end to end: 22-row slot
ladder **Σ 58 400** with four cumulative marks, 30/31 exactly-linear mastery rows, the mastery lab’s single **250 h**
difference and **50.00 q** total, and `Shatter Shards` at **2 063.56 T**. **Next:** the device reads, starting with the
Cards screen (slot frames + the next slot price) which also settles H058 in the same panel.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
