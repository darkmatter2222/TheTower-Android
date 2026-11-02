package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖾ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0675 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0674 f2579;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0832 f2580;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONArray f2581;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2582;

    public C0675(C0674 c0674, boolean z, JSONArray jSONArray, C0832 c0832) {
        this.f2579 = c0674;
        this.f2582 = z;
        this.f2581 = jSONArray;
        this.f2580 = c0832;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() throws JSONException {
        JSONObject jSONObjectMo1988 = this.f2579.mo1988(null, this.f2582, false, false);
        try {
            jSONObjectMo1988.put(StringFog.decrypt("xShRUBpd\n", "oF40Pm4u90M=\n"), this.f2581);
        } catch (JSONException e) {
            String strDecrypt = StringFog.decrypt("wHiL5PHQkXvyU5zt5tC/fe9zmOn8y4o=\n", "gRbqiIik+Bg=\n");
            AbstractC0250.m1999(strDecrypt, strDecrypt, StringFog.decrypt("cTvy0N+aY3hRKPTWw90gb0Is7svg33Rr\n", "NEmAv626AAo=\n"), e, null, false);
        }
        AbstractC0340.m2054(new C0676(this, jSONObjectMo1988));
    }
}
