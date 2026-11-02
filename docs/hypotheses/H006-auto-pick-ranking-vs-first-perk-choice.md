# H006 — Does `Auto Pick Ranking` override `First Perk Choice` on the first offer?

Status: **resolved** (2026-11-02, by sources) · Raised: 2026-11-01

**Answer.** The **ranking wins**, as game-vault stated. Tower Hub's perk-lab page (last verified 2026-11-01) states the
precedence outright and gives the same worked example the hypothesis used: with `First Perk Choice` = *Perk Wave
Requirement* but *Golden Tower Bonus* ranked higher and both in the opening offer, the game takes **Golden Tower Bonus**
(“The ranking takes precedence over First Perk Choice”). Practical consequence, recorded in
[T011](../techniques/T011-perk-engine-tuning.md) §2B: build the **ranking list first** and treat `First Perk Choice` as the
backstop for the case where nothing in the offer is ranked — do not spend the 1 B coins on `First Perk Choice` before
`Auto Pick Ranking` (T6 W10) exists, since the ranking then supersedes it. The device reads below still confirm the
fallback order (ranked → top slot).

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
