package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1020 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0961 f3621;

    public C1020(C0961 c0961) {
        this.f3621 = c0961;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0961 c0961 = this.f3621;
        synchronized (c0961) {
            c0961.f3413 = true;
        }
        C0565 c0565 = this.f3621.f3417;
        if (c0565 != null) {
            c0565.mo1920();
        }
        Iterator it = new ArrayList(this.f3621.f3416).iterator();
        while (it.hasNext()) {
            ((InterfaceC0142) it.next()).mo1920();
        }
        this.f3621.f3416.clear();
        Iterator it2 = new ArrayList(this.f3621.f3415).iterator();
        while (it2.hasNext()) {
            ((InterfaceC0142) it2.next()).mo1920();
        }
    }
}
