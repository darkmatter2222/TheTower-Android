package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1013 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C1008 f3578;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3579;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3580;

    public C1013(C1008 c1008, String str, Activity activity) {
        this.f3578 = c1008;
        this.f3580 = str;
        this.f3579 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0116.m1900(this.f3578.f3550, this.f3580, false, false, Collections.singletonList(this.f3579));
    }
}
