package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ฅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0472 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2139;

    public C0472(C0466 c0466) {
        this.f2139 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2139;
        AppLovinAd appLovinAd = (AppLovinAd) arrayList.get(0);
        c0466.getClass();
        return appLovinAd.getZoneId();
    }
}
