package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.nativead.NativeAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ঘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0450 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f2009;

    public C0450(C0370 c0370) {
        this.f2009 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f2009.getClass();
        return ((NativeAdView) AbstractC0993.m2388(arrayList, 0, NativeAdView.class)).getAdvertiserView();
    }
}
