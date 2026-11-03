param()
# Appends the session-101 log entry (iteration 110) to today's log.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-02.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-02 - Session 101 (iteration 110: the four sub-stat tables close at 73 rows)

## Asked

T010 §8.3 carried only the **Generator** (currency) table — 13 rows — because that is all an earlier pass had parsed.
`wiki/module/sub-module-effects` prints **four** tables. Do the Cannon / Armor / Core tables follow the same shape laws,
and does the full 73-cell census give laws the 13-row view could not see?

## Sources

Tower Hub `wiki/module/sub-module-effects` (fetched with `tools/fetch-hub.ps1` at cap 20 000, tables read by
`tools/dump-tables.ps1`); every row parsed and analysed by the new `tools/substat-census.ps1` (hard-codes the printed
cells, then computes the start-rarity histogram, arithmetic-row test per row, duplicate-ladder grouping, and the
Ancestral ÷ Common ratios). Cross-check: the fandom’s v0.24 row list, recovered from the Tower Hub patch page in
iteration 109.

## What was established

**A. The census closes at 73 rows:** Cannon **17**, Armor **17**, Generator **13**, Core **26** — all six rarity columns
printed (§8.7). The Generator table re-reads identical to §8.3 (a clean second pass over the same 13 rows ✓).

**B. The rarity-pool law (new).** Each row begins at exactly one rarity, and the histogram is
**Common 23 · Rare 9 · Epic 24 · Legendary 16 · Mythic 1** (Σ **73** ✓), so the number of *possible* sub-stats per module
rarity is cumulative: **23 / 32 / 56 / 72 / 73 / 73**. That is the §8.2 cap law turned into a counting rule — a Common
module has only 23 candidate sub-stats, a Legendary+ module 72 — and it is a one-tap check (count the `ℹ` list).

**C. Shape laws.** **24 of 73 rows are exactly arithmetic** (4 Cannon / 2 Armor / 7 Generator / 11 Core); the rest are
piecewise (`Attack Speed` +0.2 ×3 then +2 ×2; `Cash / Wave` +20/+50/+100/+300/+500). **Seven value vectors cover 22
rows**, including two new coincidences: the three `Free … Upgrade` rows share their ladder with **`Black Hole - Size`**
(2/4/6/8/10/12), and **`Super Crit Chance` = `Recovery Amount`** (3/5/7/10). The five Core damage rows remain one ladder
(8/15/25/50/100/250 ✓ already known).

**D. Reroll economics ranked.** Ancestral ÷ Common per row: `Defense Absolute` **66.7**, `Cash / Wave` **33.3**, Core
damage **31.25**, `Cash Bonus` **25**, `Coins / Wave` **17.5**, `Coins / Kill Bonus` and the Free-Upgrade trio **6**,
`Interest / Wave` + Level Skips **4**, `Package Chance` **3**, cooldowns **2–2.2**. Practical rule added: spend the
10–40-shard reroll on the **high-ratio** rows (Cash/Coins per Wave) and push module rarity, not on `Package Chance`.

**E. One cooldown escape hatch.** Every `−N s` row starts at Legendary **except `Poison Swamp - Cooldown`**, printed from
**Rare** (`−2/−4/−6/−8/−10`) — so below Tier 11 the only UW cooldown a module can carry is Poison Swamp’s, while T008’s
Golden Tower / Chrono Field cooldown targets need Legendary+ modules.

**F. Model migration, dated.** The fandom’s v0.24 list has 11 rows; four of them (Armor Penetration, Coin Drop Rate,
Kill Coins, Energy — plus a `Wave Skip` 2→50 that is today a *workshop* line) are absent from the 73-row print ⇒ the
fandom table is the **v0.24-era** model (see T005’s timeline). Where both exist they agree to the cell
(`Coin Bonus +10 % → +50 %` = `Cash Bonus` Common **0.1** → Legendary **0.5** ✓).

## Next open question

Whether the in-game panel’s own row count matches the payload (the Generator table prints **13** rows where an earlier
panel read claimed **17** — one screenshot of the `ℹ` list settles which is current), and the same 4-type check for the
**assist** sub-stats, whose printed caps (98 / 90 / 150 / 7 / 37) are the only numbers that layer currently has. Device
reads unchanged: **H061** (new), **H060**, **H050** residual, **H058**, **H059**, T010 §8 skews, T024 §6, Light Range past
L14, `Swamp Rend - Additional Enemies` 6/9/11.

## Verdict

**T010 Rev 9.** The module sub-stat layer is now a closed 73-row census with a counting law, an arithmetic-row count,
seven shared ladders, and a ranked reroll economics list — and the first row-level law that changes a beginner’s reroll
targets (lock the high-ratio currency rows). **Next:** the assist sub-stat table by type, then the `guide/*` pool.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
