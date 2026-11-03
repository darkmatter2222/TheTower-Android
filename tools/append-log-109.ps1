param()
# Appends the session-100 log entry (iteration 109) to today's log.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-02.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-02 - Session 100 (iteration 109: the version timeline dates every printed number)

## Asked

The 28 `wiki/patch/*` pages were the largest uncited pool. Two questions: (a) does the version history **date** the
numbers this corpus quotes, so a panel disagreement can be classified as "build newer than the source" rather than a
conflict; and (b) do the patch notes *independently* confirm any number that currently has only one print?

## Sources

Tower Hub (all **Last verified 2026-07-29**): `wiki/patch/version-history` + `version-history-v0-{2,3,4-0,5,6,7,8,9,10,
11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28}` — all 28 fetched with `tools/fetch-hub.ps1` and read with
`tools/lineslice.ps1` / `tools/patch-intros.ps1` (new). Structural note: each page carries **one intro paragraph**; the
`Change list` section is an empty array in the streamed Next.js payload (`["Change list", …[ ] ,null]`), so there is no
itemised list to mine — the intros are the whole payload of facts.

## What was established

**A. A 27-row timeline is now in T005 (Rev 4)**, version → landed systems → the prints it dates. The tier map is the
skeleton: **T10 by v0.4.0 · T11 v0.8 · T12 v0.14 · T13 v0.18 · T14–15 v0.20 · T16–18 v0.24 · T19–21 v0.27**, and the
system map fills in the rest (perks v0.13 at Tier 3+, events + bots v0.15, milestones v0.18, daily missions v0.19,
relics v0.20, modules v0.22, elite enemies + enhancements v0.23, mastery + Keys v0.25, guilds + Guardians v0.26,
assist modules v0.27, Dissonance v0.28).

**B. Four numbers previously single-sourced now have a second, dated print:**
- `Defense %` cap = **98 %**, raised from 90 % **at v0.22** — the 98-vs-99 skew now has *two* prints behind 98 (the
  assist-lab page and the v0.22 note) against one legacy 99.
- **Milestone gates exist only from v0.18** (same release as Tier 13 and the Protector enemy) ⇒ every `T# W#` gate in
  this corpus is a post-v0.18 construct, which is why the gate tables are internally consistent across pages.
- **Elite Cells' function is printed** at v0.23: "speed up lab research" — the frame for the cells-vs-gems question.
- **Dissonance's 5× / 3× are hotfix values** (v0.28: shipped high, briefly **2×**, settled at 5× Attack/Defense/UW and
  3× Utility) — exactly T021's table, now with a version stamp.

**C. Two laws get provenance rather than being inferred:** the **time-weighted gem discount** on lab rushing (v0.17,
"longer research times discount the gem price significantly") is the origin of the cheap-hour arithmetic in T006/T021;
and the **7th card level** (v0.16) is why T012's mastery half-gate is expressed in *7 stars*.

**D. Derived number → H061.** Summing the three slot prints (16 at v0.14, +1 at v0.16, +2 at v0.23) gives a **19-slot**
active card cap — not printed anywhere, so it goes to `H061` with a one-tap settling read (count slot frames + read the
next two slot prices to extend T009's gem ladder past slot 10).

**E. Vintage check.** The last documented release is **v0.28**; this repo's APK is **29.1.3 (code 1253)**, so anything
introduced in 29.x is *undated* here — treat its rows as "present in the 2026-11-01 prints" rather than versioned.

## Next open question

The eight `guide/*` pages (`advancedanalysis`, `beginner-s-exploration-guide`, `common-abbreviations`,
`dissonant-runs-guide`, `frequently-asked-questions`, `guides-100-afk-orb-devo`, `guides-50s-smax`, `orbless-guide`) are
the remaining uncited pool; and `H061`'s slot count plus the price of slot 11. Device reads unchanged: **H060**,
**H050** residual, **H058**, **H059**, T010 §8 skews, T024 §6, Light Range past L14, `Swamp Rend - Additional Enemies`
6/9/11.

## Verdict

**T005 Rev 4 + H061.** Every numbered system in the corpus now carries the version that introduced it, four contested or
single-sourced values gained a second dated print, and the one derived quantity (19 card slots) is tracked as a
one-tap hypothesis. **Next:** the `guide/*` pool, then device reads.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
