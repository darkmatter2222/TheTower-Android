package com.ironsource.adqualitysdk.sdk.i;

import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1053 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C1032 f3700;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3701;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3702;

    public C1053(C1032 c1032, String str, JSONObject jSONObject) {
        this.f3700 = c1032;
        this.f3702 = str;
        this.f3701 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C1032 c1032 = this.f3700;
        String str = this.f3702;
        JSONObject jSONObject = this.f3701;
        c1032.getClass();
        Iterator it = new HashSet(c1032.f3644).iterator();
        while (it.hasNext()) {
            JSONObject jSONObjectMo2110 = ((InterfaceC0579) it.next()).mo2110(str, jSONObject);
            if (jSONObjectMo2110 != null) {
                AbstractC1030.m2418(jSONObject, jSONObjectMo2110, false);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            String str2 = AbstractC0115.f631;
            jSONObject2.put(str2, jSONObject.remove(str2));
            String str3 = AbstractC0115.f585;
            jSONObject2.put(str3, jSONObject.remove(str3));
        } catch (JSONException unused) {
        }
        c1032.f3645.m2247(str, jSONObject, jSONObject2, new C1045(c1032, str));
    }
}
