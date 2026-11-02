package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0565 implements InterfaceC0142 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0429 f2310;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ String f2311;

    public C0565(C0429 c0429, String str) {
        this.f2310 = c0429;
        this.f2311 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0142
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1920() {
        C0580 c0580;
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        String strDecrypt = StringFog.decrypt("lmiWv8vQ\n", "5Qf50qex+GQ=\n");
        String str = this.f2311;
        C0961 c0961 = (C0961) abstractC0953M2334;
        if (strDecrypt != null) {
            c0580 = (C0580) c0961.mo2349().get(strDecrypt);
        } else {
            c0961.getClass();
            c0580 = null;
        }
        if (c0580 == null || !c0580.m2137(str)) {
            return;
        }
        C0272 c0272 = this.f2310.f1972;
        String str2 = C0272.f1348;
        c0272.m2025(true);
    }
}
