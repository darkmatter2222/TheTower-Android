package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.ads.internal.model.AdPayload;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class N implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ V f149;

    public N(V v) {
        this.f149 = v;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        V v = this.f149;
        AdPayload adPayload = (AdPayload) arrayList.get(0);
        v.getClass();
        return adPayload.adUnit();
    }
}
