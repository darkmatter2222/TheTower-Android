package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.external.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0957 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3398;

    public C0957(C0773 c0773) {
        this.f3398 = c0773;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0773 c0773 = this.f3398;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0773.getClass();
        return impressionData.getAdvertiserDomain();
    }
}
