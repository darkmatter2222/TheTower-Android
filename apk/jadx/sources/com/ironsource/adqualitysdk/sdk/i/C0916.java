package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﬤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0916 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3307;

    public C0916(C0893 c0893) {
        this.f3307 = c0893;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        ArrayList<C0933> arrayList = new ArrayList(this.f3307.f3178.values());
        this.f3307.f3178.clear();
        for (C0933 c0933 : arrayList) {
            c0933.f3174 = null;
            c0933.f3337 = null;
            AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
            synchronized (abstractC1081M2437) {
                abstractC1081M2437.f3816.remove(c0933);
            }
        }
    }
}
