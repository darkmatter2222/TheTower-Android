package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.core.data.model.AdObject;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3461b implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f245;

    public C3461b(C3483m c3483m) {
        this.f245 = c3483m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f245;
        AdObject adObject = (AdObject) arrayList.get(0);
        c3483m.getClass();
        return adObject.getTrackingToken().toByteArray();
    }
}
