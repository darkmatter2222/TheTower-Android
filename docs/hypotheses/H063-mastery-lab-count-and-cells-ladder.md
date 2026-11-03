# H063 — How many mastery labs does the Lab screen list, and does `Cells` break the shared ladder?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 127) · **Affects:**
[T006](../techniques/T006-lab-queue-packing.md) §Card Research + Appendix B (`M`) and the census denominator,
[T012](../techniques/T012-card-deck-order.md) §2.1/§2.3

## The two prints

| # | Source | What it prints | Consequence |
|---|---|---|---|
| **A** | fandom `Card Masteries` (pulled 2026-11-03) | **32** mastery rows, each with a 0-to-9 value ladder, and one shared `Mastery lab costs` table `1.10 q … 10.00 q` / `20d 20h … 104d 4h` with `Total 50.00q / 562d 12h`; "Mastering a card … unlocks a 9-level mastery lab for that card" | **32** mastery labs ⇒ Card category **41 lines / Σ 378**, census **189 lines**, mastery block **1.600 Q / 18 000 d** |
| **B** | the Tower Hub Card-research page used at T006 Rev 23 | the mastery row is one line, `Max Lv 9`, and the per-card mastery labs listed individually number **12** | Card category **21 lines / Σ 198**, census **169 lines**, mastery block **0.600 Q / 6 750 d** |

A third loose end: the Hub's `Card Masteries` text carries *"every card mastery lab **except Cells** shares the same lab
costs and research times"* (quoted at T012 §2.1), while the fandom page says *"Every mastery lab has the same cost and
time"* with no exception. So the 32-lab block's **1.600 Q** is exact only if `Cells` really does share the ladder.

## Readings to take

1. **Lab screen → `Card Research` category → count the rows.** **41** supports print A, **21** supports print B. The
   mastery labs are the rows named exactly like their card (`Damage`, `Attack Speed`, … ), each `Max Lv 9`.
2. **Open the `Cells` mastery lab** (needs `Cells` mastered: Cards screen → `Cells` → **Master**). Read level 1 and level
   9. If they are **1.10 q / 20 d 20 h** and **10.00 q / 104 d 4 h**, the shared table covers all 32 labs and the block is
   **1.600 Q**; any other pair means `Cells` has its own ladder and the block is **31 × 50 q + (Cells total)**.
3. **Count the mastery rows on the Cards screen** (each mastered card shows its mastery level): **32** rows are expected,
   and the stone ledger at T012 §2.3 already re-adds to the printed **28 500** with **32** rows.

## What each outcome changes

- **41 rows + `Cells` on the shared ladder** ⇒ Appendix B stands as printed at Rev 31: **159 / 189 lines = 6.466 Q /
  290 785.7 d**, and the mastery block is the census's largest single block (**24.7 %** of the priced coins).
- **21 rows** ⇒ the mastery block is **0.600 Q / 6 750 d**, the bill is **5.466 Q / 272 785.7 d**, coverage
  **139 / 169 = 82.2 %**, and the T19-band shares move back toward **30 %** of coins.
- **`Cells` off the shared ladder** ⇒ only the block total changes: subtract **50 q** and add that lab's own printed
  `Total`; every other figure in §Card Research is unaffected.

## Falsification

If the Lab screen's Card category shows a count that is neither **21** nor **41**, both readings are stale (a card was
added or a mastery lab removed) and the census denominator must be re-derived from the screen's own per-category counts.
