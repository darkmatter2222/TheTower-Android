package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.video.vast.model.VastScenario;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0761 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2820;

    public C0761(C0117 c0117) {
        this.f2820 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2820;
        VastScenario vastScenario = (VastScenario) arrayList.get(0);
        c0117.getClass();
        return vastScenario.vastMediaFileScenario;
    }
}
