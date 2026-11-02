package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ο, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0263 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0252 f1288;

    public C0263(C0252 c0252) {
        this.f1288 = c0252;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
        C0288 c0288 = this.f1288.f1199.f808;
        synchronized (abstractC1081M2437) {
            abstractC1081M2437.f3816.add(c0288);
        }
        AbstractC0340.m2054(new C0266(this));
    }
}
