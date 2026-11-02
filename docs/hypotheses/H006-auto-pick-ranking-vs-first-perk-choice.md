# H006 — Does `Auto Pick Ranking` override `First Perk Choice` on the first offer?

Status: open · Raised: 2026-11-01

**Claim.** The two wikis disagree. game-vault (`Perks`) says *"Auto Pick Ranking supersedes First Perk
Choice"*, i.e. if you rank Golden Tower above Perk Wave Requirement and both are on the first offer, the
game takes Golden Tower. fandom (`Perks`) says Auto Pick *"picks the highest-ranked perk on offer … If
none of the offered perks are ranked, it picks the top choice, which on the first pick is your First Perk
Choice"* — also a supersedes reading, but it keeps First Perk Choice alive as the fallback rather than as
a guarantee.

**Why it matters.** `First Perk Choice` costs **1.00 B coins** and 4 d 15 h. If it is fully shadowed by
`Auto Pick Ranking` (T6 W10, 32 levels), those coins belong elsewhere — the same 1 B buys ~4 extra levels
of `Waves Required`.

**Settling observation.** With both labs researched, set First Perk Choice = `Perk Wave Requirement` and
rank `Golden Tower Bonus x1.5` **above** it. Start a run and read the first offer (before picking):
- Golden Tower is present *and* is the one that gets taken → **game-vault is right**, First Perk Choice is
  cosmetic once ranking exists.
- Golden Tower is present but the game still takes Perk Wave Requirement → the guarantee wins, and First
  Perk Choice keeps its value.
Second data point: with Auto Pick **off**, note which slot the guaranteed perk occupies (top slot = the
documented behaviour).

**Falsifier.** A first offer that contains neither the First Perk Choice perk nor any ranked perk (all
unranked, unranked, unranked) proves the guarantee is not applied at all — then First Perk Choice is a
pure waste and should drop to the bottom of the lab order.
