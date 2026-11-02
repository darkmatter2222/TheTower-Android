# H035 — Does the lab-rush gem price improve per fully-completed lab (the “gold box”)?

Status: open · Raised: 2026-11-01

**Claim.** The gem price of *rushing* a research line is cheaper per unit of time when (a) more of the lab lines in that
category are **fully completed** (the gold box on the lab screen), and (b) the remaining timer is **long** — i.e. the price
is not a flat gems-per-hour rate but a rate that improves with completion and with the length of the remaining timer
([T009](../techniques/T009-gem-spend-order.md) §3.4, from Tower Hub's gem guide: “*the gem rate improves for every lab you
have fully completed, shown as a gold box on the lab screen, and longer labs are cheaper to rush per unit of time*”).

**Why it matters.** Rushing is the only place gems convert directly into time, so a per-category completion discount
changes the queue-packing plan in [T006](../techniques/T006-lab-queue-packing.md): if completion improves the rate, the
optimal behaviour is to **finish categories** (take every line in a category to its cap) before rushing anything, and to
batch rush only the long timers. Without the discount, T006's “cheapest skipped hour” comparison alone decides.

**Settling observation (three numbers, one sitting).** With the **Lab** panel open:
1. pick a category with at least one line at its cap (gold box) and one line partially levelled;
2. read the rush price (the gem cost shown next to the timer) for a **long** remaining timer — write down the remaining
   time too, e.g. `7 d 0 h → 60 gems`;
3. take one level of a partially-levelled line, then re-read the same two prices.
- prices drop after the category gains a gold box ⇒ completion-based discount confirmed (claim);
- prices unchanged but the **gems-per-hour** of the long timer is clearly lower than that of a short timer ⇒ the
  length-only part of the claim holds;
- both unchanged ⇒ the rate is flat per remaining time, and T009 §3.4 should be rewritten as a flat rate.

**Controls.** Read the prices in the same category and the same tier (the tier changes lab costs), with no active
`Labs Speed`/`Labs Coin Discount` change between the two reads (T006), and note the version — the lab rush cost model was
overhauled once already (v0.17 “lab rush cost overhaul”).

**Falsifier.** If the same remaining timer shows different gem prices on two consecutive opens of the panel without any
level taken, the price depends on something else (daily counter, relic, or the total number of completed labs account-wide)
— log both readings with the account's completed-lab count so the parameter can be identified.
