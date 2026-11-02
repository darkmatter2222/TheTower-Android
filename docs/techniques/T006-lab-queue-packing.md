# T006 — Pack the Lab queue so a slot is never idle

Rev: 1 · Status: **Unverified**
Value: ★★★ (Lab research is a *multiplier* on a stat, the strongest coin-per-upgrade line) · Ease: 4 taps per swap · Prerequisite: Lab unlocked

## Why it works

Lab research multiplies the current stat value rather than adding a flat amount, so it is the most
efficient power-per-coin line in the game — but each level also costs **wall-clock time**, and that
time does not compress. The queue is therefore the real budget: an idle slot is lost income that no
amount of coins can recover. Elite Cells (from elite enemies) reduce research time directly and are
strictly better than spending Gems on speedups.

## Steps

1. Open **Lab** and read the remaining time on every active slot.
2. During the day, start researches that take **≤ 7 h** so a slot is refreshed at each session; leave the **long** ones for the overnight queue.
3. Before sleep, make sure every unlocked slot has the longest remaining research running. Never let a slot finish unattended for hours.
4. Spend **Elite Cells** on the in-progress research (from elite enemies during runs) instead of paying Gems for speed.
5. Research priority for a new/low-tier account:
   - **Utility:** Coins/Kill Bonus (top, together with Game Speed), Cash Bonus, Cash/Wave, Max Interest, then Perks unlocks.
   - **Attack:** Attack Speed only, for a long stretch (it raises the cap).
   - **Defense:** Health, Defense %; a couple of Defense Absolute levels only.
   - **Skip:** Tower Range (hurts early builds), Labs Coin Discount (time, not coins, is the bottleneck).
6. Save Gems for the next **Lab unlock** rather than for speedups ([T009](T009-gem-spend-order.md)).

## Reproduction checklist

- [ ] No slot shows "completed, not started" for more than a few minutes
- [ ] At least one long research is running overnight
- [ ] Elite Cells counter returns to 0 each session
- [ ] Coins/Kill and Attack Speed lead their columns in the Lab list

## Falsification

If Elite Cells do not reduce the displayed remaining time, record what they do change here and swap
to the next-best use. If a slot's remaining time is unaffected by anything, note the slot's tier.

## Sources

game-vault `Guide:Beginners_Guide` §Lab Upgrades (multiplier nature, 7 h / overnight split, avoid Tower Range, priority list), strategygame.org (Elite Cells over Gems).
