package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0800 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0798 f3018;

    public C0800(C0798 c0798) {
        this.f3018 = c0798;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0690 c0690 = this.f3018.f3015;
        String str = C0690.f2621;
        c0690.m2249(false);
        C1045 c1045 = this.f3018.f3016;
        if (c1045 != null) {
            try {
                c1045.mo1856();
            } catch (Exception e) {
                AbstractC1071.m2436(StringFog.decrypt("r1BX0GiaG5Sd\n", "7j42vBHucvc=\n"), StringFog.decrypt("7+LcDvETp/6K48sP53a49cTklEHsXY3/x+DCBPdaof4=\n", "qpCuYYMzzpA=\n"), e, false, false, true);
            }
        }
    }
}
