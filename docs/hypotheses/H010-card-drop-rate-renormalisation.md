# H010 — The Cards info panel splits rarity % evenly, and re-normalises when a rarity is exhausted

Status: open · Raised: 2026-11-01

**Claim.** The ℹ panel on the **Cards** screen (`CardDropRatesMenu` / `CardDropRateEntry` /
`CardRarityHeaderEntry` in `tools/gm_strings.txt`) shows, for every card,
`chance = rarity% ÷ number of not-yet-maxed cards in that rarity` — i.e. 80/12 = **6.67 %** per Common,
17/9 = **1.89 %** per Rare, 3/11 = **0.27 %** per Epic — and when every card of a rarity reaches level 7
that rarity's whole percentage moves to the remaining rarities in their existing ratio (80 % emptied ⇒
68 % Rare / 12 % Epic, making each remaining Epic 12/11 ≈ 1.09 %).

**Evidence.** fandom `Cards`: *“A card at level 7 can no longer be pulled … If every card of a rarity is
maxed, pulls of that rarity move to another rarity”* — but it does not give the per-card number, and the two
wikis disagree on the size of the pool itself (game-vault: 30 cards, 2 400 pulls, 19 slots / 32 400 gems;
fandom: 32 cards, 2 560 pulls, 22 slots / 58 400 gems + 6 Vault slots), which is probably a version gap.

**Why it matters.** It is the whole marginal-cost calculation in T012: if the pool re-normalises, the last
levels of an Epic get *cheaper* as Commons are maxed and the “L4 then next slot” rule is right; if the
percentages are fixed per card (no re-normalisation), Epic levels stay at 0.27 % and levels 6–7 of any Epic
are the worst purchase in the game.

**Settling observation (no numbers needed beyond the panel).** Open the Cards ℹ panel and write down the
per-card % for one Common, one Rare and one Epic. Then max **one Common card** (level 7) and re-open the
panel.
- Unmaxed Commons now show a **higher** per-card % (6.67 → 7.27 % if there are 11 left) ⇒ even split, pool
  shrinking per card.
- The Common header stays 80 % but the number of listed Commons drops and each share rises ⇒ confirmed.
- If instead the Epic share rises the moment a Common is maxed, re-normalisation is immediate and the
  “finish the Commons first” strategy is optimal.
Also record the header counts to settle the 30-vs-32 card question, and the highest slot number the Cards
screen offers (19 vs 22) — that fixes the gem ladder's tail.

**Falsifier.** Per-card percentages that do not sum to the rarity header % (e.g. Commons summing to 76 %)
mean the panel lists something other than an even split, and T012's marginal-cost table must be rebuilt from
the panel's own values.
