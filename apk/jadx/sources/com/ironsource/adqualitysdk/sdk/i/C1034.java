package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1034 extends AbstractC0789 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f3651;

    public C1034(C0116 c0116) {
        this.f3651 = c0116;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        C0116 c0116 = this.f3651;
        c0116.m1910(AbstractC0115.f593, C0116.m1899(c0116, activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C0116 c0116 = this.f3651;
        c0116.m1910(AbstractC0115.f592, C0116.m1899(c0116, activity));
    }
}
