package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3473h implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f269;

    public C3473h(C3483m c3483m) {
        this.f269 = c3483m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f269;
        IUnityAdsListener iUnityAdsListener = (IUnityAdsListener) arrayList.get(0);
        c3483m.getClass();
        UnityAds.addListener(iUnityAdsListener);
        return null;
    }
}
