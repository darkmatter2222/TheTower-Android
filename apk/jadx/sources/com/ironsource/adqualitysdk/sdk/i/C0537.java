package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0537 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2234;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ C0543 f2235;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0316 f2236;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ String f2237;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ String f2238;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0276 f2239;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f2240;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f2241;

    public C0537(C0392 c0392, Context context, String str, AbstractC0276 abstractC0276, String str2, String str3, AbstractC0316 abstractC0316, C0543 c0543) {
        this.f2234 = c0392;
        this.f2241 = context;
        this.f2240 = str;
        this.f2239 = abstractC0276;
        this.f2238 = str2;
        this.f2237 = str3;
        this.f2236 = abstractC0316;
        this.f2235 = c0543;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0392 c0392 = this.f2234;
        Context context = this.f2241;
        String str = this.f2240;
        AbstractC0276 abstractC0276 = this.f2239;
        c0392.getClass();
        C1005 c1005 = TextUtils.isEmpty(str) ? null : new C1005(context, new C0593(str, c0392.f1901), c0392.f1895, c0392.f1902, abstractC0276);
        if (c1005 == null) {
            AbstractC0340.m2057(this.f2235);
            return;
        }
        C0392 c0393 = this.f2234;
        Context context2 = this.f2241;
        String str2 = this.f2238;
        String str3 = this.f2237;
        AbstractC0316 abstractC0316 = this.f2236;
        AbstractC0276 abstractC0277 = this.f2239;
        C0543 c0543 = this.f2235;
        c0393.getClass();
        AbstractC0340.m2057(new C0470(c0393, c1005, abstractC0316, str3, true, c0543, str2, abstractC0277, context2));
    }
}
