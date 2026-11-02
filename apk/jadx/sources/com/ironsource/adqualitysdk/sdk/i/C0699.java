package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0699 implements InterfaceC0142 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0690 f2649;

    public C0699(C0690 c0690) {
        this.f2649 = c0690;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0142
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1920() {
        C0690 c0690 = this.f2649;
        synchronized (c0690) {
            c0690.f2637 = true;
            c0690.m2249(true);
        }
    }
}
