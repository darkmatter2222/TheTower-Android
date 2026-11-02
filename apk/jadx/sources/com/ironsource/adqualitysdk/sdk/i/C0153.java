package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.api.PangleAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ƴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0153 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0105 f866;

    public C0153(C0105 c0105) {
        this.f866 = c0105;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0105 c0105 = this.f866;
        PangleAd pangleAd = (PangleAd) arrayList.get(0);
        c0105.getClass();
        return pangleAd.getMediaExtraInfo();
    }
}
