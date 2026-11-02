package com.ironsource.adqualitysdk.sdk.i;

import com.five_corp.ad.FiveAdConfig;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.າ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0502 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0385 f2183;

    public C0502(C0385 c0385) {
        this.f2183 = c0385;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0385 c0385 = this.f2183;
        FiveAdConfig fiveAdConfig = (FiveAdConfig) arrayList.get(0);
        c0385.getClass();
        return fiveAdConfig.appId;
    }
}
