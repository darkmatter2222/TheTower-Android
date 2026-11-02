package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.爫, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0913 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3264;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0379 f3265;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3266;

    public C0913(C0893 c0893, JSONObject jSONObject, C0379 c0379) {
        this.f3264 = c0893;
        this.f3266 = jSONObject;
        this.f3265 = c0379;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        String strM2298 = C0893.m2298(this.f3264, this.f3266);
        B0 b0 = (B0) this.f3264.f3177.get(strM2298);
        if (b0 == null) {
            b0 = new B0(this.f3266);
            this.f3264.f3177.put(strM2298, b0);
        } else {
            b0.m1819(this.f3266);
        }
        b0.f3174 = this.f3265;
    }
}
