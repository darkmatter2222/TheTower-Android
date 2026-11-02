package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.impressionData.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0189 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1058 f1059;

    public C0189(C1058 c1058) {
        this.f1059 = c1058;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1058 c1058 = this.f1059;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c1058.getClass();
        return impressionData.getAllData();
    }
}
