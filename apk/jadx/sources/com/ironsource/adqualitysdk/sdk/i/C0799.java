package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0799 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f3017;

    public C0799(C0597 c0597) {
        this.f3017 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f3017;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0597.getClass();
        return impressionData.getAdvertiserDomain();
    }
}
