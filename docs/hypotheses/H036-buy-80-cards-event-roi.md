# H036 — Is the “buy 80 cards” event quest worth its 1 600 gems?

Status: open · Raised: 2026-11-01

**Claim.** Yes, and it should be treated as a **floor** in the gem budget (reserve 1 600 gems the moment an event opens),
because 80 pulls at **20** gems each is also the cheapest way to raise card levels: each pull adds a copy, and copies are
what level cards ([T012](../techniques/T012-card-deck-order.md)). The quest reward is on top of the cards themselves.

**The break-even test.** The Event Shop's first medal→gem trade is **150 gems for 40 medals** ⇒ **3.75 gems per medal**
(T013). So the quest is worth its 1 600 gems on medals alone if its payout is ≥ **1 600 ÷ 3.75 ≈ 427 medals**. Any payout
below that still has to be compared against the *card value* of the 80 pulls, which is why the quest is probably a net win
even at a few hundred medals.

**Alternative reading.** The quest is a trap at low tiers: 1 600 gems is ≈ 4 days of total gem income and also ≈ the price
of the 4th + 5th lab slots together (1 400 + 3 000 = 4 400, so 1 600 is a third of the lab-slot ladder), so before the 5th
lab slot the *slots* may beat the quest.

**Why it matters.** It fixes the priority order in [T009](../techniques/T009-gem-spend-order.md) §1: either “reserve the
1 600 first, then the ladder”, or “finish the 5 lab slots first, then the quest”.

**Settling observation (one event, two reads).**
1. When the event opens, write the **card-quest medal payout** printed on the quest row (e.g. “Buy 80 cards → `N` medals”).
2. Read the **first** Event Shop trade row's numbers (`X` medals → `Y` gems) and compute `Y ÷ X` for the gems-per-medal
   rate, then `N × (Y ÷ X)`.
- `N × rate ≥ 1 600` ⇒ the quest is the floor (claim confirmed);
- `N × rate < 1 600` ⇒ compare against T012's gems-per-percentage-point of the same 80 pulls — the level value is the
  tie-breaker; record both numbers so the choice is arithmetic rather than guesswork.

**Controls.** Do the reads inside the same event window (the shop rotates weekly and the quest table changes between
events), and note the tier the missions are generating at (T004's offset) since the medal income per event changes with it.

**Falsifier.** If the quest's 80 pulls are not 1 600 gems in the counter (for example because a discount or a `Buy x10`
bonus applies), the floor is different — log the counter delta across exactly 80 pulls (8 `Buy x10` presses).
