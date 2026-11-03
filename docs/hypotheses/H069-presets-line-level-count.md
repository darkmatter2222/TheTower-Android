# H069 — Is the Main-category presets line **5** levels (`Presets`) or **1** level (`Card Presets`)?

**Status:** open (device read needed) — **Opened:** 2026-11-03 (iteration 144) — **Affects:**
[T006](../techniques/T006-lab-queue-packing.md) §Main Research (the `Presets` row), §Appendix B layer `H`, and the
`H`/`M` order in §Four more layers on the value side.

## Claim

The two sources print the same Main-category line with two different level counts, and the category total only closes for
one of them:

| source (as printed in this repo) | what it prints |
|---|---|
| fandom `Lab/Presets` table (T006 §Main Research, Rev 27) | **5** levels, `Σ` **3.535 35 × 10¹³** coins, `833 min` at L1 |
| Tower Hub `Lab Category/Main Research` (the §cap table, Rev 10) | `Card Presets` **1**, and the category itemises to **15 lines / 712 levels** |

The arithmetic separates them. With `Presets` = 5 the 15 lines sum to **716** levels; with `Card Presets` = 1 they sum to
exactly **712**, which is what the category page prints; if both rows were live lines the category would be **16 lines /
717 levels**. So either the 5-level print is the same line read from a fuller page, or the category count is stale.

## Why it matters (it is small but it is the only rank that hangs on one cell)

Layer `H`'s value sum changes with that row alone:

| reading | `Σ ln` of layer `H` | density (5 slots) | order |
|---|---|---|---|
| `Presets` **5** levels (`ln 5 = 1.609 44`) | **38.390 5** | **0.011 422**/day | `H` > `M` |
| `Card Presets` **1** level (`ln = 0`) | **36.781 1** | **0.010 943**/day | `M` (0.011 315) > `H` |

Everything else in the doc is unaffected: the layer's **coins** barely move (the other fourteen lines total
**3.536 × 10¹³**, and `Enhancement Coin Discount` alone is **8.264 45 × 10¹⁷**), so the cost side of the ledger, the
census totals and the `E · D · F · sheet · L · Q` head of the schedule all stand.

## Readings to take (UI only)

1. Open the **Lab** screen, tap the **Main** category, and count the rows: **15** (one presets line) or **16** (a `Presets`
   and a `Card Presets` row). Read the presets row's **Max Lv**: **5** or **1**.
2. If the panel prints a category level total, compare it with **712** (the `Card Presets` = 1 reading) and **716**
   (the `Presets` = 5 reading).
3. Note the presets row's **price at its last level** — the fandom ladder runs five cells and its `Σ` is
   **3.535 35 × 10¹³**; a genuine 1-level line stops after its first cell, so its total is that first cell alone.

## What each outcome changes

- **1 level** → layer `H` = `Σ ln` **36.781 1**, density **0.010 943**, and the middle block becomes `M > H > K`; the
  §Main Research table's `Presets` row is re-labelled `Card Presets, 1` and the 5-level ladder belongs to another line.
- **5 levels** → as printed at Rev 40 (`Σ ln 38.3905`, `H > M`), and the §cap table's `Card Presets 1` / **712** is the
  stale one.
- **16 lines / 717 levels** → both rows are live: `Σ ln` returns to **38.390 5** (both terms count) but the layer gains a
  row, so layer `H`'s `Σ clock` and therefore its calendar days must be re-summed before its density can be quoted.

## Falsification

If the Main category shows neither **15** nor **16** lines, or the presets row's cap is neither **1** nor **5**, both
printings are stale for this build and layer `H` must be re-summed from the on-screen rows (the per-line `ln` list is in
§Four more layers on the value side, so only the presets term changes).
