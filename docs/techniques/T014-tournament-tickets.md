# T014 — Tournament tickets: buy them while the marginal value beats the next card slot

Rev: 1 (2026-11-01) · Currency: **Gems**, **Power Stones**, **Keys** (Legend+), plus medal missions that count tournaments
**Value:** ★★★★ — a bottom-place run in your *current* league is worth 60 → 2 585 gem-equivalents per ticket, and **stones** (the UW sync fuel, T008) come almost entirely from here.
**Confidence:** **Medium-High** — league list, schedule, promotion rules and the full per-league reward tables are fandom raw wikitext (Mythic table dated v29, 26 Aug 2026); the per-ticket arithmetic below is derived from those numbers.
**Ease:** 2 taps (join, claim) + 1 run per ticket · **Prerequisite:** **Tier 1 Wave 60** milestone.

---

## 1. The schedule and the ticket price ladder

- A tournament starts **every Wednesday and Saturday at 00:00 UTC**; each bracket is **30 players** in one league.
- Leagues, ascending: **Copper → Silver → Gold → Platinum → Champion → Legend → Mythic**.
- **1 ticket = 1 run**; your highest wave in that run is what is scored. You get **1 free ticket** when the tournament starts, plus **1 more from a rewarded ad**, and more from gems: the **n-th extra ticket costs `10 × n` gems** (10, 20, 30, 40 …).
- Joining is impossible **while a run is in progress** — finish or quit the run first.
- Promotion: **top 4 move up** a league; from **Platinum** downward the **bottom 6** are demoted. **Copper, Silver and Gold are protected** — once you leave them you never fall back, which makes early promotion a one-way ratchet you should always chase.

## 2. The gem-equivalent unit (used by every technique here)

The Event Shop prices three lines at the same 40 medals in trade 1 ([T013](T013-event-medal-economy.md)): **150 gems = 15 stones = 250 shards**. That fixes the internal exchange rates:

| 1 … | equals |
|---|---|
| **Power Stone** | **10 gems** |
| **Module Shard** | **0.6 gems** |
| **Medal** | **0.267 gems** (1 gem = 3.75 medals) |

Every reward below is restated in “gem-equivalents” so it can be compared directly against a **card slot** (50–10 000 gems) or a **lab slot** (100–3 000).

## 3. What one ticket is worth, by league

Bottom band (rank 23–30 — the realistic case for a new account), and the marginal value of the **n-th extra** ticket = `reward − 10n`:

| League (bottom band) | Gems | Stones | Keys | **Gem-equiv./ticket** | marginal 1st → 6th extra ticket |
|---|---|---|---|---|---|
| Copper | 10 | 5 | – | **60** | +50 / +40 / +30 / +20 / +10 / 0 |
| Silver | 40 | 12 | – | **160** | +150 … +100 |
| Gold | 50 | 20 | – | **250** | +240 … +190 |
| Platinum | 100 | 20 | – | **300** | +290 … +240 |
| Champion | 175 | 20 | – | **375** | +365 … +315 |
| Legend | 250 | 100 | 0–1 | **1 250** | +1 240 … +1 190 |
| Mythic | 335 | 225 | 8–20 | **2 585** | +2 575 … +2 525 |

Rank 1 for reference: Copper 100 gems/20 stones; Gold 300/80; Platinum 425/180; Champion 550/300; Legend 675/375/25 keys; Mythic 900/475/50 keys.

**Reading the table:**
1. **Buying 3–5 extra tickets is profitable from Gold upward** (marginal value ≥ 190 gems vs a ticket cost of 30–50). In **Copper** the marginal value hits 0 at the 6th ticket, so 1–3 extras is the right number there.
2. **Promotion is the biggest lever, and it is one-way below Platinum**: Copper → Gold more than quadruples a bottom-place ticket (60 → 250) with no demotion risk.
3. **Stones are why you play**: the GT+DW+BH sync costs **910 stones** ([T008](T008-uw-sync-with-stones.md)) = 45 stone-trades in the event shop but only ~9 bottom-place Gold tournaments.

## 4. Tournament-specific build facts (they change the card preset)

