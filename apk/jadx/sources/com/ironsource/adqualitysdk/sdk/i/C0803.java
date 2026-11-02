package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ẋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0803 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3022;

    public C0803(C0773 c0773) {
        this.f3022 = c0773;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0773 c0773 = this.f3022;
        InneractiveUnitController inneractiveUnitController = (InneractiveUnitController) arrayList.get(0);
        c0773.getClass();
        return inneractiveUnitController.getSelectedContentController();
    }
}
