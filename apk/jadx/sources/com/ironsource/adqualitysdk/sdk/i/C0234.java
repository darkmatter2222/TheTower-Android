package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.UnityAdsLoadOptions;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˏ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0234 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f1172;

    public C0234(C3483m c3483m) {
        this.f1172 = c3483m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f1172;
        UnityAdsLoadOptions unityAdsLoadOptions = (UnityAdsLoadOptions) arrayList.get(0);
        c3483m.getClass();
        return unityAdsLoadOptions.getData();
    }
}
