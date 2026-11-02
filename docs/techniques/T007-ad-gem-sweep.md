# T007 — Ad-gem sweep: harvest every daily gem source inside the 60-claim cap

Rev: 2 (2026-11-01) — the daily **hard cap is now known** (60 claims/day = 360 gems, official v29 patch notes),
the per-claim amounts are updated for v29 (**6** gems, was 5) and the Store free claim (**20**, was 15); a bank-vs-cap
arithmetic table added. · Currency: **Gems** · Status: **Amounts verified** against the wiki + patch notes (no device
count yet for the cap semantics → [H029](../hypotheses/H029-ad-gem-cap-counts-taps-or-timers.md))

| | |
|---|---|
| **Value** | ★★★ — the whole no-cost daily gem flow is **≈ 380–900 gems/day** (360 from ad claims + 20 from the Store |
| | free claim + missions/floating gems), which is the funding source for card slots (50 → 10 000 gems) and lab rushes |
| | ([T009](T009-gem-spend-order.md), [T012](T012-card-deck-order.md)). Missing one day is unrecoverable. |
| **Confidence** | **High** — the cap and both payouts are stated verbatim in the developer's own v29 patch notes |
| | (“*Ad Gem claims are now capped to 60 claims per day (360 gems), resetting at 00:00 UTC*”, “*Increased Daily Gem |
| | claim from 15 → 20 gems*”, “*Increased payout from Ad Gem … from 5 → 6 gems*”). **Medium** on how the cap |
| | interacts with the Vault's `Ad Gem Stack` bank (H029). |
| **Ease** | 1 tap per source; the cap makes the whole sweep **60 taps + 1** · |
| **Prerequisite** | none (available from the first run) · the 5× bank needs the Vault (Legends league, T017) |

---

## 1. The daily ledger (v29 values)

| Source | Where to tap | Gems | Cadence / limit |
|---|---|---|---|
| **Ad Gems** | the icon in the **bottom-left** of the main screen | **6** (was 5) | ≈ every 10 min; **≤ 60 claims/day** = **360 gems** |
| **Free Store Gems** | **Store → Free** (rewarded) | **20** (was 15) | once/day |
| **Floating Gems** | the gem orbiting the tower on the main view | 2 | appears during runs, just tap |
| **Daily Missions** | **Missions** panel, claim each tile | 3 each | 3–5 tiles/day ([T004](T004-mission-farming-low-tier.md)) |
| **Weekly Challenge** | Missions panel, when the daily counter fills | 10–30 | weekly |
| **Tournament** | **Tournament** panel | 5–600 | 2×/week ([T014](T014-tournament-tickets.md)) |
| **Milestones** | **Milestones** panel | 4 675 free through T12 | one-time ([T019](T019-milestone-claim-engine.md)) |

The **00:00 UTC reset** is the same instant as the tournament start and the daily-mission reset, so one sitting at
00:05 UTC collects everything with no second launch (T014 §1, T004).

## 2. The cap arithmetic (the reason the order matters)

Two independent limits apply to the bottom-left ad gem:

* **timer limit:** a claim becomes available ≈ every **10 min** → at most **144** accrued claims/day;
* **hard cap:** **60 claims/day** (360 gems at 6 gems each), remote-config key `hardCapAdGemsEnabled`
  (`tools/gm_strings.txt`).

So **without** the Vault's `Ad Gem Stack` bank, the cap binds first: 60 claims × 6 = **360 gems/day**, and the ~84
unclaimed timers that accumulated by midnight are simply lost.

The Vault line **`Ad Gem Stack` L1–L4** (10 + 20 + 40 + 60 = **130 keys**, Harmony → Gameplay, T017 Tier A) lets
**2 / 3 / 4 / 5** claims wait. Whether that raises the daily total depends on what the cap counts
([H029](../hypotheses/H029-ad-gem-cap-counts-taps-or-timers.md)):

| If the cap counts… | 5× bank daily total | Value of the 130 keys |
|---|---|---|
| **tap events** (60 taps, each paying up to 5 stacked timers) | up to **864** gems (144 accrued timers × 6) | **+504 gems/day** |
| **timer units** (60 accrued timers = 360 gems, no matter how you tap) | **360** gems | fewer taps only (QoL) |

