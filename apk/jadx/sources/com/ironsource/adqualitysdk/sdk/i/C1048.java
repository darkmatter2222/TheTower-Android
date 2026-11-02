package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1048 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3694;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3695;

    public C1048(C0933 c0933, Activity activity) {
        this.f3694 = c0933;
        this.f3695 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (C0933.m2303(this.f3694, this.f3695)) {
            AbstractC0340.m2057(new C1084(this));
            C0933 c0933 = this.f3694;
            if (c0933.f3334 && c0933.f3335 && this.f3695.isFinishing()) {
                C0933 c0934 = this.f3694;
                c0934.m2044(this.f3695);
                c0934.f3335 = false;
            }
        }
    }
}
