package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.へ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0882 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f3162;

    public C0882(C0370 c0370) {
        this.f3162 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f3162.getClass();
        return ((PublisherAdView) AbstractC0993.m2388(arrayList, 0, PublisherAdView.class)).getVideoController();
    }
}
