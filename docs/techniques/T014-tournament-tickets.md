# T014 — Tournament tickets: buy them while the marginal value beats the next card slot

Rev: 5 (2026-11-02) — a **third print** for the ticket rules (`wiki/system/tickets`, 2026-07-29): 1 ticket automatically per
new tournament, more by **ad** or **10 gems**, and **no per-bracket cap printed anywhere** ⇒ §3's marginal-ticket rule is
the only limiter; the `10` vs `10 rising by 10` difference between the two site pages is a first-purchase vs
per-purchase print, reconciled in §3.1.
Rev: 4 (2026-11-02) — the league tables are now **double-sourced** (Tower Hub `wiki/system/seasons`-era pages,
2026-11-01): **four bottom bands re-add identically** (Copper 60 · Silver 160 · Gold 250 · Platinum 300 gem-equiv.), the
ticket ladder and promotion rules confirm; a **top-rank version skew** is recorded (§3.1); and the **four
battle-condition labs** join the ledger (§4.1: gates T18 W1000 / T19 W100 / T19 W500 / T20 W60 / T21 W1000, with two
cost series that close — ×1.5 to **113.33 q** and ×2 to **2046 q**).
Rev: 3 (2026-11-01) — added the Dissonance interaction (§1); Rev 2 added the key ladder cross-check · Currency: **Gems**, **Power Stones**, **Keys** (Legend+, the key ladder itself: [T017](T017-vault-keys-priority.md)), plus medal missions that count tournaments
**Value:** ★★★★ — a bottom-place run in your *current* league is worth 60 → 2 585 gem-equivalents per ticket, and **stones** (the UW sync fuel, T008) come almost entirely from here.
**Confidence:** **High** — the schedule, ticket ladder, promotion rules, tie rule and the **bottom reward bands** are now
printed identically by **two** sources (fandom raw wikitext + Tower Hub 2026-11-01), and the three lab cost series close
as geometric laws (×2.05 / ×1.5 / ×2) with re-added sums; only the top-rank rows carry a version skew (§3.1).
**Ease:** 2 taps (join, claim) + 1 run per ticket · **Prerequisite:** **Tier 1 Wave 60** milestone.

---

## 1. The schedule and the ticket price ladder

- A tournament starts **every Wednesday and Saturday at 00:00 UTC**; each bracket is **30 players** in one league.
- Leagues, ascending: **Copper → Silver → Gold → Platinum → Champion → Legend → Mythic**.
- **1 ticket = 1 run**; your highest wave in that run is what is scored. You get **1 free ticket** when the tournament starts, plus **1 more from a rewarded ad**, and more from gems: the **n-th extra ticket costs `10 × n` gems** (10, 20, 30, 40 …).
- **Dissonance interaction:** in a bracket the tier's **own** Dissonant Boost is *not* applied, only the **echo** from
  other tiers (`1 + 0.005 × B × Σ f`, i.e. ≈+0.01 per finished tier before the Echo labs) — so the coin multiplier you
  read in a bracket is far below the **Dissonance** panel value for that tier
  ([T021](T021-dissonant-runs-echo.md) §6, test in [H028](../hypotheses/H028-dissonance-boost-in-tournaments.md)). Use
  the push preset for the wave, not for the multiplier.
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
| Legend | 250 | 100 | 0–25 | **1 250** | +1 240 … +1 190 |
| Mythic | 335 | 225 | 8–50 | **2 585** | +2 575 … +2 525 |

Rank 1 for reference: Copper 100 gems/20 stones; Gold 300/80; Platinum 425/180; Champion 550/300; Legend 675/375/25 keys; Mythic 900/475/50 keys.

**Reading the table:**
1. **Buying 3–5 extra tickets is profitable from Gold upward** (marginal value ≥ 190 gems vs a ticket cost of 30–50). In **Copper** the marginal value hits 0 at the 6th ticket, so 1–3 extras is the right number there.
2. **Promotion is the biggest lever, and it is one-way below Platinum**: Copper → Gold more than quadruples a bottom-place ticket (60 → 250) with no demotion risk.
3. **Stones are why you play**: the GT+DW+BH sync costs **910 stones** ([T008](T008-uw-sync-with-stones.md)) = 45 stone-trades in the event shop but only ~9 bottom-place Gold tournaments.
4. **Keys have a floor, so promotion beats placement above Platinum**: Legend pays **0** at rank 25–30 and **1** at
   16–24, while bottom-band Mythic already pays **8** — i.e. a last-place Mythic finish earns as many keys as 7–8th
   in Legend. Chase the promotion, then spend the keys per [T017](T017-vault-keys-priority.md).

### 3.1 Second copy + the version skew (§3 table vs Tower Hub 2026-11-01)

The second source prints ten rank-bands per league. **Bottom bands re-add identically in four of six leagues** — Copper
10/5, Silver 40/12, Gold 50/20, Platinum 100/20 (⇒ 60 / 160 / 250 / 300 gem-equiv exactly as §3) — while three rows
carry a top-rank skew (the two wikis are weeks apart; the server may also scale brackets):

