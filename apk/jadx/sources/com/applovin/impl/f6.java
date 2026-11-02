package com.applovin.impl;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f6 extends d6 {
    private final k k;

    public f6(k kVar, long j, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        super(u.a("adtoken_zone"), j, appLovinAdLoadListener, "TaskFetchTokenAd", lVar);
        this.k = kVar;
    }

    @Override // com.applovin.impl.w5
    protected Map h() {
        HashMap map = new HashMap(2);
        map.put("adtoken", this.k.b());
        map.put("adtoken_prefix", this.k.d());
        return map;
    }
}
