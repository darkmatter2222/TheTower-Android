# H013 — Relic gates count only event-mission medals, not weekly boxes or Fetch

Status: open · Raised: 2026-11-01

**Claim.** The **350** (Rare) and **700** (Epic) relic gates inside an event are fed **only** by medals earned
from that event's 21 missions — the ceiling there is 21 × 45 = **945**. Medals carried over from a previous
event, medals from the **Daily-Mission weekly boxes** (135/week) and the Guardian **Fetch** medals (≤10/day)
raise your spendable balance but **not** the gate counter.

**Evidence.** fandom `Currency/Medals` states the exclusion explicitly (“any Medals carried over from a
previous Event or earned from Daily Mission boxes are not counted toward the number of Medals needed to earn a
Relic”). game-vault's `Guide:Event_Guide` lists the same 350/700 gates but computes the “1 215 per event” total
**including** the 270 weekly-box medals, so the two wikis are consistent only under this exclusion rule —
945 ≥ 700 works, while the two numbers would be meaningless if everything counted.

**Why it matters.** It fixes the week-1 order of work: if the exclusion holds, chasing weekly boxes early is a
waste of early-event time and the Epic relic needs ≈ 16 of 21 missions; if it does not hold, boxes come first
because they are free and the relic gates arrive ~20 % sooner.

**Settling observation.** Early in an event, claim **one weekly box** (or the Guardian **Fetch** reward) *before*
finishing any mission, then read the number under the relic icon in the **Events** panel.
- It still reads **0 / 350** ⇒ exclusion confirmed (only mission medals count).
- It reads 10…35 ⇒ everything counts; re-order the checklist in T013.
Second data point: finish exactly **8 missions** (360 mission medals) — the Rare relic should be claimable and
nothing before that.

**Falsifier.** If the Rare relic unlocks with fewer than **350** mission-medals visible in the panel, the gate
is being fed by the total balance instead, and the counter is simply the spendable purse.
