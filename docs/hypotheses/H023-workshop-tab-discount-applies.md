# H023 — The `Workshop <Tab> Discount` lab lowers the price of that tab's lines (and by how much per level)

Status: open · Raised: 2026-11-01

**Claim.** The three labs `Workshop Attack Discount` (T2 W40), `Workshop Defense Discount` (T2 W50) and
`Workshop Utility Discount` (T2 W60) reduce the **coin** price of the upgrades in their own tab
(the wiki: “reduces the cost of utility workshop upgrades with coins”, 99 levels each). Under that reading the
**Utility** discount lab multiplies the whole currency budget of
[T020](../techniques/T020-workshop-coin-order.md) §2, because all four currency lines (Cash Bonus, Cash/Wave,
Coins/Kill, Coins/Wave) sit in the Utility tab — so one lab level is worth more than 10 levels of any one line,
and the correct order is: unlock the lab, put a few levels into it, *then* buy the 1→50 band.

**Open sub-question (the number that matters).** The per-level magnitude is not printed on the pages read so far:
plausible shapes are a flat −0.25 %/level (99 lv → −24.75 %), −0.5 %/level (→ −49.5 %), or a multiplicative
`cost × (1 − 0.01·n)`. The 1→50 band in T020 §2 (1.607 M coins) is only the right budget if the discount is small
early (few lab levels); with a large per-level discount, lab-first gets much cheaper.

**Why it matters.** It decides the *interleaving* of lab vs workshop purchases for the entire mid-game: the coin
income of a sub-T11 account is ~10⁶–10⁹, so a 25 % vs 50 % effective discount is worth tens of workshop levels.

**Settling observation (3 taps + 1 lab level).** In the **Workshop → Utility** tab, write the printed price of the
**next level** of `Cash Bonus` (e.g. 30). Research **1 level** of `Workshop Utility Discount` in the **Lab**, return
to the Workshop, and read the same price again.
- unchanged ⇒ the lab does not apply to these lines (record which tab it does apply to, by repeating the check);
- lower ⇒ the discount applies; compute `1 − new/old` = per-level percentage and multiply by the level count to get
  the cap, then fill the number into T020 §4.

**Falsifier.** If the price is unchanged for all three discount labs, §4's “discount-first” rule is void and the
lab order reverts to T006's plain queue-packing.
