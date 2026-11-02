package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Advertisement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class H implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f102;

    public H(J j) {
        this.f102 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        J j = this.f102;
        Advertisement advertisement = (Advertisement) arrayList.get(0);
        j.getClass();
        return advertisement.getCampaign();
    }
}
