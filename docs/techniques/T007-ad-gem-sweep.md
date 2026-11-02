# T005 — Ad-gem sweep: harvest every daily ad source in one sitting

Rev: 1 · Status: **Verified amounts** (wiki table), cap value still open → [H001](../hypotheses/H001-ad-gem-hard-cap.md)
Value: ★★★ (~20–40 gems/day for ~5 min) · Ease: 5 min · Prerequisite: none

## Why it works

Gems are the slowest currency in the game and they gate Labs and Card Slots, which are the two
things that multiply Coin income. Most of the free gem flow is a handful of small, capped daily
sources; missing one day is unrecoverable, and harvesting them *in one session* means you never
pay the app-launch overhead twice.

## Daily gem income you must not skip

| Source | Where to tap | Gems | Cadence |
|---|---|---|---|
| Free Store Gems | **Store → Free (watch ad)** | 15 | once/day |
| Ad Gems | the icon in the **bottom-left** of the main screen | 5 | ≈ every 10 min |
| Floating Gems | the gem spinning around your tower in the main view | 2 | whenever it appears — just tap it |
| Daily Missions | **Missions** panel, claim each tile | 3 each | 3–5/day ([T004](T004-mission-farming-low-tier.md)) |
| Weekly Challenge | Missions panel, claim when the daily count is reached | 10–30 | weekly |
| Tournament | **Tournament** panel, claim at rank/league | 5–600 | per tournament |
| Tier Milestones | **Milestones** panel | one-time | per tier |

## Steps

1. Launch the game and immediately tap the **floating gem** orbiting the tower (2 gems) — do this on every return to the main screen, not only at startup.
2. Open **Store** → claim the **free gem** offer (ad) = 15.
3. Open **Missions** → claim every completed tile, then the **Weekly Challenge** row if the daily counter is full.
4. Open **Tournament** → claim any finished reward before the next tournament rolls.
5. Note the time of step 2. Restart the sweep ~10 min later and take the **bottom-left ad gem** (5) each time it becomes available; while a run is on screen, keep tapping the floating gem.
6. Do **not** spend gems on speedups — they are the weakest conversion ([T009](T009-gem-spend-order.md)).

## Reproduction checklist

- [ ] ≥4 ad views completed per day (15 + 5 + 5 + 5 = 30) plus 3–5 mission gems
- [ ] No unclaimed tile visible on the Missions or Tournament panel at the end of the sweep
- [ ] Gem total per day ≈ 35–45 with no purchases

## Falsification

If the bottom-left ad icon stops paying after N views in a day, record N here — the binary exposes a
remote-config key `hardCapAdGemsEnabled`, which implies exactly such a daily cap (see [H001](../hypotheses/H001-ad-gem-hard-cap.md)).
If the cap is reached, spend the remaining views on the Store's other rewarded offers instead.

## Sources

game-vault `Guide:Gem_Guide` repeatable-source table; `global-metadata.dat` key `hardCapAdGemsEnabled`.