| Row | fandom (§3) | Tower Hub (2026-11-01) | note |
|---|---|---|---|
| Platinum rank 1 | 425 g / 180 st | **400 g / 160 st** | |
| Champion rank 1 | 550 g / 300 st | **600 g / 320 st** | |
| Champion bottom | 175 g / 20 st | **150 g / 20 st** (350 ge) | |
| Legend rank 1 | 675 g / 375 st / 25 keys | **800 g / 425 st / 25 keys** | |
| Legend bottom | 250 g / 100 st / 0 keys | **200 g / 120 st / 0 keys** (1 400 ge) | |
| Legend keys ladder | 1 at 16–24 | **2 / 4 / 6 / 8 / … stopping at rank 13–15, 0 from 16** | keys start at rank 1 from the top |

The decisions are unaffected (bottom bands 1–4 identical; the marginal-ticket arithmetic in §3 uses them). Record your
panel's rank-1 row if it matters; the skew is the version marker. Second source also prints: **1 ticket per bracket
entry**, extra tickets “**from watching an ad or paying gems — 10 gems for the first, rising by 10 each**” ✓ (both the
ad-ticket and the `10 × n` ladder now double-sourced — and the **third** print (`wiki/system/tickets`, 2026-07-29) confirms
“one Ticket automatically every time a new Tournament begins” plus “watch a video advertisement, or purchase a Ticket
directly for **10 Gems**”, stating the *first* price; **no per-bracket ticket cap is printed on any of the three pages**, so
the price ladder itself is the limiter); promotion “**top 4** move up, **bottom 6** from Platinum, Copper/
Silver/Gold **protected**” ✓; ties pay the **lower** rank ✓; and each league sits **between two normal tiers** in raw
enemy stats (Copper between T1–T2 … Champion between T11–T12).

## 4. Tournament-specific build facts (they change the card preset)

- **Perks do not exist in tournaments** (T011) — so the perk-driven coin engine is off; tournaments are a *wave*-score contest, optimise for **wave count**, not coins/min.
- Every league above Copper adds **Heat** (battle conditions) that ramps with waves, reaching full strength at **wave 1 000**. Copper has none.
- **“More bosses” (Overheat) is static per league**: a boss every **10** waves in Copper, **9** Silver, **8** Gold, **7** Platinum, **6** Champion, **5** Legend. (This is also the cleanest evidence that the *normal* interval is 10 — see [H012](../hypotheses/H012-boss-interval-reroll-rate.md).)
- **Enemy Level Skip** is always present at **10 % (Gold) / 20 % (Platinum) / 30 % (Champion) / 50 % (Legend)**, and from **Platinum** up **Death Defy or Energy Shield** is active as a battle condition; Silver adds 1 extra random condition, Gold 2, … Legend 5.
- Tie rule: **everyone in a tie gets the lowest rank's reward** of the tied group — so beating the player above you by a **single wave** is worth a full step, and the last minute of the run matters most.
- Card swaps between tickets are cheap when no boss/fleet enemy is alive; use a **push preset** (Energy Net, Second Wind, Demon Mode, Nuke, Plasma Cannon) instead of the farming preset ([T012] step 5). **Slow Aura** is S-tier in tournaments only.

### 4.1 The battle-condition lab layer (printed 2026-11-01, closes in two cost series)

The “Heat” you fight is reduced by **five** lab lines (all costs in **q** = quadrillion coins):

| Lab | Gate | Levels | Per level | Cost series (first → last) | Σ printed |
|---|---|---|---|---|---|
| `Battle Condition Reduction` (all conditions) | **T18 W1000** | 10 | **+2 %** (L1 = 2 %, L10 = 20 %) | 1 q → 639.42 q (**×2.05/lv**, all 9 ratios ✓) | **1 247.44 q** |
| Group 1 (Knockback/Thorns/Orb/Plasma/Death-Ray Res.) | **T19 W100** | 20 | **+0.21 %** | per panel | — |
| Group 2 (Armored/Enemy Speed/More Enemies/Atk Speed) | **T20 W60** | 20 | **+0.51 %** | per panel | — |
| Group 3 (enemy-type ultimates) | **T19 W500** | 10 | **+1 %** | 1 q → 38.44 q (**×1.5/lv** ✓) | **113.33 q** |
| Group 4 (UW Durations, Death Defy/Energy Shield Down, Enemy Level Skip) | **T21 W1000** | 10 | **+1 %** | 2 q → 1024 q (**×2/lv**, Σ = 2(2¹⁰−1) ✓) | **2046 q** |

