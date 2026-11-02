package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0954 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3392;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3393;

    public C0954(C0933 c0933, Activity activity) {
        this.f3392 = c0933;
        this.f3393 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (C0933.m2303(this.f3392, this.f3393)) {
            AbstractC0340.m2057(new C0955(this));
            C0933 c0933 = this.f3392;
            if (c0933.f3334 && !c0933.f3333 && this.f3393.isFinishing()) {
                C0933 c0934 = this.f3392;
                c0934.m2044(this.f3393);
                c0934.f3335 = false;
            }
        }
    }
}
