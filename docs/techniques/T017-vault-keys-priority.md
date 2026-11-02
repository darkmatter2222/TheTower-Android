# T017 — Vault: the Keys priority ladder (Harmony first, then 6 card slots, then the coin lines)

Rev: 1 (2026-11-01) · Currency: **Keys** (spent) — pays back in **Gems**, **Coins**, **Cash**, **Module Shards**
**Value:** ★★★★★ once the tab is open — a single Harmony line (**Ad Gem Stack, 130 keys**) multiplies the T007
ad-gem flow by **5×**, and the three Utility coin lines are **+500 % each** for 250 keys apiece.
**Confidence:** **Medium-High** — the section list, every per-level cost, the key-per-rank table and the ~73 000-key
full-max figure are the fandom raw wikitext (`Vault`, `Currency/Keys`); the ordering and the keys/key ratios below
are derived. No on-device capture yet → **Unverified**.
**Ease:** 1 tap per level, but **1** free respec total · **Prerequisite:** promotion into the **Legend** league
(the Vault icon only appears on the home screen after that — see [T014](T014-tournament-tickets.md)).

---

## 1. How Keys arrive, and why rank is the whole lever

Keys come **only** from finished **Legend** and **Mythic** tournaments ([T014](T014-tournament-tickets.md) §1).
Two tournaments per week (Wed + Sat 00:00 UTC), one score each.

| Your rank | Legend | Mythic |
|---|---|---|
| 1 | 25 | 50 |
| 2 | 20 | 45 |
| 3–4 | 15 | 40 |
| 5–6 | 10 | 37 |
| 7–8 | 8 | 34 |
| 9–10 | 6 | 31 |
| 11–12 | 4 | 28 |
| 13–15 | 2 | 25 |
| 16–24 | **1** | 20 |
| 25–30 | **0** | **8** |

Brackets with fewer than 9 players pay **less** than this table (see [H018](../hypotheses/H018-vault-key-bracket-size.md)).

Derived consequences:
1. **A dead-last Mythic finish (8 keys) equals a 7–8th place Legend finish**, and beats 16th–30th in Legend
   (1 → 0 keys) by ∞. So in Legend, place top-8 or be promoted; mid-field Legend is the worst place to sit.
2. At 16 keys/week (Mythic, bottom band) the **≈ 73 000 keys** needed to max the Vault is unreachable — so the
   ladder below is not advice, it is the *only* viable order. Nothing in the Vault compounds on its own except
   the card-slot and coin-percentage lines.
3. Buying extra tickets with gems is still the cheapest key source: 8–10 gems buys 1 run ≈ up to 1–8 keys
   (T014 §3 says the ticket itself already returns 1 250+ gem-equivalents in those leagues).

## 2. Structure (so you know where the taps are)

* **Harmony** tab = 7 sections, each with a **key cost to unlock the section**; contents are **hidden until the
  section is unlocked**, so unlock a section only when you can also afford 1–2 lines in it:
  **Gameplay 0**, **Cards 5**, **Ultimate Weapons 5**, **Modules 5**, **Bots 10**, **Workshop 10**, **Guardian 10**.
* **Power** tab = 4 sections, **25 keys each**: Attack, Defense, Utility, Ultimate Weapons. Inside, a stat line has
  5 levels priced **10 / 20 / 40 / 70 / 110 = 250 keys** (the UW section's *Ultimate Damage* is cheaper:
  5/10/20/35/55 = **125**); a few 3-level lines cost 20/40/70 = 130.
* **Enemies** tab = 4 sections: **Simple 0**, **Advanced 50**, **Elites 100**, **Fleets 150**. Every enemy type has
  **three separately-purchased options**, each priced per level 25, 26, 28, … 103 → **1 662 keys for one option at
  level 30** (level 1 = 25 keys, i.e. the *most* expensive per-level start in the Vault).
