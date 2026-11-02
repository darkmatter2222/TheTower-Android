package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0676 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0675 f2583;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2584;

    public C0676(C0675 c0675, JSONObject jSONObject) {
        this.f2583 = c0675;
        this.f2584 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        String strM2204;
        JSONObject jSONObject;
        C0832 c0832 = this.f2583.f2580;
        JSONObject jSONObject2 = this.f2584;
        c0832.f3090.f2626.m2451(jSONObject2);
        C0690 c0690 = c0832.f3090;
        C0853 c0853 = c0690.f2636;
        C0211 c0211 = c0690.f2638;
        if (((C0961) AbstractC0953.m2334()).f3411) {
            strM2204 = c0690.m2243().m2204();
        } else {
            C0669 c0669M2243 = c0690.m2243();
            synchronized (c0669M2243) {
                jSONObject = c0669M2243.f2613;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("9XJL\n", "gAAnRUBYvjo=\n"));
            strM2204 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString(StringFog.decrypt("TQ==\n", "PQTcKj3i8eU=\n"), c0669M2243.f2567) : c0669M2243.f2567;
        }
        String str = c0211.f1096;
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        StringBuilder sbAppend = sb.append(str).append(StringFog.decrypt("Eg==\n", "Pf7MGvBw9pE=\n"));
        if (strM2204 == null) {
            strM2204 = "";
        }
        String string = sbAppend.append(strM2204).toString();
        C0690 c0691 = c0832.f3090;
        r rVar = c0691.f2634.f1196;
        Context context = c0691.f2628;
        C0961 c0961 = (C0961) AbstractC0953.m2334();
        boolean z = c0961.m2368() && c0961.f3412 != c0961.m2370();
        C0833 c0833 = new C0833(c0832);
        c0853.getClass();
        if (TextUtils.isEmpty(string)) {
            String str2 = C0853.f3121;
            AbstractC0250.m1993(str2, str2, StringFog.decrypt("m0JdncHVMMKhDEyQ3sQw1btfSJDAkGLTv1lZjNmQdd+6RFmNjeVC+u5DTt/f1WPGoUJPmuXRftKi\nSU7f2tVi0+5CU4uNwGLZuEVYmsk=\n", "ziw8/62wELY=\n"), true);
            return;
        }
        C0944 c0944 = new C0944(jSONObject2, string, rVar, context, z);
        if (c0853.f3122) {
            AbstractC0250.m1990(C0853.f3121, StringFog.decrypt("CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n", "W8+RmkJLrts=\n"));
            return;
        }
        C0854 c0854 = new C0854(c0853, c0833, c0944);
        String str3 = AbstractC0129.f814;
        try {
            Executors.newSingleThreadExecutor().execute(c0854);
        } catch (Throwable th) {
            AbstractC1071.m2435(AbstractC0129.f814, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
        }
    }
}
