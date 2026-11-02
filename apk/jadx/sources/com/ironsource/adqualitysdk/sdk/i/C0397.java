package com.ironsource.adqualitysdk.sdk.i;

import com.five_corp.ad.FiveAdInterface;
import com.five_corp.ad.FiveAdListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0397 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0385 f1917;

    public C0397(C0385 c0385) {
        this.f1917 = c0385;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0385 c0385 = this.f1917;
        FiveAdInterface fiveAdInterface = (FiveAdInterface) arrayList.get(0);
        FiveAdListener fiveAdListener = (FiveAdListener) arrayList.get(1);
        c0385.getClass();
        fiveAdInterface.setListener(fiveAdListener);
        return null;
    }
}
