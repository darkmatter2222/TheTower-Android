package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ব, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0458 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2017;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f2018;

    public C0458(C0392 c0392, Context context) {
        this.f2017 = c0392;
        this.f2018 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        JSONObject jSONObject;
        C0303 c0303 = this.f2017.f1899;
        if (c0303 != null) {
            Context context = this.f2018;
            if (c0303.f1540 != null) {
                return;
            }
            c0303.f1540 = new C1035(new C0323(c0303), new C0322(c0303), new C0317(context.getApplicationContext()));
            AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
            C1035 c1035 = c0303.f1540;
            C0961 c0961 = (C0961) abstractC0953M2334;
            long jM2205 = c0961.f3420.m2205();
            C0669 c0669 = c0961.f3420;
            synchronized (c0669) {
                jSONObject = c0669.f2613;
            }
            int iOptInt = jSONObject.optInt(C0669.f2562, 0);
            boolean zMo2344 = abstractC0953M2334.mo2344();
            int iMo2348 = abstractC0953M2334.mo2348();
            boolean zMo2335 = abstractC0953M2334.mo2335();
            if (c1035.f3662) {
                return;
            }
            c1035.f3662 = true;
            c1035.f3659 = jM2205;
            c1035.f3658 = iOptInt;
            c1035.f3655 = zMo2344;
            c1035.f3654 = iMo2348;
            c1035.f3653 = zMo2335;
            if (zMo2344) {
                Handler handler = c1035.f3663;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                Handler handler2 = c1035.f3663;
                if (handler2 == null) {
                    return;
                }
                handler2.postDelayed(new C1060(c1035), c1035.f3654);
            }
        }
    }
}
