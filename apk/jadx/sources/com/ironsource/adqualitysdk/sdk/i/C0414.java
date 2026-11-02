package com.ironsource.adqualitysdk.sdk.i;

import com.five_corp.ad.FiveAdInterface;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0414 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0385 f1946;

    public C0414(C0385 c0385) {
        this.f1946 = c0385;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0385 c0385 = this.f1946;
        FiveAdInterface fiveAdInterface = (FiveAdInterface) arrayList.get(0);
        c0385.getClass();
        return fiveAdInterface.getListener();
    }
}
