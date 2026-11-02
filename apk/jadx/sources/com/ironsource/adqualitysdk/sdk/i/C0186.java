package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0186 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1058 f1056;

    public C0186(C1058 c1058) {
        this.f1056 = c1058;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1058 c1058 = this.f1056;
        ImpressionDataListener impressionDataListener = (ImpressionDataListener) arrayList.get(0);
        c1058.getClass();
        IronSource.addImpressionDataListener(impressionDataListener);
        return null;
    }
}