The site prints the strength law as “**M = 1 − Battle Condition Reduction − the condition's own lab; the two add
up**” — i.e. generic + own-lab percentages sum *before* scaling the condition (additive inside, multiplicative on the
condition). The random-pool sizes are printed per league: **15** (Silver–Platinum) / **16** (Champion) / **17**
(Legend & Mythic), always including **Orb Resistance**, plus Death-Defy-Down *or* Energy-Shields-Down from Platinum;
the full condition list is a 30-row table (“Showing 10 of 30 rows”). The reduction labs exclude the **Ultimate Weapon
Duration** condition (only Group 4 touches it).

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
- [ ] Keys appear only from **Legend** (0 at rank 25–30, up to 25 at rank 1), and from **Mythic** (floor **8** at rank 25–30, **50** at rank 1) — full table in [T017 §1](T017-vault-keys-priority.md).
- [ ] A Platinum bottom-band finish reads **100 gems / 20 stones** in **both** wiki copies (§3.1).
- [ ] One **Group 4** lab level (e.g. `Enemy Level Skip Reduction`) costs **2 q** at level 1 and **1024 q** at level 10
      (the ×2 series), the generic `Battle Condition Reduction` L1 = **1 q / +2 %**,
      and a new bracket grants exactly **1** ticket before the panel offers an **ad** and a **10-gem** purchase that rises
      by 10 per purchase in the same bracket (§3.1; no cap is printed anywhere).

## 7. Falsification

- If the ticket price does not increase by 10 each purchase, the linear ladder is stale → re-derive the “how many tickets” rule from the panel.
- If a second ticket's run **does not** pay its own reward (only your best wave counts), then the marginal-value column in §3 over-counts — see [H014](../hypotheses/H014-per-ticket-payout.md) and buy exactly **one** extra ticket.
- If a bottom-place Gold finish pays something other than 50 gems / 20 stones, record the actual table and correct §3 (the tables are versioned; Mythic only exists since v29).
- If Heat conditions do not ramp to a cap at wave 1 000, note the real cap — it changes whether long tournament runs are worth it.
- If the two §3.1 copies disagree on the **bottom band** (not just top ranks), the server re-scaled the brackets → trust
  the in-game panel and re-derive §3's gem-equiv column; the marginal-ticket rule itself is ratio-based and survives.
- If a Group-4 lab level 10 costs something other than **1024 q**, the ×2 series changed → re-read the ten printed costs
  and rebuild §4.1's Σ column; the +1 %/level values are independent of the series.

## Sources

- Tower Hub `wiki/system/tournaments` (last verified **2026-11-01**, 12 data tables) — the second copy of all six league
  tables (bottom bands identical, top-rank skew per §3.1), the ticket rule “1 free + ad or gems, **10 rising by 10**”,
  “top 4 promote / bottom 6 from Platinum / Copper–Gold protected”, tie → lower rank, the between-two-tiers enemy-stat
  rule, Heat full strength at **W1000** and the static boss ladder **10/9/8/7/6/5**, the 30-row condition list, pool
  sizes 15/15/15/16/17 with forced Orb Resistance, the **M = 1 − BC-Reduction − own-lab** law, and the four
  battle-condition labs with gates (T18 W1000, T19 W100, T19 W500, T20 W60, T21 W1000) and the three closing cost series
  (**×2.05** Σ 1 247.44 q · **×1.5** Σ 113.33 q · **×2** Σ **2046 q** = 2(2¹⁰−1) ✓). `wiki/system/seasons` (2026-07-29)
  confirms T016: **8-week** season, tokens auto-cash at season end, **bits carry over**.
- Tower Hub `wiki/system/tickets` (last verified **2026-07-29**) — the third print of the ticket rules: “Tickets function as
  the entry fee for Tournament Battles… you must spend **one Ticket** per Battle”, “You receive **one Ticket automatically**
  every time a new Tournament begins”, and for more: “watch a **video advertisement**, or purchase a Ticket directly for
  **10 Gems**”; the page lists **no ticket cap**, so the rising price is the only limiter (§3.1).
- fandom `Tournaments` (raw wikitext) — 30-player brackets, 7 leagues, Wed/Sat 00:00 UTC, ticket pricing (10 × n gems + ad), promotion top-4 / demotion bottom-6 with protected Copper–Gold, tie rule, Heat ramp to wave 1 000, boss-interval per league (10→5), Enemy Level Skip 10/20/30/50 %, Death Defy/Energy Shield from Platinum, and the complete per-league gem/stone/key reward tables (Mythic added in v29, 26 Aug 2026).
- fandom `Currency/Keys` (raw wikitext) — the per-rank key table for Legend and Mythic and the “fewer than 9 players pay less” caveat.
- `tools/gm_strings.txt` — `TournamentManager`, `TournamentAttempt`, `TournamentPrizeEntry`, `TournamentLeaderboardEntry`, `HeatDefinition`, and the exact panel names `Tournament Start Panel`, `Tournament Progress Panel`, `Tournament End Panel`, `Tournament Finished Panel`, `Tournament Conditions Panel`, `Tournament Heat Main Bar`.
- Remote-config keys seen in the binary: `haveTournamentVersion`, `joinTournamentV5`, `tournamentRegisterLoggingEnabled`, `banFromTournamentInternalV2` (a server-side join version + a ban list ⇒ joining is a server call, so an offline join will fail).
