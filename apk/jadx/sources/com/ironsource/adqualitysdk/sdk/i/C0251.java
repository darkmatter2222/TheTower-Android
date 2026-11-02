package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.model.Placement;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ξ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0251 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1058 f1198;

    public C0251(C1058 c1058) {
        this.f1198 = c1058;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1058 c1058 = this.f1198;
        Placement placement = (Placement) arrayList.get(0);
        c1058.getClass();
        if (placement != null) {
            return placement.getPlacementName();
        }
        return null;
    }
}
