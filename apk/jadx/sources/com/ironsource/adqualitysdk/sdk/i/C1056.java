package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1056 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0999 f3708;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0879 f3709;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ int f3710;

    public C1056(C0999 c0999, int i, C0879 c0879) {
        this.f3708 = c0999;
        this.f3710 = i;
        this.f3709 = c0879;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        HashMap map;
        ArrayList arrayList = new ArrayList();
        C0999 c0999 = this.f3708;
        C0841 c0841 = c0999.f3525;
        String str = c0999.f3526 + StringFog.decrypt("6Q==\n", "wxXv3+zsBFA=\n");
        int i = this.f3710;
        C0389 c0389 = c0841.f3107;
        c0389.getClass();
        try {
            HashMap mapM2051 = c0389.f1887.m2051(str, i);
            map = new HashMap();
            for (String str2 : mapM2051.keySet()) {
                String str3 = (String) mapM2051.get(str2);
                if (str3 != null && !TextUtils.isEmpty(str3)) {
                    try {
                        map.put(str2, c0389.f1888.m2089(str3));
                    } catch (C0437 unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
            map = null;
        }
        for (String str4 : map.values()) {
            try {
                JSONObject jSONObject = new JSONObject(str4);
                arrayList.add(new C1068(jSONObject.optString(StringFog.decrypt("k9pSRA==\n", "5q87IJwR6Pc=\n")), jSONObject.getJSONObject(StringFog.decrypt("3nyeRqf+X7k=\n", "rhPtMuOfK9g=\n"))));
            } catch (Exception unused3) {
                AbstractC0250.m1999(C0999.m2390(this.f3708), StringFog.decrypt("AMTCMii1V3AxxMY/\n", "Q6WhWk3mIx8=\n"), AbstractC0270.m2002("03tNMdjfITqwd0o43cVjbvN1WzXZ1SYr5nFWKZKRdTrifVY6nMdnIuVxAn0=\n", "kBQ4XbyxBk4=\n", new StringBuilder(), str4), null, null, true);
            }
        }
        AbstractC0340.m2054(new C1065(this, arrayList));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2130(Throwable th) {
        super.mo2130(th);
        AbstractC0340.m2054(new C1062(this));
    }
}
