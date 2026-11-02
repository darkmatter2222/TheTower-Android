package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0619 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2496;

    public C0619(C0597 c0597) {
        this.f2496 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2496;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0597.getClass();
        return impressionData.getDemandSource();
    }
}
