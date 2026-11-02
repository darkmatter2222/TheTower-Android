# H033 — How many levels does a UW+ ability really have (10, or 13–15)?

Status: open · Raised: 2026-11-01

**Claim.** Each UW+ ability has **15 paid steps** (1 unlock + 14 level-ups), i.e. the `Template:TableUWPCOST` price rows
are complete as printed: tree 1 = 300 + 375 + 475 + … + 4 300 = **23 800**, tree 2 = 300 + … + 4 150 = **18 570**,
tree 3 = 400 + … + 2 700 = **19 050** ([T008](../techniques/T008-uw-sync-with-stones.md) §1 uses those totals).

**Conflicting statement in the same source.** `Ultimate Weapons/Ultimate Weapon Plus` says “*Abilities can be upgraded
**10 times**. The level of the ability once unlocked will be level 0*” — which would make the totals
unlock + 10 levels instead, i.e. 11 price entries out of the printed 14, and the UW+ block would cost
**3 × ~15 k + …** instead of 184 740.

**Why it matters.** The difference is 3 levels × 9 abilities ≈ **40 k–55 k stones**, one of the two biggest unknowns in
the stone ledger (the other is the 9 UW-block total, ≈ 453 k). It moves the payback horizon (≈ 47 years) by 4–5 years and
changes where the last cheap block of a UW+ line ends, which is exactly what §3–§4 of T008 optimise over.

**Settling observation (two reads, after the 9th UW unlock).**
1. Open **Ultimate Weapons → UW+** (the tab appears once all nine UWs are owned) and read the **level cap** shown on the
   first ability’s line (e.g. “Level 0/10” vs “0/14”) and the price of the next level right after unlocking it.
2. Compare with the tree: the printed sequence is 300, 375, 475, 600, 725, 925, 1 150, 1 450, 1 800, 2 200, 2 650,
   3 150, 3 700, 4 300 for tree 1 — the **level cap** tells you which of those is the last one, and the sum up to it is
   the true total (11 entries = 12 650; 14 entries = 23 800).

**Controls.** Read the same line on a second ability from a *different* tree (e.g. Black Hole’s `Consume`, tree 3) — the
caps should match across trees if the cap is a constant; and note the stat value at the cap (Golden Combo prints
0.03 % per level, so a level-14 cap must read 0.45 %).

**Falsifier.** If the two abilities from different trees show **different** caps, the number of levels is per-ability and
the tree totals must be rebuilt row by row; if the cap matches the number of stat values in the wiki row (12, 13, 14 or 15
depending on the ability) then the price columns are per-ability too and §1 of T008 needs the per-ability sums instead of
3 × / 2 × / 4 ×.

---

## Resolved 2026-11-02 (sources, no device read needed) — **per-ability caps**, not a constant

Tower Hub prints one `UW+ Cost Table` per weapon (`wiki/uw/<name>`, all last verified 2026-11-01), each with `Cost` and
`Value` rows whose lengths give the cap:

| Ability (UW) | Cap | Σ of the printed `Cost` row |
|---|---|---|
| Golden Combo (GT) | 14 | 20 070 |
| Chrono Loop (CF) | **13** | 16 350 |
| Consume (BH) | 14 | 19 050 |
| Kill Wall (DW) | 14 | 19 050 |
| Light Range (Spotlight) | **19** | 37 050 |
| Smite (CL) | **11** | 12 650 (the page prints `TOTAL … 12 650 + unlock` ✓) |
| Charged Mine (ILM) | 14 | 18 570 |
| Cover Fire (SM) | **11** | 12 650 |
| Death Creep (PS) | 14 | 23 800 |

Layer total **179 240** stones (vs the fandom uniform model’s **184 740**; the **5 500** gap is precisely the three short
caps). So both falsifier branches fired: the cap is **per ability**, the price columns are **per ability**, and T008 §1 now
carries the per-ability sums. The secondary controls also check out without a device: the caps equal the number of printed
`Value` cells minus the level-0 cell in each table (e.g. Golden Combo’s value row ends at **0.45 %** = `0.03 × (14 + 1)` ✓
as predicted above), and the 14-cap abilities reproduce the fandom tree totals cell for cell (19 050 / 18 570 / 23 800 ✓).

*Residual, moved to* [H056](H056-uw-plus-ledger-in-headline.md) *: whether the site’s per-UW “spent” column contains these
UW+ prices.*