- **Perks do not exist in tournaments** (T011) — so the perk-driven coin engine is off; tournaments are a *wave*-score contest, optimise for **wave count**, not coins/min.
- Every league above Copper adds **Heat** (battle conditions) that ramps with waves, reaching full strength at **wave 1 000**. Copper has none.
- **“More bosses” (Overheat) is static per league**: a boss every **10** waves in Copper, **9** Silver, **8** Gold, **7** Platinum, **6** Champion, **5** Legend. (This is also the cleanest evidence that the *normal* interval is 10 — see [H012](../hypotheses/H012-boss-interval-reroll-rate.md).)
- **Enemy Level Skip** is always present at **10 % (Gold) / 20 % (Platinum) / 30 % (Champion) / 50 % (Legend)**, and from **Platinum** up **Death Defy or Energy Shield** is active as a battle condition; Silver adds 1 extra random condition, Gold 2, … Legend 5.
- Tie rule: **everyone in a tie gets the lowest rank's reward** of the tied group — so beating the player above you by a **single wave** is worth a full step, and the last minute of the run matters most.
- Card swaps between tickets are cheap when no boss/fleet enemy is alive; use a **push preset** (Energy Net, Second Wind, Demon Mode, Nuke, Plasma Cannon) instead of the farming preset ([T012] step 5). **Slow Aura** is S-tier in tournaments only.

## 5. Steps (UI only)

1. Before 00:00 UTC on **Wednesday / Saturday**, end any active run. On the home screen tap the **Tournament icon** → the **Tournament Start Panel**.
2. Tap the **ad** icon for the free extra ticket, then spend **1–3** gem tickets (the panel shows the rising 10 / 20 / 30 price). Stop when the next ticket's price exceeds the league value in §3.
3. Read the **Tournament Conditions Panel** (and the **Heat** bar at the top during the run) once per league — it lists this bracket's Heat modifiers, so you know whether to expect extra bosses or level-skip.
4. Run the push preset, then let the run end naturally; the **Tournament Progress Panel** shows your current placement while you play.
5. After the tournament closes, claim on the **Tournament End / Finished Panel** — rewards (gems, stones, keys from Legend up) sit there until claimed.
6. Check the **leaderboard** (same panel) for the wave you need to overtake the player directly above you next time; that gap is your target wave for the next bracket.
7. Also claim the **“Participate in xx tournaments”** event mission (1/2/3) — see [T013] §3.

## 6. Reproduction checklist

- [ ] The join panel prices the 1st extra ticket at **10** gems, the 2nd at **20**, the 3rd at **30**.
- [ ] One finished run consumes exactly **1** ticket and posts its best wave.
- [ ] A bottom-place Copper finish pays **10 gems + 5 stones**; after 2 promotions a bottom-place finish pays **50 gems + 20 stones** (Gold).
- [ ] Bosses appear every **10** waves in Copper and every **8** in Gold (count the wave counter between boss spawns).
- [ ] Two players with the **same** wave both receive the lower of the two reward rows.
- [ ] Leaving **Gold** for Platinum never drops you back to Copper/Silver/Gold.
- [ ] Keys appear only from **Legend** (0 at rank 25–30, up to 25 at rank 1).

## 7. Falsification

- If the ticket price does not increase by 10 each purchase, the linear ladder is stale → re-derive the “how many tickets” rule from the panel.
- If a second ticket's run **does not** pay its own reward (only your best wave counts), then the marginal-value column in §3 over-counts — see [H014](../hypotheses/H014-per-ticket-payout.md) and buy exactly **one** extra ticket.
- If a bottom-place Gold finish pays something other than 50 gems / 20 stones, record the actual table and correct §3 (the tables are versioned; Mythic only exists since v29).
- If Heat conditions do not ramp to a cap at wave 1 000, note the real cap — it changes whether long tournament runs are worth it.

## Sources

- fandom `Tournaments` (raw wikitext) — 30-player brackets, 7 leagues, Wed/Sat 00:00 UTC, ticket pricing (10 × n gems + ad), promotion top-4 / demotion bottom-6 with protected Copper–Gold, tie rule, Heat ramp to wave 1 000, boss-interval per league (10→5), Enemy Level Skip 10/20/30/50 %, Death Defy/Energy Shield from Platinum, and the complete per-league gem/stone/key reward tables (Mythic added in v29, 26 Aug 2026).
- `tools/gm_strings.txt` — `TournamentManager`, `TournamentAttempt`, `TournamentPrizeEntry`, `TournamentLeaderboardEntry`, `HeatDefinition`, and the exact panel names `Tournament Start Panel`, `Tournament Progress Panel`, `Tournament End Panel`, `Tournament Finished Panel`, `Tournament Conditions Panel`, `Tournament Heat Main Bar`.
- Remote-config keys seen in the binary: `haveTournamentVersion`, `joinTournamentV5`, `tournamentRegisterLoggingEnabled`, `banFromTournamentInternalV2` (a server-side join version + a ban list ⇒ joining is a server call, so an offline join will fail).
