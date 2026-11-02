package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓻ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0615 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2492;

    public C0615(C0597 c0597) {
        this.f2492 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2492;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0597.getClass();
        return Double.valueOf(impressionData.getNetPayout());
    }
}
