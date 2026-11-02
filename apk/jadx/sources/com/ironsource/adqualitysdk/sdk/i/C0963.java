package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0963 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3451;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3452;

    public C0963(C0933 c0933, Activity activity) {
        this.f3451 = c0933;
        this.f3452 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (C0933.m2303(this.f3451, this.f3452)) {
            this.f3451.f3337.onActivityPaused(this.f3452);
        }
    }
}
