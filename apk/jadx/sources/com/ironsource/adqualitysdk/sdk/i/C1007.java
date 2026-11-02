package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1007 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3547;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f3548;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3549;

    public C1007(C0933 c0933, Activity activity, Bundle bundle) {
        this.f3547 = c0933;
        this.f3549 = activity;
        this.f3548 = bundle;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (C0933.m2303(this.f3547, this.f3549)) {
            this.f3547.f3337.getClass();
            this.f3547.getClass();
            C0933 c0933 = this.f3547;
            c0933.f3334 = false;
            Bundle bundle = this.f3548;
            if (bundle == null) {
                c0933.f3335 = false;
                return;
            }
            c0933.f3335 = bundle.getBoolean(C0933.f3329);
            C0933 c0934 = this.f3547;
            if (c0934.f3335) {
                c0934.f3334 = true;
            }
            c0934.f3332 = true;
        }
    }
}
