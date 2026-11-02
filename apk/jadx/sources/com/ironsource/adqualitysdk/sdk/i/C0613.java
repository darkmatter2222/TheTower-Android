package com.ironsource.adqualitysdk.sdk.i;

import com.hyprmx.android.sdk.core.HyprMXController;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0613 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0610 f2490;

    public C0613(C0610 c0610) {
        this.f2490 = c0610;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0610 c0610 = this.f2490;
        HyprMXController hyprMXController = (HyprMXController) arrayList.get(0);
        c0610.getClass();
        return hyprMXController.getPlacementController();
    }
}
