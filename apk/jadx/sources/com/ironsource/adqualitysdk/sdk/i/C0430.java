package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0430 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0409 f1978;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Intent f1979;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f1980;

    public C0430(C0409 c0409, Context context, Intent intent) {
        this.f1978 = c0409;
        this.f1980 = context;
        this.f1979 = intent;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0409 c0409 = this.f1978;
        C1014 c1014 = c0409.f1938;
        C0983 c0983 = c0409.f1937;
        C0116 c0116 = c0409.f1936;
        ArrayList arrayListM1964 = C0197.m1964(c0409.f1934, c0409.f1935, new Object[]{c0409, this.f1980, this.f1979});
        c1014.getClass();
        c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
    }
}
