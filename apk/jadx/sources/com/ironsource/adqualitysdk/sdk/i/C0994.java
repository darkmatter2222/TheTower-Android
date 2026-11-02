package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.video.vast.model.VastScenarioResourceData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹾ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0994 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f3515;

    public C0994(C0117 c0117) {
        this.f3515 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f3515;
        VastScenarioResourceData vastScenarioResourceData = (VastScenarioResourceData) arrayList.get(0);
        c0117.getClass();
        return vastScenarioResourceData.staticResources;
    }
}
