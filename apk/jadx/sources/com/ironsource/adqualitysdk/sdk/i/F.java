package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Placement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class F implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f98;

    public F(J j) {
        this.f98 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        J j = this.f98;
        Placement placement = (Placement) arrayList.get(0);
        j.getClass();
        return Boolean.valueOf(placement.isIncentivized());
    }
}
