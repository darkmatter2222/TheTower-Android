package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0970 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0961 f3463;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0142 f3464;

    public C0970(C0961 c0961, InterfaceC0142 interfaceC0142) {
        this.f3463 = c0961;
        this.f3464 = interfaceC0142;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean z;
        this.f3463.f3415.add(this.f3464);
        C0961 c0961 = this.f3463;
        synchronized (c0961) {
            z = c0961.f3413;
        }
        if (z) {
            this.f3464.mo1920();
        }
    }
}
