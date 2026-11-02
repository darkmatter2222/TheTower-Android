# H059 — Are the sub-stat rarity chances 46.2 / 40 / 10 / 2.5 / 1 / 0.3 %, and is that a different roll from the banner's 68.5 / 29 / 2.5?

**Status:** Open · **Raised:** iteration 92 (T010 §8.2) · **Layer:** Modules (sub-stat rolls)

**Claim.** The Hub's `modules` page prints two complete distributions on one page:

| Print | Values | Σ | Where it sits |
|---|---|---|---|
| **banner pull** (prose) | Common **68.5 %**, Rare **29 %**, Epic **2.5 %** | 100.0 ✓ | “Every purchased module is randomly assigned one of three rarities” |
| **rarity “Chance” table** | Common **46.2 %**, Rare **40 %**, Epic **10 %**, Legendary **2.5 %**, Mythic **1.0 %**, Ancestral **0.3 %** | 100.0 ✓ | the table block that sits between the slot-cost ledger and the reroll-lock ladder |

They cannot both be the pull model (Epic 2.5 % vs 10 %), so the reading used in T010 §8.2 is that the six-bucket table is the
**sub-stat rarity roll** (the roll that assigns a rarity to each of a module's sub-stat slots, capped by the module's own
rarity). Under that reading: “Epic or better” = **13.8 %**, “Legendary or better” = **3.8 %**, a 6-slot module shows at least
one Legendary+ in **20.7 %** of rolls, and Ancestral is **1 in 333**.

**Why it matters.** It decides the *shard* budget of the reroll game. With **3.8 %** per roll for Legendary+, an Ancestral
`Cash / Wave` (**1 000** vs **30** at Common, T010 §8.3) is a ~26-roll expectation ⇒ ≈ 26 × (the locked price from §8.4's
ladder) reroll shards per perfect slot; if the real panel instead shows a flat **2.5 %** Epic-only tail, the same slot costs
about **40** rolls and the “merge first, then reroll” ordering changes at the margin. The banner rates themselves are already
used for the pull-EV table in §1, so only the sub-stat side is at stake.

**Settling observation (UI only).**

1. Open a module's detail (Modules → tap a module → the sub-stat list). The **sub-stat rows show a rarity colour/number**; if
   the screen prints the **percentages** anywhere (ℹ button inside the module panel), read them: expect
   **46.2 / 40 / 10 / 2.5 / 1 / 0.3**.
2. Census branch (if no percentages are printed): with the **same** module and the same lock configuration, reroll **50** times
   and tally the *highest* rarity seen per roll. Against the claim the expected counts are ≈ **23.1 / 20 / 5 / 1.25 / 0.5 / 0.15**
   for Common…Ancestral (binomial, p from the table); the 68.5/29/2.5 print would instead predict ≈ **34 / 14.5 / 1.25**.
3. Also record whether the tail is **capped by the module's rarity** in practice (an Epic module never showing a Legendary
   sub-stat in ≥ 50 rolls) — that is law 1 of §8.2, and it is the same census.

**Falsification of the framing.** If the module panel prints **three** buckets for sub-stats too (68.5/29/2.5), then the
six-bucket table is a different object altogether (most likely the *collection-wide* distribution of merged rarities, or the
featured-banner's epic split): use the panel's own numbers in §8.2/§8.3 and keep the six-bucket table only as the value-index
key (Common…Ancestral = the six value columns), which does not depend on the probabilities.
