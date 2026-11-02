package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0966 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3456;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f3457;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3458;

    public C0966(C0933 c0933, Activity activity, Bundle bundle) {
        this.f3456 = c0933;
        this.f3458 = activity;
        this.f3457 = bundle;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (C0933.m2303(this.f3456, this.f3458)) {
            this.f3456.f3337.getClass();
            Bundle bundle = this.f3457;
            if (bundle != null) {
                bundle.putBoolean(C0933.f3329, this.f3456.f3335);
            }
            this.f3456.f3333 = true;
        }
    }
}
