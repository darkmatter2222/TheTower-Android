package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0540 implements InterfaceC0122 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2244;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0543 f2245;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0316 f2246;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ String f2247;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0276 f2248;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2249;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2250;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2251;

    public C0540(C0392 c0392, boolean z, String str, Context context, AbstractC0276 abstractC0276, String str2, AbstractC0316 abstractC0316, C0543 c0543) {
        this.f2244 = c0392;
        this.f2251 = z;
        this.f2250 = str;
        this.f2249 = context;
        this.f2248 = abstractC0276;
        this.f2247 = str2;
        this.f2246 = abstractC0316;
        this.f2245 = c0543;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0122
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1911(String str) {
        C0303 c0303;
        if (TextUtils.isEmpty(str)) {
            if (this.f2251 || (c0303 = this.f2244.f1899) == null) {
                return;
            }
            AbstractC0340.m2053(new C0345(c0303, this.f2250, EnumC0375.f1828));
            return;
        }
        C0392 c0392 = this.f2244;
        Context context = this.f2249;
        AbstractC0276 abstractC0276 = this.f2248;
        c0392.getClass();
        C1005 c1005 = TextUtils.isEmpty(str) ? null : new C1005(context, new C0593(str, c0392.f1901), c0392.f1895, c0392.f1902, abstractC0276);
        C0392 c0393 = this.f2244;
        Context context2 = this.f2249;
        String str2 = this.f2247;
        String str3 = this.f2250;
        AbstractC0316 abstractC0316 = this.f2246;
        AbstractC0276 abstractC0277 = this.f2248;
        C0543 c0543 = this.f2245;
        c0393.getClass();
        AbstractC0340.m2057(new C0470(c0393, c1005, abstractC0316, str3, false, c0543, str2, abstractC0277, context2));
    }
}
