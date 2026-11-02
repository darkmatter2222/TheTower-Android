package com.ironsource.adqualitysdk.sdk.i;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ῑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0839 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0836 f3105;

    public C0839(C0836 c0836) {
        this.f3105 = c0836;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        HashSet hashSet;
        C0835.m2285(this.f3105.f3100, true);
        C0835 c0835 = this.f3105.f3100;
        synchronized (c0835) {
            hashSet = new HashSet(c0835.f3097);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((InterfaceC0486) it.next()).mo2111();
        }
    }
}
