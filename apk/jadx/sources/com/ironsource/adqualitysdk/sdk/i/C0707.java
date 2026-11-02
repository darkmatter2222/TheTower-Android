package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0707 extends AbstractC0789 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0690 f2660;

    public C0707(C0690 c0690) {
        this.f2660 = c0690;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾇ */
    public final void mo2033(Activity activity) {
        C0690 c0690 = this.f2660;
        if (c0690.f2632) {
            AbstractC0340.m2054(new C0806(c0690));
        }
        c0690.f2632 = false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2034(Activity activity) {
        this.f2660.m2239();
    }
}
