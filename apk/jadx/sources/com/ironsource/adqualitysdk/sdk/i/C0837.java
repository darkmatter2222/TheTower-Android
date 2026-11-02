package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.services.banners.BannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ι, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0837 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f3103;

    public C0837(C3483m c3483m) {
        this.f3103 = c3483m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f3103;
        BannerView bannerView = (BannerView) arrayList.get(0);
        c3483m.getClass();
        return bannerView.getPlacementId();
    }
}
