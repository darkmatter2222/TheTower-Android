package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0332 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0303 f1594;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1595;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C1005 f1596;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1597;

    public C0332(C0303 c0303, String str, C1005 c1005, boolean z) {
        this.f1594 = c0303;
        this.f1597 = str;
        this.f1596 = c1005;
        this.f1595 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0354 c0354M2038 = this.f1594.m2038(this.f1597);
        if (c0354M2038 != null) {
            C1005 c1005 = this.f1596;
            boolean z = this.f1595;
            C0593 c0593 = c1005.f3545;
            c0354M2038.f1646 = c0593.f2382;
            c0354M2038.f1645 = c0593.f2381;
            c0354M2038.f1644 = c0593.f2380;
            c0354M2038.f1643 = c1005.f3542.m2028();
            if (StringFog.decrypt("4d9JFOR7Yg==\n", "pJEIVqg+Jv4=\n").equals(c0354M2038.f1643) || StringFog.decrypt("GLL57+bWBiA=\n", "XPuqrqSaQ2Q=\n").equals(c0354M2038.f1643)) {
                c0354M2038.f1643 = C0354.f1633;
            }
            C0593 c0594 = c1005.f3545;
            c0354M2038.f1642 = c0594.f2379;
            c0354M2038.f1641 = c0594.f2378;
            c0354M2038.f1640 = c1005.m2395();
            c0354M2038.f1637 = z;
        }
    }
}
