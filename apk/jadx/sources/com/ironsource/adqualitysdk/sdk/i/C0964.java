package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0964 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0961 f3453;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0565 f3454;

    public C0964(C0961 c0961, C0565 c0565) {
        this.f3453 = c0961;
        this.f3454 = c0565;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean z;
        C0961 c0961 = this.f3453;
        c0961.f3417 = this.f3454;
        synchronized (c0961) {
            z = c0961.f3413;
        }
        if (z) {
            this.f3454.mo1920();
        }
    }
}
