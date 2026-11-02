package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0683 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0678 f2603;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2604;

    public C0683(C0678 c0678, JSONObject jSONObject) {
        this.f2603 = c0678;
        this.f2604 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0798 c0798 = this.f2603.f2587;
        JSONObject jSONObject = this.f2604;
        c0798.f3015.f2626.m2451(jSONObject);
        C0690 c0690 = c0798.f3015;
        C0800 c0800 = new C0800(c0798);
        synchronized (c0690.f2635) {
        }
        c0690.m2248(jSONObject);
        c0690.f2635.getClass();
        C1068 c1068 = new C1068(jSONObject);
        C0687 c0687 = new C0687(c1068);
        C0669 c0669M2243 = c0690.m2243();
        c0687.m2229(c0669M2243.m2207(), c0669M2243.m2209());
        c0690.f2635.m2391(c1068, c0800);
        c0690.m2241(c0687.m2227());
    }
}
