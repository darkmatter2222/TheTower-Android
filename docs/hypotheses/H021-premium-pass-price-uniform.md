# H021 — All eight Premium Passes cost the same (so later passes are better value)

Status: open · Raised: 2026-11-01

**Claim.** The Premium Pass is eight **one-time** purchases, each covering a 3-tier group
(1–3, 4–6, …, 22–24), and the wiki prints no per-pass price, implying a **uniform price** for all eight. If the
price is uniform, the gem-equivalent per unit of real money rises monotonically with the tier group, because the
premium columns grow with the tier:

| Pass | Tiers | Δgems | Δstones | **gem-equivalents** | extra coins |
|---|---|---|---|---|---|
| 1 | 1–3 | +505 | +100 | **1 505** | 12.8 m |
| 2 | 4–6 | +655 | +155 | **2 205** | 62.9 m |
| 3 | 7–9 | +980 | +280 | **3 780** | 85.5 m |
| 4 | 10–12 | +1 035 | +305 | **4 085** | 705 m |
| 8 | 22–24 | +2 030 | +690 | **8 930** | 680 T |

(Δ = premium column total − free column total, summed over the group; 1 stone = 10 gems.)

**Alternative reading.** Later passes cost more (the usual live-ops pattern: the price tracks the value), in which
case the ratio, not the raw total, decides — and the ordering above may flatten into “all equal”.

**Why it matters.** It is the only *decision* the milestone system contains: with a uniform price, buy in order and
each purchase is ~1.4–2× better than the previous; with a rising price the ratio is what to compare against the
gem ladder (card slot 6 = 400 gems, lab slot 4 = 1 400).

**Settling observation (store, no purchase needed).** Open the **Store** → the **Premium Pass** entries and write
the listed price for **pass 1** and for the highest pass visible. If both print the same number of gems/currency,
the table above is the ranking. Note also whether the panel states the retroactive grant (“unlocks premium rewards
for milestones already reached”).

**Falsifier.** Different prices per pass ⇒ replace the ranking with `gem-equivalents ÷ price` from the panel, and
note the price curve in this file.
