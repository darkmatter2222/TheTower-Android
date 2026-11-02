# H054 — Thorns: is the hits-to-kill law `⌈100 / t⌉`, with breakpoints at `100 / n`?

Status: open · Raised: 2026-11-02

**Claim.** Thorns damage is a flat percentage `t` of the enemy’s max HP per hit, so the number of hits needed to kill is
`hits = ⌈100 / t⌉`; that integer changes only at the reciprocals `t = 100 / n`, and the workshop’s useful stops are the
first integer strictly above each one: **`t = ⌊100 / n⌋ + 1`**.

**Evidence.** Tower Hub `wiki/guide/beginner-guide` prints “keep the value 1 % above a fraction breakpoint (for example
6 %, 11 %, 21 %, 26 %)” and game-vault’s tier-1 guide adds **34 %**. One formula produces all five:

| `n` | 20 | 10 | 5 | 4 | 3 |
|---|---|---|---|---|---|
| `100 / n` | 5 | 10 | 20 | 25 | 33.3 |
| `⌊100/n⌋ + 1` | **6** | **11** | **21** | **26** | **34** |
| `⌈100 / t⌉` | 17 | 10 | 5 | 4 | 3 |

Five printed values, five matches, and the “fewer hits per enemy means less damage taken” wording in the same page is the
mechanism the formula describes.

**Why it is not settled by the source.** The page gives *examples*, not the lattice, and does not print the hits counter.
Three unknowns remain: (a) whether the lattice continues as reciprocals (so after 34 % the next stops would be `n = 2` →
**51 %**, and `n = 1` → the **99 %** cap) or whether the workshop’s own step (e.g. +1 % per level with a different cap
behaviour) truncates it; (b) whether the game rounds each hit’s damage **per hit** (giving `⌈100/t⌉`) or accumulates a
fractional total (giving `100/t` with no ceiling, which would make the +1 pure waste); (c) whether the enemy’s HP itself is
an integer that introduces a second rounding, which is exactly what the page means by “dodge rounding issues”.

**Why it matters.** Turtle is the Tier 1–2 build and Thorns is its whole damage source ([T003](../techniques/T003-turtle-build-t1-t2.md)),
so the difference between “buy to the next breakpoint” and “buy every level” is a **10–20× coin saving** on the same wave
gain (6 → 11 % is five levels for one fewer hit; 5 → 6 % is one level for three fewer hits). It also converts a fuzzy
“watch the number go up” into a five-value lookup: **6 / 11 / 21 / 26 / 34**.

## The read that settles it

Four reads of the **hits-to-kill** on the same enemy type (the run’s stats panel, or count hits on one tracked enemy), in
this order: **t = 25** → **26** → **33** → **34**.
Expected under the law: `4, 4, 4, 3`. The pair (33, 34) is the decisive one — it is the only printed example where the +1
actually changes the hit count.

## Kill conditions

- If **34 %** still takes **4** hits, damage accumulates fractionally rather than per hit → drop `⌈⌉` to plain `100/t`,
  and the rule becomes “buy exactly the reciprocal where it is an integer (5/10/20/25) and stop” — the +1 then buys nothing.
- If **25 %** takes **5** hits while **26 %** takes 4, the game truncates instead of ceiling, so the stops are `⌈100/n⌉`
  itself rather than `⌊100/n⌋ + 1` — shift the table to 5/10/20/25/34 and re-check at 34.
- If the hit counts match at 25/26/33/34 but **51 %** is not the next stop (e.g. the line caps at 50 or the counter jumps
  2 → 1 early), the lattice is truncated by the workshop’s level cap → record the cap and treat 34 % as the last stop that
  matters for Turtle (which is reached inside Tier 1–2 anyway).
