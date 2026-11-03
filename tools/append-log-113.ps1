param()
# Appends the session-104 log entry (iteration 113) to today's log.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 104 (iteration 113: the dissonant locks are enumerated and the orbless package gets its numbers)

## Asked

`tools/coverage.ps1` still reported nine unread `guide/*` slugs after iteration 112 (the loose bare-slug matcher had been
replaced by the per-section, brace-aware one). Which of them carry printed numbers, and can the Dissonant Run locks be
enumerated instead of paraphrased?

## Sources

Tower Hub: `wiki/guide/dissonant-runs-guide` (**2026-11-01**, “6 data tables”), `wiki/guide/orbless-guide`
(**2026-11-01**), `wiki/guide/common-abbreviations`, `wiki/guide/beginner-s-exploration-guide` (**2026-07-29**). Fetched
with `tools/fetch-hub.ps1` (cap 9 000, the dissonant page re-fetched at 9 500), tables via `tools/dump-tables.ps1`, prose
via `tools/page-seg.ps1`; helpers added this pass: `tools/linemap.ps1`, `tools/leadscan.ps1`, `tools/tail.ps1`,
`tools/row-cell.ps1`.

## What was established

**A. The four locks are now enumerated (T021 Rev 4, new §4.1).** The page prints the whole exclusion list per variant:
**Attack 17 · Defense 17 · Utility 12 · UW 9 = 55** stat lines (counted by hand from the printed rows, and the counts are
the reproduction targets). Two membership details matter for the ledger work: the **Utility** lock has **12** entries like
`lab/lab-category-utility-research`, but it is **not the same 12** — the lock list omits `Max Interest` and
`Package After Boss` and includes the three `Free … Upgrade` lines; the **UW** lock lists exactly the **nine stone UWs**,
with **Multiverse Nexus absent**. Also printed: the recommended order **Attack → UW → Health → Utility**, started **from
the tier you normally farm at**; the per-variant respec rules with the “write down the Wall Skip / Wall Skip+ bases first”
instruction; and the four module loadouts (DP on Cannon in every variant; SF+OA or OA+NMP on Armor; GC+SH / PH+SH /
PF+PH / PH+PF on Generator; PCol+HC or MH or PC+DC on Core), with the traps named (`SR` is a liability in the Health
lock, `BHD` is the only real trap in the Utility lock, **GComp is ruled out** there because the run has no Recovery
Packages). Four tested numbers from its UW-disco deep dive: max vs min **Range** ≈ **+2 000 waves** (with relative
damage **×4 vs ×43.5**), **AD** 4th-bounce **3.8 / 6.5 / 10.5×** at legendary / mythic / ancestral, the **bounce-target
ceiling 22**, and bullets passing **1 000×** the land-mine output once bounce chance nears 100 %.

**B. The orbless package is the sync ladder with printed acceptance values (T008 Rev 11, new §4.1).** Every line is a
panel read: **uptime > 50 %** with a **second Black Hole** and **GT bonus ≥ 16×**, **BH size 44–48 m at 30 m range**,
`Spotlight` **3 beams / ≥ 40° angle / ≥ 20× bonus** (≥ **60°** before taking SL4, because a 4th beam leaves gaps with no
BH inside), kills **≥ 20×** faster inside the beam, `Wall Regen` **10** + `Wall Thorns` **11** with **SPB 25** and
**Def % 23**, kill methods capped at **CL ≤ 596×** (shock chance ≥ 10) or **SLM ≥ 34×** with maxed Missile Amp and Radius,
the `Singularity Harness` → `Galaxy Compressor` crossover near **60 %** uptime, `Anticube Portal` **ancestral +1 000
waves**, the phase starting at **7 000+ waves**, `Target Priority 2` = “In Spotlight” (Closest “costs a significant chunk
of CPM”). Three of these are one-glance diagnostics: **uptime**, **SL angle**, **AD rarity**.

**C. The number ladder continues past `O` (T020 Rev 16).** `guide/common-abbreviations` prints the suffix table with
names: `N` **10³⁰** · `D` 10³³, then the **two-letter pairs** `aa` 10³⁶ … `av` 10⁹⁹, each step ×1 000 — so a deep-lab
cell such as **4.11ab** is 4.11 × 10³⁹ = 41 100 S. The same page is the key behind the module abbreviations used in
T010/T021 and the community shorthand (**DWEW**, **SMEW**, **WAWSIS**, **CTO**, **eHP**, **T(D)C**, **ePaths**).

**D. `guide` coverage is closed.** `tools/coverage.ps1 -Section guide` now reports **3** missing of 32, and all three are
accounted for: `advancedanalysis` and `guides-50s-smax` are table-free (they delegate to external Google Docs, judged in
iteration 112) and `beginner-s-exploration-guide` was read this pass — its two currency prints (**35** missions/week, the
**150-gem** Workshop respec at T10–15, the orbiting gems plus the **10–15 minute** on-screen gem) went into T004’s sources.

## Next open question

Device reads, unchanged and now the only way forward on the open items: **H061** (count Card slots, expect **19**, plus
the slot-11 price), **H060**, **H050** residual (three twins now: `Starting Cash`, the discount labs, `Range`), **H058**,
**H059**, T010 §8 skews, T024 §6, Light Range past L14, `Swamp Rend - Additional Enemies` 6/9/11, the attack-discount gate
T1 W40 vs T2 W40 — plus two new panel reads this pass enables: the **55-row** lock census (expect 17/17/12/9 `DISABLED`
lines) and the **orbless trio** (uptime, SL angle, AD rarity). Remaining wiki surface: `system/contributors` and the front
page (chrome), and the per-UW pages’ ability rows.

## Verdict

**T021 Rev 4 + T008 Rev 11 + T020 Rev 16** (T004 sourced). The Dissonant locks are now a 55-line enumerable census with
named loadouts, the synced set has a printed acceptance test, and the suffix ladder reaches 10⁹⁹. **Next:** the device
reads (H061 first), or the per-UW ability rows if another wiki pass is preferred.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
