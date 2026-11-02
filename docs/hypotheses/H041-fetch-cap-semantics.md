# H041 — What exactly does Fetch's “20 gems / 10 medals per 24 h” cap count?

Status: open · Raised: 2026-11-02

**Claim.** The cap counts **granted items** (20 gem units, 10 medal units) and resets on the **same 00:00 UTC boundary as
the 60-ad-claim cap** ([T007](../techniques/T007-ad-gem-sweep.md)), i.e. it is an *item* cap, not a *proc* cap, and not a
rolling 24-h window per find.

**Alternatives to distinguish.**
1. **Proc cap:** the chip may stop finding entirely after N finds (e.g. 20 finds) regardless of which items came out — then
   the shard rows (uncapped on the wiki) would also stop after ≈ 20 finds.
2. **Per-pool caps:** each row could have its own counter (gems 20, medals 10, modules 5+2) with the shards/coins uncapped
   **forever** — this is how the wiki table reads, and is the working model.
3. **Rolling window:** each find's own 24 h timer (the binary stores a per-item `claimedAt`, T022 §7), which would make the
   first day's totals ragged rather than a clean 00:00 reset.

**Why it matters.** With the model in §3 the gems/medals caps bind (28.8 and 14.4 expected vs 20/10 printed), so the whole
Fetch layer is ≈ **20 gems + 10 medals/day** — about **5 %** of the daily gem budget (T022 §1). If instead the cap is a
*proc* cap, the uncapped shard rows stop too and the chip's value collapses; if it is per-pool, the shard income continues
and Fetch stays the cheapest shard source next to T010's rerolls.

**Settling observation (one day, five reads).** Keep Fetch as the only chip that can grant currency for the day (unequip
Bounty/Summon/Attack/Ally/Scout — none of them grants gems/medals, so the split stays clean):
1. at **00:05 UTC** read `gems`, `medals`, and the **four shard counters** + the **reroll-shard** counter → `G0, M0, S0`;
2. then read the same five every ~4 h (4 reads) plus one final read at **23:55 UTC**, keeping the app otherwise idle;
3. plot each counter: the gems line should **flatten at exactly +20**, the medals line **at +10**, while the shard lines
   keep rising through the whole day.
- gems flatten at 20 and shards keep rising ⇒ per-pool item caps (claim);
- **all** counters flatten at the same moment ⇒ a shared proc cap; record the proc count at that moment;
- gems flatten at 20 but the shard lines also flatten after ≈ 20 finds ⇒ the two rows share one counter.

**Controls.** Same tier and same equipped chips for the whole day; no **Store** free claim, no ad claims and no mission
tiles between reads (or log each of their known payouts separately: 20 / 6 / 3 — T022 §1); keep the *same* 3 chips equipped
as in H040 so the preset's bit-level distribution doesn't move.

**Falsifier.** If the gem counter rises past **+20** in a day by more than the logged known sources, the cap is not a flat
20/day (it may scale with the chip's level or with the tier) — then record the cap at two different Fetch **Find Chance**
levels to see which parameter moves it.
