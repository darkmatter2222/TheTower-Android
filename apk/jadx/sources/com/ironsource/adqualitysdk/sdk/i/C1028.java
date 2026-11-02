package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1028 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0999 f3631;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0691 f3632;

    public C1028(C0999 c0999, C0691 c0691) {
        this.f3631 = c0999;
        this.f3632 = c0691;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        int iM2049;
        C0999 c0999 = this.f3631;
        C0841 c0841 = c0999.f3525;
        String str = c0999.f3526 + StringFog.decrypt("jQ==\n", "p0Bl/NtYPNE=\n");
        C0389 c0389 = c0841.f3107;
        c0389.getClass();
        try {
            iM2049 = c0389.f1887.m2049(str);
        } catch (Throwable unused) {
            iM2049 = 0;
        }
        AbstractC0340.m2054(new C1054(this, iM2049));
    }
}
