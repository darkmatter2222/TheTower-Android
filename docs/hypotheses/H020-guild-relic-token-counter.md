# H020 — The guild relic gates count store purchases only (not the season-end auto-cashout)

Status: open · Raised: 2026-11-01

**Claim.** The season relics read “Guild: Spend **75** Tokens during the ‘Season N’” / “**150** Tokens”, and the
counter is the sum of the **token prices of Guild Store purchases** (binary: `Guilds\GuildStoreRelicEntry.cs` is a
store entry class). The end-of-season auto-cashout (5 tokens = 1 gem, mailed) is *not* a purchase and therefore does
**not** advance the counter. Under this reading a hoarder who never shops gets **0** relics per season, and clearing
both gates needs ~150 tokens of deliberate buying — which T016's queue (4 × 30 shard tokens + 80 gem-line tokens)
already provides.

**Alternative reading.** The counter is “tokens *used* since the season start”, including the auto-cashout, in which
case holding tokens is free and both relics arrive without any purchase decision.

**Why it matters.** It decides whether the two season relics (a Rare + an Epic, typically +2 % and +5 % of a stat)
are a by-product of T016's shard/gem queue or a separate 150-token commitment. It also interacts with T016's
“never let tokens auto-cash” rule: if the cashout *did* count, spending before the deadline would matter less than
the raw number held.

**Settling observation (2 reads in one season).** In the **Guilds → Guild Store** screen, note the relic entry's
counter text, then buy exactly the **5-token Shards** entry once and re-read it.
- `0 → 5` ⇒ purchases count (claim confirmed); continue to 75 and 150 and confirm the two unlocks fire.
- No change after a purchase ⇒ the counter is something else (e.g. contribution) — transcribe its value next to
  your contribution total to identify it.
Then, right after the season rolls, check the mail for the auto-cash gems and see whether the *next* season's
counter starts at 0 (reset per season).

**Falsifier.** If the counter advances when tokens are auto-cashed, the “purchases only” reading is wrong and the
T016 §5 spending order no longer has to be inside the season.
