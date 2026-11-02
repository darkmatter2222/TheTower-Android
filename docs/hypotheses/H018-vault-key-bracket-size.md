# H018 — Small tournament brackets pay keys on a compressed rank table

Status: open · Raised: 2026-11-01

**Claim.** `Currency/Keys` states “Brackets with fewer than 9 players pay less.” The practical version: the
published rank→key table (Legend 25 → 0, Mythic 50 → 8) is written for a **full 30-player bracket**, and in a
partly-filled bracket the *bottom* rows collapse — most likely the last 9 ranks share the rank 25–30 value, or the
table is truncated to the number of entrants (so with 10 players nobody receives the 0-key row).

**Why it matters.** Keys are the scarcest currency in the game (16/week at best) and the Vault ladder in
[T017](../techniques/T017-vault-keys-priority.md) is built on the published numbers. If small brackets pay
proportionally less, an account in a low-population bracket needs ~2× the tournaments for the same 130-key or
775-key blocks, and “get promoted to Mythic” becomes even more strongly the top priority (Mythic brackets are
smaller but pay a **floor of 8**, so the floor dominates the table).

**Settling observation (read-only, 2 tournaments).** In one Legend/Mythic bracket, note the **number of entrants**
shown on the leaderboard, your **rank**, and the **key count** in the claim row of the
**Tournament Finished Panel**. Repeat in the next bracket. Expected: with 30 entrants the published table matches
exactly; with <9 entrants the awarded keys are lower than the table for the same rank.

**Falsifier.** If a <9-player bracket pays exactly the published value for the same rank, the note is stale and
the single table applies to every bracket — then delete the “compressed table” caveat from T017 §1.
