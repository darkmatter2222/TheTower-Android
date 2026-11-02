# H031 — Is the web store's Weekly Free Gift an extra claim, or the same claim as the in-game 20 gems?

Status: open · Raised: 2026-11-01

**Claim.** They are **two independent claims**: the in-game **Store → Free** rewarded offer (**20** gems, once/day,
doubled to 40 during holiday sales, [T007](../techniques/T007-ad-gem-sweep.md) §1) and the web store's
**Free Gift** section (“Claim a free gift weekly!”, once/week) are separate pools, so a perfect week collects
**7 × 20 + 1 × gift** gems with no purchases.

**Evidence.** The client has a dedicated data model for the web gift, distinct from the rewarded-ad claim:
`WebstoreFreeGiftDefinition` and `WebstoreFreeGiftItem` (`tools/gm_strings.txt`), next to
`BookmarkWebstorePopup` (the in-game “open the web store” popup). Serialised claim records carry a `claimedAt`
timestamp per item, i.e. each claimable has its own timer rather than one shared daily counter. The fandom
`Currency/Gems` list also enumerates them as separate numbered sources (“Free Daily Gems in the store” vs
“Free Weekly Gift in the web store”).

**Alternative readings to rule out.**
(a) One shared counter — the web gift marks the same flag as the in-game claim, so the second claim pays nothing;
(b) the gift is only *visible* after a purchase, or only after linking an account (`newGameSessionV4` /
`saveToCloudV5` — the web store needs the **User ID**, which exists only for a cloud-saved account), so an unlinked
save cannot claim it;
(c) the gift is not gems at all (items/shards/tickets), which changes the ledger in T022 §1 but not the ranking.

**Why it matters.** If it stacks, the weekly free-gem flow rises by one more line (and the gift is the cheapest
non-ad gem source in the game: one browser login per week, no 60-claim cap interaction). If it does not stack, the
web claim should be taken **instead of** the last in-game claim of the day, not in addition.

**Settling observation (one week, three numbers).** With the account linked (User ID visible on the profile screen):
1. read the **gem counter** on the main screen → `G0`;
2. **Store → Free** → claim → read again → `G1` (expect `G1 − G0 = 20`, or 40 in a holiday sale);
3. open the web store, log in with the same User ID, claim **Free Gift** → read the counter again → `G2`.
- `G2 − G1 > 0` ⇒ **it stacks** (claim confirmed); write the gift's contents into T022 §1;
- `G2 − G1 = 0` while the store says “claimed” ⇒ shared counter (alternative a) — then record which claim pays more
  and take that one only;
- the **Free Gift** section is missing/empty before a purchase ⇒ alternative (b) — re-check after buying the cheapest
  offer, and note whether the linked-account 20-gem one-time is what gates it.

**Controls.** Do all three reads within a few minutes (Bob and the ad icon both add gems in between — pause tapping
them), keep the same calendar day for the in-game claim (the 20-gem claim resets at 00:00 UTC, T007 §2), and repeat
after 7 days to see whether the gift resets weekly (weekly, not daily, is what the store's own text says).

**Falsifier.** If `G2 − G1` equals 20 (i.e. exactly the in-game amount), suspect that the counter simply refreshed
the daily claim rather than granting a separate gift — compare against a day where you skip the in-game claim and
claim only on the web: a true separate gift still pays on such a day.
