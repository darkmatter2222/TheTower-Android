package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1076 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0961 f3810;

    public C1076(C0961 c0961) {
        this.f3810 = c0961;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0853 c0853;
        C0961 c0961 = this.f3810;
        synchronized (c0961) {
            c0853 = c0961.f3423;
        }
        if (!c0853.f3123.m2288()) {
            C0272 c0272 = this.f3810.f3414.f2319.f1972;
            C0272.m2014(c0272.f1351, ISAdQualityInitError.NO_NETWORK_CONNECTION, StringFog.decrypt("qDwYTazbazaUOBhApsFyPIUnUUyn\n", "5lM4I8mvHFk=\n"));
            return;
        }
        if (this.f3810.mo2346()) {
            return;
        }
        C0272 c0273 = this.f3810.f3414.f2319.f1972;
        C0272.m2014(c0273.f1351, ISAdQualityInitError.CONFIG_LOAD_TIMEOUT, StringFog.decrypt("Iii2YThMyWkCD44lOn3jJQgUmWMAXohpBBqTJR1QxWAEDoM=\n", "a3v3BWk5qAU=\n"));
    }
}
