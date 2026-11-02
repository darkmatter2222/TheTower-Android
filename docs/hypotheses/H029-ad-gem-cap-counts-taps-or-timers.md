# H029 — Does the 60-claim/day ad-gem cap count tap events or accrued timers?

Status: open · Raised: 2026-11-01

**Claim.** The 60-claim cap counts **tap events** on the bottom-left ad-gem icon, so with the Vault's
`Ad Gem Stack` bank (L1–L4 = 10/20/40/60 keys, bank 2×/3×/4×/5×, [T017](../techniques/T017-vault-keys-priority.md)
Tier A) a single tap pays 5 stacked timers = 30 gems and the daily total can rise from
**360 → up to 864 gems** (144 timers accrue per day at one per 10 minutes; you need only ≈29 taps to consume them).

**Alternative reading.** The counter tracks **accrued timer units**, so 60 units = 360 gems/day regardless of how the
bank batches them; then `Ad Gem Stack` is pure QoL (fewer taps) and worth 130 keys only for AFK convenience — which
would move it down T017's priority ladder.

**Why it matters.** 504 gems/day is the largest single gem differential in the whole catalog (a card slot is 400
gems), and it decides both the Vault key order (T017) and the daily gem budget used by
[T009](../techniques/T009-gem-spend-order.md) and [T012](../techniques/T012-card-deck-order.md).

**Settling observation (one day, with the 5× bank installed).** From the 00:00 UTC reset, tap the icon only when its
badge shows **5**, and log `taps × badge value` until the icon stops paying.
- total ≈ **840–864** with ≈29 taps ⇒ **taps are counted** (claim confirmed);
- total ≈ **360** with ≈72 taps of badge 5 ⇒ **timers are counted** (alternative reading);
- anything else ⇒ the cap is a hybrid (e.g. 60 timer-units *and* a tap limit) and both counters should be logged.

**Controls.** (a) Repeat the day **without** the bank (expect 360 in 60 taps) as the baseline; (b) keep the app in the
same state between taps (the timer only accrues while the client runs); (c) note the version — pre-v29 pays 5/claim, so
the totals become 300 and 720.

**Falsifier.** If the two days both land on 360, rewrite T007 §2's table to a single row and drop the bank from
T017's Tier A; also record the answer in [H017](H017-ad-gem-stack-semantics.md), which asks the related question of
whether the bank multiplies the per-view payout or the banked total.
