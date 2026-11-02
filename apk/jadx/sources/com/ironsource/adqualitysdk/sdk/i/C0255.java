package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ϋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0255 extends AbstractC0789 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1202;

    public C0255(C0193 c0193) {
        this.f1202 = c0193;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        AbstractC0340.m2057(new C0257(this));
    }
}
