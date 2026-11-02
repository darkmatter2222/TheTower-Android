package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﯩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0974 implements InterfaceC0486 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0971 f3471;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0122 f3472;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0771 f3473;

    public C0974(C0971 c0971, AbstractC0771 abstractC0771, InterfaceC0122 interfaceC0122) {
        this.f3471 = c0971;
        this.f3473 = abstractC0771;
        this.f3472 = interfaceC0122;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0486
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2111() {
        C0835 c0835 = this.f3471.f3465.f3349.f3123;
        synchronized (c0835) {
            c0835.f3097.remove(this);
        }
        this.f3471.f3465.m2307(this.f3473, this.f3472);
    }
}
