package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.乁, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0904 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3191;

    public C0904(C0893 c0893) {
        this.f3191 = c0893;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        ArrayList<B0> arrayList = new ArrayList(this.f3191.f3177.values());
        this.f3191.f3177.clear();
        for (B0 b0 : arrayList) {
            b0.f3174 = null;
            C0733.m2256().m2257(b0);
        }
    }
}
