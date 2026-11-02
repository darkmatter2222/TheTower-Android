# T002 — Fixed phase order for the in-run Cash bar

Rev: 1 · Status: **Unverified**
Value: ★★★ · Ease: 0 (ordering only, same number of taps) · Prerequisite: Tier 1

## Why it works

In-run upgrades are bought with Cash that itself grows multiplicatively. Buying the *early*
upgrade lines while Cash is small is cheap; buying the *compounding* lines after the interest
engine is warm is where the value is. Following a fixed order removes decision cost and stops
the common beginner mistake of dumping everything into raw Damage.

## Steps (farming run)

1. **Waves 1–10:** buy **Cash / Wave** repeatedly.
2. **Waves 10–40:** switch to **Cash Bonus**.
3. Then **Coins / Kill** until enemy damage starts exceeding your **Defense Absolute**.
4. Survive: buy **Absolute Defense** and **Defense %**, and step **Thorns** to its next breakpoint ([T003](T003-turtle-build-t1-t2.md)).
5. Interleave [T001](T001-interest-idle-engine.md) idle windows between purchase bursts.

## Steps (tier-push run, i.e. you are trying to reach the next tier's wave 100)

1. Skip **all** coin lines. Buy **Cash / Wave**, then survivability only: Absolute Defense, Defense %, Health, Thorns.
2. Do not spend time optimizing income on a push run — the milestone reward is the payout ([T005](T005-tier-rush-then-farm.md)).

## Priority notes

- **Attack Speed** is the one attack stat that matters early: every hit rolls knockback and every on-hit effect, so hits/second ≈ "more of everything".
- Keep **Damage** and **Crit Chance** at equal purchase cost; **Crit Factor** is expensive — one level occasionally.
- Leave **Range** and **Damage per Meter** at 0 (fix with Cash mid-run only if needed).
- Start **Multishot** once you can max Attack Speed within a run, then **Rapid Fire**, then **Bounce Shot**.
- Delay **Super Critical** until a single run yields ~100 M.

## Reproduction checklist

- [ ] Same tier, same time budget: ordered run ends with more Coins than a "buy what looks good" run
- [ ] Range is still 0 in the Workshop at the end of the run
- [ ] You reached a higher wave than your previous control

## Falsification

If continuous buying of the top-of-list option beats this order over ≥5 paired runs, record the
wave/coin numbers in this file and demote the technique to Medium confidence.

## Sources

game-vault `Guide:Beginners_Guide` §In Run Upgrade Order / §Workshop Upgrades; strategygame.org tier-10 write-up (Attack Speed priority).