* **One free respec** per account refunds all spent keys (the binary's `VaultRespecWindow`), so spend 1–2 keys to
  learn the layout, keep the respec for a real allocation change.

## 3. The priority ladder (keys ÷ value, derived)

**Tier A — Harmony QoL, all ≤ 25 keys each** (these convert directly into gems or save gems):

| Buy | Keys | What it returns |
|---|---|---|
| **Daily Mission Shard Type** (Modules) | 10 | daily-mission shard rewards become the module type you actually use — no more 40 %-of-value wasted shards |
| **Free Mission Reroll** (Modules) | 15 | **unlimited** free module rerolls → removes the whole 10/40/160/500/1 000/1 600/2 250/3 000 gem ladder (T010) |
| **Auto Shatter Rare Modules** (Modules) | 5 | shards without tapping |
| **Ad Gem Stack L1–L4** (Gameplay) | 10+20+40+60 = **130** | ad gems bank to **2×/3×/4×/5×** → the T007 ad flow becomes a 5-claim bank (≈ 25 gems in one tap) — see [H017](../hypotheses/H017-ad-gem-stack-semantics.md) |
| **Global Presets** (Gameplay) | 20 | +3 global presets (T012/T015/T010 all use presets) |
| **Additional Card Slot 1–6** (Cards) | 5/10/20/40/60/80 = **215** | **+6 card slots** — the cheapest card slots in the game (the gem ladder starts at 50/slot, T012) |
| **Bot Respec Discount L1–3 + Bot Presets** (Bots) | 5+10+15+20 = 50 | 99 % discounted bot respecs + 3 presets + **no respec limit** |
| **Workshop Enhancements Discount L1–9** | 2+4+…+18 = **90** | **−22.5 %** on every enhancement purchase (gem sink) |
| **Module Reroll Discount L1–8** (Modules) | **180** | −20 % on rerolls — *only* worth it after the free-reroll line, for the beyond-free levels |

**Tier B — the Power → Utility coin engine:** section **25** + **Coins/Wave** 250 (+100 % → **+500 %**),
**Cash/Wave** 250 (+500 %), **Interest/Wave** 250 (+500 %). **775 keys total** for the three biggest currency
multipliers in the game; they multiply the same numbers T001/T002 optimise, so they compound with every other
multiplier rather than replacing them. Then `Coins/Kill` (+25 %/250 keys) and `Cash Bonus` (+25 %/250 keys).

**Tier C — push-only lines (buy after A/B):** Power → Attack/Defense lines are all 250 keys for +25 %; the one
exception is **Ultimate Damage** in the Power/UW section (**125 keys** for +25 %), the best keys-per-percent line
in the Power tab. `Wall Rebuild` costs 500 keys for −100 s.

**Tier D — Enemies tab:** only **two** of the enemy options carry a currency stat:
**Basic → Coin Bonus** (+0.01 per level, +30 % at level 30, 1 662 keys) inside the **free** Simple section, and
**Boss → Common Drop Chance** (needs the 50-key Advanced unlock) which feeds common-card drops (T012).
Everything else in that tab is enemy Attack/Health/Speed/Mass/Miss/Defence reduction — push help, not income.
Take `Basic → Coin Bonus` levels 1–5 (138 keys) before paying any section unlock above 50 keys.

## 4. Steps (UI only)

1. Home screen → the **Vault** icon (only present after you are promoted to **Legend**).
2. **Harmony** tab → **Gameplay** (free) → buy **Ad Gem Stack** levels in order (10, 20, 40, 60) until keys run out;
   then **Global Presets** (20).
3. **Harmony** → **Modules** section → unlock (5 keys) → **Daily Mission Shard Type** (10) → set your module type in
   the **Daily Missions** panel's shard-type selector, then **Free Mission Reroll** (15).
4. **Harmony** → **Cards** section → unlock (5) → buy **Additional Card Slot** lines in order (5 → 80); each purchase
   adds one slot, visible immediately in the **Cards** screen.
5. **Harmony** → **Bots** / **Workshop** / **Guardian** sections as keys allow (50 / 165 / 60 keys respectively).
6. **Power** tab → unlock **Utility** (25 keys) → buy **Coins / Wave** levels 1–5, then **Cash / Wave**, then
   **Interest / Wave**. Do not unlock Attack/Defense before Utility if your goal is currency.
7. **Enemies** tab → **Simple** (free) → **Basic** → the third option (**Coin Bonus**) up to level 5; then, only if
   you still have ≥ 100 keys spare, unlock **Advanced** (50) and take **Boss → Common Drop Chance** levels.
8. Use the **respec** button (`VaultRespecWindow`) at most once — best used when a new balance changes a line's
   value, not for cosmetic rearranging.

## 5. Reproduction checklist

- [ ] The Vault icon appears **only after** the Legend promotion; before that no key counter is visible.
- [ ] Harmony section unlock prices read **0 / 5 / 5 / 5 / 10 / 10 / 10** in tab order.
- [ ] `Ad Gem Stack` level 1 costs **10** keys and the panel then says the ad-gem cap is **2×**.
- [ ] A Power stat line costs **10 / 20 / 40 / 70 / 110** for 5 levels (= 250) and **Power → Utility** unlocks at **25**.
- [ ] In the Enemies tab, **Basic**'s three options cost **25** keys at level 1 and the Simple section is free.
- [ ] Buying **Additional Card Slot** immediately raises the slot count on the Cards screen (no gem cost shown).
- [ ] The respec returns every key spent and the counter shows **0** remaining respecs afterwards.

## 6. Falsification

- If `Ad Gem Stack` 2× does **not** raise the banked ad-gem total (5 → 10 gems waiting), the line is a per-view
  multiplier instead — record both readings ([H017](../hypotheses/H017-ad-gem-stack-semantics.md)) and re-rank Tier A.
- If the third option under **Basic** is not labelled **Coin Bonus**, or a non-Simple enemy has a currency option,
  re-read the tabs: §3 Tier D ordering assumed only Basic and Boss carry income stats.
- If a Power section unlock is not **25** keys, the 775-key figure for the three coin lines changes → recompute from
  the panel and re-order Tiers B/C.
- If the key-per-rank table differs in a small bracket, the note in §1 (fewer than 9 players pay less) is the cause
  → capture one small-bracket result ([H018](../hypotheses/H018-vault-key-bracket-size.md)).

## Sources

- fandom `Vault` (raw wikitext) — three tabs, all Harmony section unlock costs and every line's key price, the
  25-key Power sections with the 10/20/40/70/110 ladder, the Enemies tab sections (0/50/100/150) with per-level
  prices 25 → 103 and the Basic-Coin-Bonus / Boss-Common-Drop-Chance stats, “upgrades not viewable before the
  section is unlocked”, and “visible once promoted into Legends”.
- fandom `Currency/Keys` (raw wikitext) — Legend/Mythic rank→key table (25→0 and 50→8), “fewer than 9 players pay
  less”, **≈ 73 000 keys** to max the Vault, and the **one free respec** per account.
- `tools/gm_strings.txt` — `Assets\Scripts\Vault\VaultManager.cs`, `VaultConfig.cs` (config asset
  `The Tower/Vault/Vault Config`), `VaultLevel`, `VaultUpgradeData`, `VaultPlayerProgress`, and UI classes
  `VaultUI`, `VaultUpgradeWindow`, `VaultRespecWindow`, `VaultGroupUnlock`, `VaultHarmonyTile`, `VaultSimpleTile`,
  `VaultEnemyTile` (a separate tile type per tab ⇒ the three tabs are structurally different, as §2 describes).
