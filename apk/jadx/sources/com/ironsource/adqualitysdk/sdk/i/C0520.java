package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.appopen.AppOpenAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ꮭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0520 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f2205;

    public C0520(C0370 c0370) {
        this.f2205 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0370 c0370 = this.f2205;
        c0370.getClass();
        return new C0395(c0370, (AppOpenAd.AppOpenAdLoadCallback) AbstractC0993.m2388(arrayList, 0, AppOpenAd.AppOpenAdLoadCallback.class), c0943);
    }
}
