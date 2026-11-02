package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.media.ads.network.common.model.AdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ŀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0127 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1099 f813;

    public C0127(C1099 c1099) {
        this.f813 = c1099;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1099 c1099 = this.f813;
        AdResponse adResponse = (AdResponse) arrayList.get(0);
        c1099.getClass();
        return Long.valueOf(adResponse.getPlacementId());
    }
}
