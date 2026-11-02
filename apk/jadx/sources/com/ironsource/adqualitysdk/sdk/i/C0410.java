package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0410 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0400 f1940;

    public C0410(C0400 c0400) {
        this.f1940 = c0400;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean zMo2335;
        C1035 c1035;
        EnumC0367 enumC0367;
        C0303 c0303 = this.f1940.f1920.f1899;
        if (c0303 != null && (c1035 = c0303.f1540) != null) {
            c1035.f3660 = true;
            HashMap map = c1035.f3666.f1573.f1541;
            Iterator it = ((map == null || map.isEmpty()) ? new ArrayList() : new ArrayList(map.values())).iterator();
            do {
                if (!it.hasNext()) {
                    c1035.m2423(false);
                    break;
                }
                enumC0367 = ((C0354) it.next()).f1639;
                if (enumC0367 == EnumC0367.f1680 || enumC0367 == EnumC0367.f1679) {
                    break;
                }
            } while (enumC0367 != EnumC0367.f1681);
        }
        synchronized (this.f1940.f1920) {
            zMo2335 = AbstractC0953.m2334().mo2335();
        }
        if (zMo2335) {
            C0392.m2072(this.f1940.f1920);
        }
    }
}
