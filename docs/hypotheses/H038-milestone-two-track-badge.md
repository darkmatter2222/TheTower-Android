# H038 — Is the Milestones Premium track *additive* (46 cells/tier) or a *replacement* (23)?

Status: open · Raised: 2026-11-02

**Claim.** Additive. Each of a tier's **23** waves has a free-track cell **and** a separate premium cell, so a fully
reached tier with a Premium Pass owned offers **46** claims, and the pass's value is its **whole** premium column —
[2 425 / 3 990 / 6 510 / 8 725 ge](../techniques/T019-milestone-claim-engine.md) for passes 1–4
([T019](../techniques/T019-milestone-claim-engine.md) §2).

**Why the additive reading is the likely one (paper evidence).**
1. Tower Hub's grand-total table is `Free | Paid | Total` = **19 230 | 23 955 | 43 185** gems, and
   19 230 + 23 955 = 43 185 **exactly** — an addition, not a replacement.
2. A replacement model would *delete* free lab unlocks: T1 W30 is `Labs` (free) vs `10 Gems` (premium); T2 W80 is
   `Interest` + `Max Interest` vs `5k Coins`. Labs cannot be paywalled out of a milestone the run already reached, so the
   two columns must be two cells.
3. In the per-tier wiki tables the premium column is often the **same** value as the free one (T1 W20: 10 / 10 Gems),
   which is what a second identical-looking cell looks like, not an upgrade.

**Why it matters.** It moves the pass valuations by **1.4–1.6×** (Δ-model 1 505 / 2 205 / 3 780 / 4 085 vs whole-column
2 425 / 3 990 / 6 510 / 8 725 ge), i.e. whether the Premium Pass is the best or merely a good paid purchase, and whether
the T1–12 milestone total is 7 850 gems or 12 525 gems.

**Settling observation (one pass, one badge, two numbers).**
1. Before buying anything, note the **Milestones badge** count `B0` for a tier you have fully cleared (23 rows reached).
2. Buy the pass for that group (the cheapest one available) and re-read the badge → `B1`.
- `B1 − B0 = 23` per cleared tier ⇒ additive (claim confirmed);
- `B1 − B0 = 0` while the already-claimed rows' values changed ⇒ replacement (use the Δ-model numbers);
- `B1 − B0` between the two ⇒ partial (e.g. only *unclaimed* rows upgrade) — record `B0`, `B1` and how many rows were
  unclaimed at the moment of purchase, because that is the discriminating parameter.
3. Also record the **gems credited** by one tap on a known row (e.g. T1 W20: 10, or 20 if the two cells are merged).

**Controls.** Buy the pass for a group whose tiers are all fully reached (so the retroactive effect is visible), keep the
same tier between reads, and note the version — the milestone tables were re-versioned once already (T1 W10 pays 10 or
25 coins depending on the source).

**Falsifier.** If a pass purchase credits a single lump sum instead of lighting per-wave cells, the "cell" model is wrong
entirely — record the lump sum and compare it against the pass's whole-column value (2 425 ge for pass 1) versus the Δ
value (1 505 ge).
