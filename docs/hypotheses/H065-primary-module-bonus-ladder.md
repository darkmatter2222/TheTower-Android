# H065 — Do the four `Primary Module Bonus` labs use the assist ladder (**0.25 Q** and **15 551 min** per level)?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 132) · **Affects:**
[T006](../techniques/T006-lab-queue-packing.md) §Module named labs finding 8 and Appendix B beyond-census tail,
[T010](../techniques/T010-module-merge-chain.md) §7

## What is printed and what is not

| Fact | Print |
|---|---|
| One lab per module type (Cannon / Armor / Generator / Core), **30 levels**, **+1 % per level to +30 %**, gate **Tier 23 Wave 500** | fandom `Modules` §Main Effect (2026-11-03) and T010 §7 |
| The assist ladder: **cost = 0.25 Q × n**, **time = n × 15 551 min** (its own cells: L1 `0.25` / `10d 19h 11m`, L30 `7.5` / `323d 23h 30m`) | fandom `Assist Module Labs` (2026-11-03) |
| A per-level table for the **Primary Module Bonus** labs | **none** — `Module Labs` transcludes only the 12 named labs + the assist page |

If the ladder is shared, the four labs cost **4 × 116.25 Q = 465.00 Q** for **4 × 5 021.8 d = 20 087.1 d** and are the
second-largest block after the five BC labs (14.3 % of the priced coins beyond the census).

## Readings to take (UI only)

1. **Level 1 of one lab.** Open the **Lab** screen → category **Module Research** → `Primary Module Bonus (Cannon)` and
   read the two cells. Shared ladder ⇒ **0.25 Q** (= 250 000 000 000 000 000 coins, shown as `250.00Q` or `250 Q`) and
   `10d 19h 11m`. If the header instead says `q`, note that too — it also re-tests the Rev-36 unit correction.
2. **One more level, same lab.** Read level 2: **0.5 Q** and `21d 14h 22m` ⇒ arithmetic `0.25 Q × n` / `n × 15 551 min`
   confirmed; **0.5 Q** with `21d 14h 23m` is the same law with a different truncation; anything on a ×1.5 ratio ⇒ these
   labs follow the generic family law instead (then the four labs cost ≈ **1.14 × 10²⁰** coins on the 30-level ×1.5 sum).
3. **The value cell.** Confirm `+1 %` per level and a cap of **+30 %** (the printed law), i.e. **120 levels** over the
   four types in total.

## What each outcome changes

- **Shared ladder** — the beyond-census tail becomes **465.00 Q / 20 087.1 d** and the whole lab system costs
  **≈ 3 708.84 Q**; T006’s Appendix B gains a row `R` and the income-unit figures scale by **×1.14**.
- **×1.5 family law** — the tail is ≈ **113.6 Q** (four × 28.4 Q, the 30-level ×1.5 sum from a 0.25 Q head) and the
  clock becomes the geometric `t₁(1.15³⁰ − 1)/0.15`-style sum instead.
- **Neither** — keep the 12 named lines as the priced Module layer and cite the four printed cells per lab instead.

## Falsification

If the **Lab** screen lists a different number of `Primary Module Bonus` labs than **4** (one per type), or their caps are
not **30**, the 120-level tail and every derived share change; that count is the same screen read that settles
[H063](H063-mastery-lab-count-and-cells-ladder.md), so take both in one pass.
