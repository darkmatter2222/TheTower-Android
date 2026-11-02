package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0578 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2335;

    public C0578(C0466 c0466) {
        this.f2335 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2335;
        boolean z = false;
        AppLovinAd appLovinAd = (AppLovinAd) arrayList.get(0);
        c0466.getClass();
        if (appLovinAd != null && (appLovinAd.getSize() == AppLovinAdSize.BANNER || appLovinAd.getSize() == AppLovinAdSize.LEADER || appLovinAd.getSize() == AppLovinAdSize.MREC)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
