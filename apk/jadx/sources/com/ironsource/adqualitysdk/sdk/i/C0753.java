package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0753 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0279 f2752;

    public C0753(C0279 c0279) {
        this.f2752 = c0279;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0279 c0279 = this.f2752;
        CampaignEx campaignEx = (CampaignEx) arrayList.get(0);
        c0279.getClass();
        return campaignEx.getCampaignUnitId();
    }
}
