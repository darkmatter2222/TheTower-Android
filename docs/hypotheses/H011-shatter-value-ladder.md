# H011 — The shatter ladder doubles per rarity (Epic+ ≈ 180, Legendary+ = 360)

Status: open · Raised: 2026-11-01

**Claim.** `Currency/Shards` gives only four values — Common **5**, Rare **10**, Rare+ **30**, merged Epic
**90** — but the **unmerge** refund table implies the rest, because unmerge returns exactly what the consumed
materials were worth: Epic → Rare+ + **60** (= 2 × 30), Legendary → Epic+ + **360** (= 2 × 180), Mythic →
Legendary+ + **360** (= 1 × 360), Mythic+ → Mythic + **720** (= 2 × 360). Those identities force
**Epic+ = 180** and **Legendary+ = 360**, i.e. the ladder roughly doubles per rarity after Epic+.

**Why it matters.** Every merge decision is a shard calculation (T010 §2): if Epic+ really is 180, then
building one Mythic (≈ 8 Epic copies of budget) is worth several hundred shards in “material” terms and the
“keep one natural Epic, shatter the spares” rule needs the exact numbers to be checkable.

**Settling observation.** Shatter one of each in a single session and read the shard counter's delta:
a spare **Epic+** (expect **+180**, ×1 + Shatter Shards lab bonus), then a **Legendary+** (expect **+360**).
With the `Shatter Shards` lab at +100 % both should exactly double (360 / 720).

**Falsifier.** If Epic+ shatters for something other than 180, the doubling model is dead and the ladder must
be transcribed level-by-level from the Shatter panel; the unmerge refunds then imply the materials are valued
differently from the shatter values (which would make merge→unmerge *not* shard-neutral, changing T010 §2's
rule about when the 20-gem unmerge is worth it).
