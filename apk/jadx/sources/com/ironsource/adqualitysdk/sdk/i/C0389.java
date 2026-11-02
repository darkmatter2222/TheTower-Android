package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0389 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0320 f1887;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0416 f1888;

    public C0389(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f1887 = new C0320(applicationContext, str);
        this.f1888 = new C0416(AbstractC0351.f1627, applicationContext.getPackageName(), AbstractC0319.m2048(applicationContext), str2);
    }
}
