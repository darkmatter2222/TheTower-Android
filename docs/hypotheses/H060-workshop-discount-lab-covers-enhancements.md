# H060 — Does `Workshop {Attack/Defense/Utility} Discount` also discount that track's *enhancement* prices?

Status: open · Raised: 2026-11-02

**Claim.** The three tab-discount labs (law `0.50 % × n`, cap −49.50 % at L99) apply not only to the numbered upgrades of
their Workshop tab but also to the **enhancement** levels of the same-named track, so one lab discounts a bill of
**2.233 S / 2.543 S / 7.598 S** coins instead of a few tens of millions.

**Why it matters.** It moves the stop level of a cheap lab by a factor of ~3:

| Case | `R` (remaining bill the discount acts on) | last paying level (`price(n) ≤ 0.005 × R`) |
|---|---|---|
| tab only | 34.29 M (the Utility tab's four currency lines) | **L30** (price 147 950 vs saving 148 254) |
| tab **+ track enhancements** | 7 598.29 s + 34.29 M | **L99** (L99 price 4.19 M vs saving 2.3 × 10²²) |

Numbers: [T020](../techniques/T020-workshop-coin-order.md) §6.5. Evidence for “tab only”: the game ships a **separate**
triple of labs named `Enhancement Coin Discount` (100 levels, **0.30 %** per level, L1 = 1.00 B coins, milestone T21 W60),
which would be redundant if the tab labs covered enhancements.

**Settling observation (two reads, one lab).** With the Workshop Enhancement layer already unlocked (T12 W60 + its lab):

1. Open **Workshop → Enhancements**, tap `Coin Bonus +` (Utility track, currently **level 0**), and write down the coin price
   of its next level — the printed value is **5.00 B**.
2. Open **Lab → `Workshop Utility Discount`**, buy exactly **10 levels** (Σ **18 752** coins, so the lab cost is small
   compared to the number being read), then re-open the enhancement and re-read the same price.
   - the two expected readings are **5.00 B unchanged** (tab-only ⇒ case 1) or **5.00 B → 4.75 B** (−5.00 % ⇒ case 2).
3. Control: also re-read a *tab* price in the same sitting, e.g. `Cash Bonus`'s next level, to prove the lab is actually
   being read at L10 — the tab price **must** fall by ~5 % (e.g. its L50 step 22.31 K → 21.20 K). If the tab price does not
   move either, the lab was not researched and both reads are void.

**Falsifier.** If the enhancement price moves by a percentage that is **not** a multiple of 0.50 % per lab level (e.g. by
3.00 % after 10 levels), then the two discount families are **combined** in one multiplier, or the visible price already
includes the `Enhancement Coin Discount` labs — in that case record both lab levels together and solve
`price = base × 0.995^a × 0.997^e` from two readings, where `a` = tab-lab levels and `e` = enhancement-lab levels.
