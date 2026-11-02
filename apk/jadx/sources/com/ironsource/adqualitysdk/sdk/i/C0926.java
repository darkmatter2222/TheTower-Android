package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.טּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0926 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3318;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C1034 f3319;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0418 f3320;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0692 f3321;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3322;

    public C0926(C0893 c0893, JSONObject jSONObject, C0692 c0692, C0418 c0418, C1034 c1034) {
        this.f3318 = c0893;
        this.f3322 = jSONObject;
        this.f3321 = c0692;
        this.f3320 = c0418;
        this.f3319 = c1034;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        String strM2298 = C0893.m2298(this.f3318, this.f3322);
        C0933 c0933 = (C0933) this.f3318.f3178.get(strM2298);
        if (c0933 == null) {
            c0933 = new C0933(this.f3322, this.f3321);
            this.f3318.f3178.put(strM2298, c0933);
        } else {
            c0933.f1544 = this.f3321;
            C0942 c0942 = new C0942(this.f3322);
            c0933.f1543 = c0942;
            c0933.f3331 = c0942;
            AbstractC0340.m2054(new C1025(c0933));
        }
        c0933.f3174 = this.f3320;
        c0933.f3337 = this.f3319;
    }
}
