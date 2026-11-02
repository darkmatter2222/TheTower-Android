# T001 — Idle the Cash bar at the Interest cap

Rev: 1 · Status: **Unverified** (mechanic confirmed by community guides; cap value not yet measured)
Value: ★★★ · Ease: 3 taps · Prerequisite: Interest visible in the in-run upgrade bar

## Why it works

The in-run Cash economy is a bank: each wave pays interest on unspent Cash, up to a cap
(`Max Interest` is also a Lab research line, so the cap itself is upgradable). If your Cash
sit above the cap, every wave pays the maximum — you are paid for **not** tapping. Buying an
upgrade resets you below the cap and the interest curve has to rebuild, so mid-run purchases
early in a run are the expensive part, not the missed upgrade.

The game shows this state directly: a **`$` icon sits next to the Cash counter and turns gray
when you are above the earning cap** (community-confirmed, used as the check for the
"hold max interest for N consecutive waves" daily mission).

## Steps

1. Start a run on your highest comfortable tier.
2. Buy the early Cash/Wave and Cash Bonus levels (see [T002](T002-run-phase-order.md)) until roughly **wave 25–50**.
3. From then on, stop buying. Watch the `$` icon beside Cash.
4. When the `$` icon is **gold/colored**, do nothing — let waves accumulate interest.
5. When it turns **gray** (Cash above the earning cap), spend down: buy one Coins/Kill or defense level, then return to step 4.
6. Repeat 4–5 until the run ends. Each cycle should be ≥10 waves long; a cycle shorter than 5 waves means you are buying too often.

## Reproduction checklist

- [ ] Cash number rises while you tap nothing for 10 waves
- [ ] `$` icon state changes when you cross the cap
- [ ] Coins-at-end is higher than a control run where you buy continuously
- [ ] Lab line **Max Interest** is researched before relying on this in long runs

## Falsification

If the Cash number is flat while the `$` icon is gold, interest is not being credited and this
model is wrong → check `Interest` and `Max Interest` in the Workshop/Lab and re-test at Tier 1.

## Cross-references

- Also completes the daily/weekly mission "Keep xx consecutive waves getting max Interest" — see [T004](T004-mission-farming-low-tier.md).
- Sources: game-vault `Guide:Beginners_Guide` (Utility: Max Interest), `Guide:Event_Guide` (interest mission row: "run lower tier and make sure that $ icon next to your Cash won't turn gray").
