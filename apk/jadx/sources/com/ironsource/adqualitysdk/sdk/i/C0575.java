package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0575 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0571 f2332;

    public C0575(C0571 c0571) {
        this.f2332 = c0571;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean zMo2335;
        C0392 c0392 = this.f2332.f2322;
        String str = C0392.f1894;
        synchronized (c0392) {
            zMo2335 = AbstractC0953.m2334().mo2335();
        }
        if (zMo2335) {
            AbstractC0340.m2056(new C0576(this), AbstractC0953.m2334().mo2350());
        }
    }
}
