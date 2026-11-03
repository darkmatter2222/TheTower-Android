param()
# Creates docs/log/2026-11-03.md with the session-103 entry (iteration 112).
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$entry = @'
# 2026-11-03 - Session 103 (iteration 112: the FAQ prints the attribution law and the heat-up constant)

## Asked

The precise coverage check left nine unread `guide/*` pages, of which `frequently-asked-questions`, `strategies`,
`guides-100-afk-orb-devo`, `guides-50s-smax` and `advancedanalysis` looked like the holders of print-level numbers. Two
questions: does the FAQ page print a law for the stats page whose rows never add up, and do the numbered deck guides add
currency numbers at all?

## Sources

Tower Hub: `wiki/guide/frequently-asked-questions` (**2026-07-29**, cap 16 000 — the richest of the five),
`wiki/guide/strategies` (**2026-07-29**), `wiki/guide/guides-100-afk-orb-devo` (**2026-11-01**),
`wiki/guide/guides-50s-smax`, `wiki/guide/advancedanalysis` (caps 7 000). Fetched with `tools/fetch-hub.ps1`, segmented by
`tools/page-seg.ps1` and checked with `tools/dump-tables.ps1`. Arithmetic reproduced by `tools/heat-up.ps1`.

## What was established

**A. The stats page is a marginal-credit table, and the surplus is computable (T002 Rev 5).** Since **v27** each
per-source row credits a source with what it *added*: `credit(i) = P - P / m_i` with `P` the full product of all active
multipliers. The page's own example — base **100** coins, `Golden Tower x20`, `Black Hole x10`, all coins earned with both
active — gives a true total of **20 000**, rows **19 000** (GT) + **18 000** (BH) = **37 000**, i.e. **1.85x** the truth;
the closed form `n - sum(1/m_i)` = `2 - (1/20 + 1/10)` re-adds **1.85** cell for cell, so the law is not an approximation.
With the five sources the page names as overlapping (`Golden Tower, Black Hole, Spotlight, Death Wave, Golden Bot`) the
factor is `5 - sum(1/m_i)` ~ **4.71** at the printed caps. Practical consequence for the ledger work in T024: **never**
sum the rows against the total; read a row as `P x (1 - 1/m_i)`. Also printed: a **negative** `(BH, GB, SL)` row is a
known **display** bug with no effect on earned coins.

**B. Heat-up is one constant, `1.04` per surviving hit.** “Every time an enemy hits you or your Wall and survives, its
damage is multiplied by **1.04x**” ⇒ `1.04^k` = **1.48** (k=10) · **2.19** (20) · **3.24** (30) · **4.80** (40) · **10.52**
(60) · **50.5** (100), all reproduced in `tools/heat-up.ps1`. This is the printed explanation for the two classic
low-tier deaths (“I had enough absolute defense, why did I die?”) and it quantifies why thorns outrank Defense % below
Tier 11: thorns collapse `k` to 1–2, which caps the multiplier at **1.04**–**1.08** instead of double digits.

**C. Three printed gates for the turtle layer (T003 Rev 4).** ① The **Wall** is worth buying only once income is in the
**hundreds of billions of coins per day** and the account has at least **three lab slots**, and it “costs **trillions**”
before it pays — the first numeric Wall timing rule in the repo. ② The **orb breakpoint is Tier 13 / 14**: on **Tiers
1–13** orbs **instantly kill** `Basic` / `Fast` / `Tank` / `Ranged` (**not** `Protectors` or shielded) and book the
leftover health as orb damage; from **Tier 14** the `Orb Resistance` battle condition turns the instant kill into a
**share of max health** — the same T13/T14 seam T005 prints for battle conditions. The same page fixes the two hoard
geometries (Orb Devo gathers **on** the tower/wall, Reverse Orb Devo **outside** range), which is the second reason the
`Range` pair of T020 §1.13 is a build lever. ③ The midgame order from `guide/strategies`: **Health first** (“regardless of
how steep the cash and coin costs climb”), kills from **maxed Thorns** + **maxed Orb Speed** with **Shockwave** pushing
enemies into the orbs, the four essential cards `Health` · `Coins` · `Extra Defense` · `Free Upgrades`, `Slow Aura` and
`Range` as the strong extras, `Plasma Cannon` / `Energy Net` tuned so **one** thorns tick finishes a boss, and in perks the
requirement perks then Health then the **−50 % enemy damage / −50 % tower damage** trade printed as “effectively doubles
your health pool” (`1 / 0.5 = 2` ✓).

**D. Two pages are content-free for this repo.** `guides-50s-smax` and `advancedanalysis` carry no tables (the latter
delegates to external Google Docs), and `guides-100-afk-orb-devo` prints only the mechanics quoted above — its live detail
lives on Yugi Tower. `guide/{common-abbreviations, dissonant-runs-guide, beginner-s-exploration-guide, orbless-guide}`
remain unread.

## Next open question

The four remaining unread guide pages (`common-abbreviations`, `dissonant-runs-guide`, `beginner-s-exploration-guide`,
`orbless-guide`) — the dissonant-runs page is the one that could still print per-run **Soul/Dissonance** numbers relevant
to T016. Then the device-read queue, unchanged and still the binding constraint: **H061** (count Card slots, expect
**19**, plus the slot-11 price), **H060**, **H050** residual, **H058**, **H059**, T010 §8 skews, T024 §6, Light Range past
L14, `Swamp Rend - Additional Enemies` 6/9/11, the attack-discount gate T1 W40 vs T2 W40.

## Verdict

**T002 Rev 5 + T003 Rev 4.** The stats page now has a derived surplus law (one worked example re-added exactly, and a
closed form that predicts any run), heat-up is a single reproduced constant, and the Wall/orb/perk gates are printed
rather than inferred. **Next:** the last four `guide/*` pages, then the device reads.
'@
[System.IO.File]::WriteAllText($p, ($entry -replace "`r?`n", "`r`n"), $u8)
Write-Output ('bytes=' + (Get-Item $p).Length)
