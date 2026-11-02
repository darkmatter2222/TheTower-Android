package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0596 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0582 f2385;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2386;

    public C0596(C0582 c0582, Activity activity) {
        this.f2385 = c0582;
        this.f2386 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0582 c0582 = this.f2385;
        c0582.f2347 = true;
        InterfaceC0517 interfaceC0517 = c0582.f2346;
        if (interfaceC0517 != null) {
            interfaceC0517.mo2114(this.f2386);
        }
    }
}
