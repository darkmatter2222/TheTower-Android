package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d6 extends w5 {
    private final long i;
    private final AppLovinAdLoadListener j;

    public d6(u uVar, long j, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        this(uVar, j, appLovinAdLoadListener, "TaskFetchNextAd", lVar);
    }

    public d6(u uVar, long j, AppLovinAdLoadListener appLovinAdLoadListener, String str, com.applovin.impl.sdk.l lVar) {
        super(uVar, str, lVar);
        this.i = j;
        this.j = appLovinAdLoadListener;
    }

    @Override // com.applovin.impl.w5
    protected n5 a(JSONObject jSONObject) {
        return new j6(jSONObject, this.g, this.i, this.j, this.a);
    }

    @Override // com.applovin.impl.w5
    protected void a(int i, String str) {
        super.a(i, str);
        AppLovinAdLoadListener appLovinAdLoadListener = this.j;
        if (!(appLovinAdLoadListener instanceof q2)) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        } else {
            ((q2) this.j).failedToReceiveAdV2(new AppLovinError(i, str));
        }
    }

    @Override // com.applovin.impl.w5
    protected String e() {
        return s0.a(this.a);
    }

    @Override // com.applovin.impl.w5
    protected String f() {
        return s0.b(this.a);
    }
}
