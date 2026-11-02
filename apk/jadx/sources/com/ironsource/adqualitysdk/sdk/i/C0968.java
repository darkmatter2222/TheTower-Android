package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0968 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0961 f3461;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0563 f3462;

    public C0968(C0961 c0961, C0563 c0563) {
        this.f3461 = c0961;
        this.f3462 = c0563;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean z;
        C0961 c0961 = this.f3461;
        synchronized (c0961) {
            z = c0961.f3413;
        }
        if (z) {
            this.f3462.mo1920();
        } else {
            this.f3461.f3416.add(this.f3462);
        }
    }
}
