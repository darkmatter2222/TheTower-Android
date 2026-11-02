package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ⅽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0867 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f3141;

    public C0867(C0370 c0370) {
        this.f3141 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f3141.getClass();
        PublisherAdView publisherAdView = (PublisherAdView) AbstractC0993.m2388(arrayList, 0, PublisherAdView.class);
        this.f3141.getClass();
        publisherAdView.setAdListener((AdListener) AbstractC0993.m2388(arrayList, 1, AdListener.class));
        return null;
    }
}
