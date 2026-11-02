package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0423 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f1961;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ AbstractRunnableC0757 f1962;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0316 f1963;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f1964;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1965;

    public C0423(C0392 c0392, String str, Context context, AbstractC0316 abstractC0316, AbstractRunnableC0757 abstractRunnableC0757) {
        this.f1961 = c0392;
        this.f1965 = str;
        this.f1964 = context;
        this.f1963 = abstractC0316;
        this.f1962 = abstractRunnableC0757;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (this.f1961.f1908.get()) {
            return;
        }
        String lowerCase = this.f1965.toLowerCase();
        C0303 c0303 = this.f1961.f1899;
        if (c0303 == null) {
            return;
        }
        c0303.f1541.put(lowerCase, new C0354(lowerCase));
        AbstractC0340.m2057(new C0433(this, lowerCase));
    }
}
