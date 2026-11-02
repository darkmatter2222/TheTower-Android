package com.ironsource.adqualitysdk.sdk.i;

import com.mintegral.msdk.base.entity.CampaignEx;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ײַ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0915 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0782 f3306;

    public C0915(C0782 c0782) {
        this.f3306 = c0782;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0782 c0782 = this.f3306;
        CampaignEx campaignEx = (CampaignEx) arrayList.get(0);
        c0782.getClass();
        return Integer.valueOf(campaignEx.getAdType());
    }
}
