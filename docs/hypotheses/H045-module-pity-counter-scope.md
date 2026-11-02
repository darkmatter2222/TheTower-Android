# H045 — Is the module pity counter per banner or shared across banners?

Status: open · Raised: 2026-11-02

**Claim.** The 150-pull bad-luck protection (fandom `Modules`: “your 150th pull without an epic is guaranteed to be an
epic module”, plus “every 10-pull is guaranteed to have at least 1 rare module”) is stored **per banner**, so switching
from the *Standard Banner* to a *featured* banner restarts that banner’s counter and the effective Epic rate of a
session that alternates banners is lower than the single-banner figure of **≈ 39.1 pulls ≈ 782 gems per Epic**
([T010 §1](../techniques/T010-module-merge-chain.md)).

**Why it matters.** Featured banners are the ones with “different chances”, and they are the only place the desired Epic
appears with a raised rate. If the pity is shared, pulling 150 times on the Standard banner *pre-loads* the guarantee for
the featured banner (a real discount worth up to 3 000 gems). If it is per banner, alternating wastes the counter and each
banner needs its own 3 000-gem worst case.

**Settling observation (device).** Note the pity counter value shown in the **Standard Banner** panel (the panel displays
the pull count toward the guarantee). Pull a known number of times there, open the **featured banner** and read *its*
counter, then return to the Standard Banner and read it again.
- Shared: both panels show the same running total, and it keeps counting up across banners.
- Per banner: each panel keeps its own number (the featured banner starts at 0 and the Standard value is unchanged).

**Kill condition for the derived numbers.** If the counter is per banner, the “782 gems/Epic” figure only applies to a
banner you pull on exclusively; record the per-banner worst case as 150 pulls = **3 000 gems**.
