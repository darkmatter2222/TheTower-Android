package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class RunnableC1044 implements Runnable {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C1035 f3686;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ int f3687;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ long f3688;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f3689;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3690;

    public RunnableC1044(C1035 c1035, JSONObject jSONObject, boolean z, long j, int i) {
        this.f3686 = c1035;
        this.f3690 = jSONObject;
        this.f3689 = z;
        this.f3688 = j;
        this.f3687 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        C1035 c1035 = this.f3686;
        JSONObject jSONObject = this.f3690;
        boolean z2 = this.f3689;
        long j = this.f3688;
        int i = this.f3687;
        c1035.getClass();
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            z = c0272M2008.f1363;
        }
        if (z) {
            return;
        }
        try {
            if (c1035.f3659 > 0 && j > 0) {
                jSONObject.put(StringFog.decrypt("cA4A\n", "GWp0apF4qng=\n"), j - c1035.f3659);
            }
            if (c1035.f3658 > 0 && i > 0) {
                jSONObject.put(StringFog.decrypt("EJg6Zg==\n", "efVXAmImMxc=\n"), i - c1035.f3658);
            }
            jSONObject.put(StringFog.decrypt("UCR1VbU=\n", "NksHNtDdS/Q=\n"), z2);
        } catch (Exception e) {
            String str = C1035.f3652;
            AbstractC0250.m1999(str, str, StringFog.decrypt("KQ/IA4CE5H8FEd4FnMOmfhwi0wKb0NlpAxDKAJfQ4yocHMMAncXi\n", "bH26bPKkhgo=\n"), e, null, false);
        }
        c1035.f3665.f1572.f1539.f2177.f1972.f1354.m2246(StringFog.decrypt("c4Ho6BXptvBkntrxF+W2yg==\n", "B/G3gXuAwq8=\n"), jSONObject);
    }
}
