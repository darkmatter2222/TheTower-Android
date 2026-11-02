package com.ironsource.adqualitysdk.sdk.i;

import com.mintegral.msdk.base.entity.CampaignEx;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ί, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0847 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0782 f3115;

    public C0847(C0782 c0782) {
        this.f3115 = c0782;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0782 c0782 = this.f3115;
        CampaignEx campaignEx = (CampaignEx) arrayList.get(0);
        c0782.getClass();
        return campaignEx.getClickURL();
    }
}
