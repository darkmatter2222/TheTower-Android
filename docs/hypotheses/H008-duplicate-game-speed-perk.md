# H008 — Duplicate copies of the `Increase Max Game Speed` perk add +0.01 each

Status: open · Raised: 2026-11-01

**Claim.** The wikis list `Increase Max Game Speed by +1.00` with **Quantity 1**, i.e. one copy per run. At
least one experienced player reports the opposite: *"The game has given me the perk more than a single time
many times during a single run. Every time I've chosen it additional times it's added 0.01 speed to the
perk."* If true, the 2nd…n-th copies are worth **0.01 speed** each — roughly 1/100th of the first copy, so
they should be ranked **last** (or banned) — but they are not zero, and the cap arithmetic in T011 has to
account for them.

**Why it matters.** One quantity-1 perk that is 30 % of the offer menu can silently eat picks. If duplicates
really add 0.01, then after the first copy the perk must drop to the bottom of the `Auto Pick Ranking`, just
above the junk, so Auto Pick stops selecting it.

**Settling observation.** Open the **Stats** screen (in-run) and read the game-speed value. Take the speed
perk once (value goes `5.0 → 6.0`, or `→ 6.3` with a maxed Standard Perk Bonus lab), then deliberately take
it again from a later offer and re-read the number.
- Unchanged ⇒ Quantity 1 is correct, duplicates are free no-ops and can be left in the pool.
- `+0.01` per copy ⇒ the community report is right; re-rank the perk below all other ranked perks.
- A *bigger* jump than 0.01 (e.g. another full +1.00, capped at 6.25) ⇒ the displayed cap is the only limit
  and the speed perk becomes the best pick in the game until 6.25 is reached.

**Falsifier.** If the stats screen never shows a value above **6.3** no matter how many copies are taken, the
6.25 hard cap exists and every copy after the one that reaches it is worthless.
