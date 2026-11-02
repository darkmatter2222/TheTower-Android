# T005 — Tier-rush with a survival build, then farm the new tier

Rev: 1 · Status: **Unverified**
Value: ★★★★ (the highest-leverage early decision) · Ease: 15 min · Prerequisite: Tier 1

## Why it works

Two mechanics interact:

1. Reaching **wave 100 of a tier** is a Milestone and unlocks the next tier.
2. Your **daily and weekly coin rewards scale with your maximum tier**, and the farming missions use `max tier − 2`.

So a single lucky survival run that clears wave 100 permanently raises the payout of every
subsequent run and every mission, for a one-off cost of one long run. Farming a tier you already
cleared is efficient; farming a tier you are *stuck on* is not.

## Steps

1. Before pushing, check the Workshop: your **Defense** column (Absolute Defense, Defense %, Health, Thorns) is ahead of your Attack column. If not, farm 2–3 runs first ([T003](T003-turtle-build-t1-t2.md)).
2. Start a run on the current tier and switch the in-run bar to **survival only**: Cash/Wave → Cash Bonus, then Absolute Defense / Defense % / Health. **Skip all coin upgrades for the whole run** — coins from a push run are a rounding error compared to the milestone.
3. Keep tapping to hold the enemy line; buy nothing that doesn't extend the run.
4. At wave 100 the tier unlocks; note the new daily/weekly reward value from the **Milestones** panel.
5. On the next run, go back to the farming order ([T002](T002-run-phase-order.md)) on the *previous* tier if the new one kills you before wave ~50 — the higher tier's reward is already banked.
6. Repeat: one push run, then several farm runs.

## Reproduction checklist

- [ ] Milestone for wave 100 claimed at the new tier
- [ ] Daily coin reward (Milestones / daily claim) is visibly larger than the previous tier's
- [ ] Next mission set lists tier = new max − 2 and completes faster

## Falsification

If daily/weekly rewards do not change after unlocking a tier, the tier→reward link is wrong; record
the before/after daily claim values and demote this to "unlock content only".

## Sources

game-vault `Guide:Beginners_Guide` ("try to beat stage 100, since when you unlock a new tier your daily and weekly coin rewards increase"), `Guide:Event_Guide` (mission tier = max tier − 2), tower-hub `Tier rushing guide`.
