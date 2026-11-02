package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import tv.superawesome.sdk.publisher.SABannerAd;
import tv.superawesome.sdk.publisher.SAInterface;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.יּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0927 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0914 f3323;

    public C0927(C0914 c0914) {
        this.f3323 = c0914;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0914 c0914 = this.f3323;
        SABannerAd sABannerAd = (SABannerAd) arrayList.get(0);
        SAInterface sAInterface = (SAInterface) arrayList.get(1);
        c0914.getClass();
        sABannerAd.setListener(sAInterface);
        return null;
    }
}
