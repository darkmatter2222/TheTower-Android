package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᗁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0678 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0674 f2586;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0798 f2587;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2588;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2589;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2590;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2591;

    public C0678(C0674 c0674, String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z, C0798 c0798) {
        this.f2586 = c0674;
        this.f2591 = str;
        this.f2590 = jSONObject;
        this.f2589 = jSONObject2;
        this.f2588 = z;
        this.f2587 = c0798;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() throws JSONException {
        if (this.f2591.equals(StringFog.decrypt("oOPsiBY0T46n59KJBw==\n", "1JOz+3NHPNE=\n"))) {
            this.f2586.f2576++;
        }
        C0674 c0674 = this.f2586;
        int i = c0674.f2575;
        c0674.f2575 = i + 1;
        JSONObject jSONObjectM2416 = AbstractC1030.m2416(this.f2590, false);
        jSONObjectM2416.put(StringFog.decrypt("zFZT/A==\n", "ojc+mYT5B5o=\n"), this.f2591);
        jSONObjectM2416.put(StringFog.decrypt("xOY=\n", "oYijoBc7M7k=\n"), i);
        String strDecrypt = StringFog.decrypt("IcVaC28Tq6U+\n", "Vbc7aApxysY=\n");
        JSONObject jSONObject = this.f2589;
        if (jSONObject != null) {
            strDecrypt = jSONObject.optString(AbstractC0115.f631);
            String str = AbstractC0115.f585;
            jSONObjectM2416.put(str, this.f2589.optString(str, null));
        }
        if (TextUtils.isEmpty(strDecrypt)) {
            strDecrypt = StringFog.decrypt("j7VIag==\n", "4domD9WneUs=\n");
        }
        jSONObjectM2416.put(AbstractC0115.f630, strDecrypt);
        String str2 = AbstractC0115.f629;
        if (!jSONObjectM2416.has(str2)) {
            jSONObjectM2416.put(str2, strDecrypt);
        }
        AbstractC0340.m2054(new C0683(this, this.f2586.mo1988(jSONObjectM2416, this.f2588, true, this.f2591.equals(StringFog.decrypt("bMmxOy6BuA==\n", "GLnuUkDozNA=\n")))));
    }
}
