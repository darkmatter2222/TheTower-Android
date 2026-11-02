package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.ads.internal.model.Placement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class S implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ V f190;

    public S(V v) {
        this.f190 = v;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        V v = this.f190;
        Placement placement = (Placement) arrayList.get(0);
        v.getClass();
        return placement.getReferenceId();
    }
}
