package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.丫, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0900 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3186;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0369 f3187;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0657 f3188;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3189;

    public C0900(C0893 c0893, JSONObject jSONObject, C0657 c0657, C0369 c0369) {
        this.f3186 = c0893;
        this.f3189 = jSONObject;
        this.f3188 = c0657;
        this.f3187 = c0369;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        String strM2298 = C0893.m2298(this.f3186, this.f3189);
        B b = (B) this.f3186.f3176.get(strM2298);
        if (b == null) {
            b = new B(this.f3189, this.f3188);
            this.f3186.f3176.put(strM2298, b);
        } else {
            JSONObject jSONObject = this.f3189;
            C0657 c0657 = this.f3188;
            b.f82 = new A(jSONObject);
            b.f88 = c0657;
        }
        b.f3174 = this.f3187;
    }
}
