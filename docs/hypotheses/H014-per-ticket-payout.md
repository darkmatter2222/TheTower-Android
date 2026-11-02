# H014 — Each tournament ticket pays its own reward (vs only the best wave counting)

Status: open · Raised: 2026-11-01

**Claim.** Every ticket you spend pays the reward for **that run's** placement, so `N` tickets give `N`
payouts; the marginal-value ladder in T014 §3 (`reward − 10n` per extra ticket) is therefore correct and
buying 3–5 extras is profitable from Gold upward. The alternative reading is that the tournament keeps only
your **highest** wave (the wiki says “The highest wave of this run is entered into the tournament”) and pays
**once**, in which case extra tickets buy only leaderboard position and each extra ticket is a straight gem loss.

**Evidence.** The wiki's wording supports the single-best reading, but the client ships
`TournamentAttempt` (plural attempts) alongside `TournamentPrizeEntry` in `tools/gm_strings.txt`, which is more
natural for per-attempt payouts; the free ticket + ad ticket + gem tickets design also implies repeatable buying.

**Why it matters.** It is the difference between “spend 30–60 gems on 3 tickets at the Wednesday bracket” and
“never buy a second ticket”. At ~40 gems/day of income, 30 gems is a whole day, so the two readings are not
interchangeable.

**Settling observation.** In one bracket, buy exactly **2** extra tickets (10 + 20 = 30 gems) and note the gem
and stone totals on the **Tournament End Panel**:
- payout ≈ **3 × (your bottom-band reward)** ⇒ per-attempt, claim confirmed;
- payout ≈ **1 × reward** ⇒ best-only, and the rule becomes “spend only the free + ad ticket”.
Also note whether the leaderboard lists one row per player (best-only) or several rows for your name.

**Falsifier.** If the panel shows a per-attempt breakdown but the total equals only one reward, the display is
cosmetic and the best-only reading wins.
