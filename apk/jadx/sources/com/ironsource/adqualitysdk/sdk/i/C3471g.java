package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3471g implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f264;

    public C3471g(C3483m c3483m) {
        this.f264 = c3483m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f264;
        IUnityAdsListener iUnityAdsListener = (IUnityAdsListener) arrayList.get(0);
        c3483m.getClass();
        UnityAds.setListener(iUnityAdsListener);
        return null;
    }
}
