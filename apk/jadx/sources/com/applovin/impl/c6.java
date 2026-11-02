package com.applovin.impl;

import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c6 extends e6 {
    private final k j;

    public c6(k kVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.l lVar) {
        super(u.a("adtoken_zone"), "TaskFetchNativeTokenAd", appLovinNativeAdLoadListener, lVar);
        this.j = kVar;
    }

    @Override // com.applovin.impl.w5
    protected Map h() {
        HashMap map = new HashMap(2);
        map.put("adtoken", this.j.b());
        map.put("adtoken_prefix", this.j.d());
        return map;
    }
}
