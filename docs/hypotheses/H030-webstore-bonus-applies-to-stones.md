# H030 — Does the web store's +10 % bonus also apply to the Power Stone offers?

Status: open · Raised: 2026-11-01

**Claim.** The web store's headline bonus is literally scoped to gems only — the store's own text is
“**+10 % Bonus on Gems.** Get 10 % bonus gems on **applicable offers** compared to the in-game versions!”, and the
in-game ledger tracks `coin, stone, keys, medal, ticket, cannon_shard, armor_shard, generator_shard, core_shard,
module_reroll, cells, bits, tokens, module_ticket` (`tools/gm_strings.txt`, the `batch_currency_analytics` id list).
So the **Stones** section of the web store may pay exactly the same amount as the in-app offer ⇒ the +10 % is a
gem-only line item and the stone ladder (≈ 60 k stones, [T022](../techniques/T022-free-currency-census-paid-ladder.md) §2)
is unaffected by the channel choice.

**Alternative reading.** “Applicable offers” = every offer in the store, both currencies get +10 %, and the stone
purchase is then strictly better on the web too.

**Why it matters.** Stones are the binding long-term constraint (≈ 10.7 k/yr free vs a ≈ 60 k bill), so a 10 % delta on
the paid stone packs is worth ≈ 6 000 stones over the whole plan — roughly two full UW+ levels — and it decides which
channel the Monthly Stone Pack is bought on. Gems at +10 % are already assumed in T022 §3.

**Settling observation (two reads, no money needed).** With the same account:
1. in-game **Store** panel → note the *first* offer in the **Gems** tab: price and gem count;
2. browser → `store.techtreegames.com/thetower/`, log in with the **User ID** from the profile screen → open **Gems**
   and find the same price point, then do the same in the **Stones** tab vs the in-game stone offers.
- gem offer reads e.g. 1 000 in-app vs **1 100** on the web, and the stone offer reads 1 000 both ways ⇒ **claim
  confirmed** (gem-only bonus);
- both read +10 % ⇒ alternative reading confirmed, and the +10 % becomes a line item in T008's stone ROI table;
- neither differs ⇒ the bonus is promo/restricted to specific offers ⇒ record the per-offer list (the section names
  are **Featured / Events / Packs / Gems / Stones / Milestone Passes / Free Gift**).

**Controls.** Compare only identical price points (the two catalogues order offers differently), read both within one
sale window (the FAQ and the patch notes both mention holiday sales changing the numbers), and note the client
version — the store is server-driven (`Purchases|Catalog`, `SalesCatalog`, `Sale`) so it can change without a client
update.

**Falsifier.** If any web offer is *cheaper in item count* than its in-app twin, the two catalogues are not the same
product set and the +10 % note is stale — in that case treat the web store as a separate catalogue and re-rank
T022 §3 by measured gems-per-dollar per offer rather than by the 1.1 multiplier.
