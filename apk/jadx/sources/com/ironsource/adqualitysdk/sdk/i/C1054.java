package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1054 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C1028 f3703;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ int f3704;

    public C1054(C1028 c1028, int i) {
        this.f3703 = c1028;
        this.f3704 = i;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        int iOptInt;
        JSONObject jSONObject;
        C0691 c0691 = this.f3703.f3632;
        if (this.f3704 >= c0691.f2639.m2243().m2208()) {
            iOptInt = 0;
        } else {
            C0690 c0690 = c0691.f2639;
            if (c0690.m2243() == null || ((C0961) AbstractC0953.m2334()).f3411) {
                iOptInt = 100;
            } else {
                C0669 c0669M2243 = c0690.m2243();
                synchronized (c0669M2243) {
                    jSONObject = c0669M2243.f2613;
                }
                iOptInt = jSONObject.optInt(StringFog.decrypt("rxJ/\n", "ymELskbtt/8=\n"), c0669M2243.f2568);
            }
        }
        C0690 c0692 = c0691.f2639;
        c0692.f2633.removeCallbacksAndMessages(null);
        c0692.f2633.postDelayed(new C0889(c0692), iOptInt);
    }
}
