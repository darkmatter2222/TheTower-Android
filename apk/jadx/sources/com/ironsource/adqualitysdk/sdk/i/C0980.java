package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﱢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0980 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3482;

    public C0980(C0773 c0773) {
        this.f3482 = c0773;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0773 c0773 = this.f3482;
        InneractiveAdViewUnitController inneractiveAdViewUnitController = (InneractiveAdViewUnitController) arrayList.get(0);
        c0773.getClass();
        return inneractiveAdViewUnitController.getAdSpot();
    }
}