Either way the bank is a **tap-reducer**: with a 5× stack you can take **12 taps/hour-block** instead of 60 and lose
nothing, which is what makes an AFK/overnight account lose zero gem income (T017's `Auto Restart` pairing).

## 3. Steps (UI only)

1. At **00:05 UTC**: main screen → tap the **floating gem** orbiting the tower (2 gems).
2. **Store → Free** → claim the rewarded gem offer = **20**.
3. **Missions** panel → claim every completed tile; then the **Weekly Challenge** row if the daily counter is full.
4. **Tournament** panel → claim any finished bracket reward before the next one starts.
5. Now drain the ad queue: tap the **bottom-left ad gem** icon each time it shows a number; with the `Ad Gem Stack`
   bank installed, wait until the icon shows **5** before tapping (one tap = 5 claims).
6. Keep the count in mind: **60 claims/day** — after that the icon keeps paying nothing until the 00:00 UTC reset, so
   stop tapping it and spend the remaining session on runs instead of on the icon.
7. Convert the gems per [T009](T009-gem-spend-order.md): lab slots → card slots → **`Max Interest` L1–L4**
   ([T001](T001-interest-idle-engine.md) §4) — **not** on research speed-ups.
8. Bonus: the daily-mission row **“Claim AD Gems xx times”** has a 60-claim tier, i.e. exactly the cap — so the whole
   ad sweep also finishes that mission for medals (T013 §4).

## 4. Reproduction checklist

- [ ] The bottom-left ad icon pays **6** gems per claim (v29+), and the **Store → Free** offer pays **20**.
- [ ] The icon's badge counts stacked claims up to **5** once `Ad Gem Stack` L4 is bought (10/20/40/60 keys).
- [ ] After ~60 claims in one calendar day the icon stops paying, and it is back after the 00:00 UTC reset.
- [ ] Total gems on the day, with no purchases: ≈ **380–900** depending on the bank level (H029 decides which).
- [ ] Missions/Weekly/Tournament tiles all show no unclaimed badge at the end of the sweep.

## 5. Falsification

- If the icon keeps paying past 60 claims in a day, the cap is per-offer or per-hour, not per day → count the actual
  stop point and rewrite §2 (this is the H029 read, so take both numbers in one day).
- If a claim pays **5** gems, the client is pre-v29 (or the remote config is not yet applied) → the cap numbers above
  still hold in shape but scale: 60 × 5 = 300.
- If the 5× bank does **not** increase the per-tap payout (still 6), `Ad Gem Stack` is a timer-count extender only and
  reading “timer units” is correct — the 130 keys are QoL, and the daily total stays 360 (record it in H017/H029).
- If the Store free offer still reads 15, note the version and treat 15 as the current value.

## Sources

- fandom `Version History/V0.29` (raw wikitext, official patch notes) — v29, 25 Aug 2026: “*Increased Daily Gem claim
  from 15 → 20 gems*”, “*Increased payout from Ad Gem (or claim with Disable Ads) from 5 → 6 gems*”, “*Ad Gem claims
  are now capped to 60 claims per day (360 gems), resetting at 00:00 UTC — this change is to reduce the disparity of
  gems earned from running the game 24/7*”. Same page also fixes: the **Presets** lab ladder (350 K / 35 M / 3.5 B /
  350 B / 35 T coins for Card/Workshop/Bot/Module/Guardian presets), **Global Presets** at T11 W60, the module-inventory
  cap 300 → 350, **Primary Module Bonus** labs (30 levels, 1 % → 30 %), and the **Cells** card (T4 W40, +2 → +14).
- fandom `The Vault` (raw wikitext) — Harmony → Gameplay: `Ad Gem Stack` L1–L4 = 10/20/40/60 keys for a 2×/3×/4×/5×
  bank, `Auto Restart Run` 20, `Global Presets` 20 (cross-checks T017).
- game-vault `Guide:Gem_Guide` — the pre-v29 repeatable-source table (15 / 5 / 2 / 3) that the v29 notes overwrite.
- `tools/gm_strings.txt` — remote-config key `hardCapAdGemsEnabled` (the flag the patch note implements).
