# H016 — Guild Store: the quantity per purchase is constant while only the price escalates

Status: **resolved 2026-11-02 — fixed quantity, escalating price, and the four shard types are independent counters** ·
Raised: 2026-11-01

**Settling print (iteration 44).** Tower Hub `wiki/system/guilds` states the mechanic in prose next to the same table:
“**The price rises with each purchase you make and resets when the next season begins.** … **A token exchange gives 100
gems or 250 shards.** … buying **one type of shard only raises the cost of that type — the others are unaffected**”. So:
quantities are **constant** (100 gems / 250 shards), the **price** escalates (Gems 15 → 25 → 40, Shards 5 → 10 → 15, Bits
25 → 50 → 75, **3 purchases each per season**), the ladder **resets each season**, and each shard type carries **its own**
counter ⇒ the four 5-token buys are all available. T016 §2's efficiency table stands as printed.

**Original claim.** In the Guild Store, buying **Gems** always yields **100 gems** and buying **Shards** always yields
**250 shards**, and only the **token price** escalates with the purchase count (Gems 15 → 25 → 40, Shards
5 → 10 → 15, three purchases each per season, reset at season start). Under that reading the efficiency table in
T016 §2 holds: shards are worth 150 → 75 → 50 gem-equivalents per token across their three buys, gems
6.7 → 4.0 → 2.5.

**Alternative reading.** The wiki's table is laid out so that the numbers 15/25/40 and 5/10/15 could equally be
*quantities* with a fixed price, or prices with fixed quantities of a different size; the sentence above the
table (“Exchanging Tokens will give 100 gems, or 250 shards”) supports fixed quantities, but the column header
is “Quantity Purchased”.

**Why it matters.** It sets the whole token queue order (shards → gems → bits → chips → themes) and the size of
a season's haul. If the quantity also grows with the purchase count, later purchases are *not* worse and the
“buy all three cheap ones first” advice is wrong.

**Settling observation.** In the **Guild Store → Currencies** tab, read both numbers printed on the **Shards**
entry for purchase 1, buy it, then read purchase 2. Record `tokens → shards` for the three buys, then the same
for **Gems**. Expected under the claim: `5 → 250`, `10 → 250`, `15 → 250` and `15 → 100`, `25 → 100`, `40 → 100`.
A second data point: after the season rolls (8 weeks), confirm all three counters reset to the 5 / 15 prices.

**Falsifier.** If purchase 2 shows a *different quantity* (e.g. 250 → 300 shards), the quantity scales and T016
§2 must be recomputed with `quantity ÷ price` per purchase instead of the fixed-quantity table.
