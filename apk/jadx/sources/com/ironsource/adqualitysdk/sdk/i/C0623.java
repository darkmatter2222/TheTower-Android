package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0623 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2500;

    public C0623(C0597 c0597) {
        this.f2500 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2500;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0597.getClass();
        return impressionData.getRenderingSdk();
    }
}
