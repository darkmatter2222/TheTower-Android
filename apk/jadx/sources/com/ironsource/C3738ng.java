package com.ironsource;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Deprecated;
import p005kotlin.DeprecationLevel;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ng, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3738ng {
    private final String[] a = C3720mg.a.a();
    private final T6 b = new T6();

    private final JSONObject a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectB = U6.b(jSONObject.optJSONObject(R6.u));
        if (jSONObjectB != null) {
            jSONObject.put(R6.u, jSONObjectB);
        }
        return jSONObject;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use the new method getToken(context: Context)")
    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectA = this.b.a(this.a);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "getDataByKeys(...)");
        return a(jSONObjectA);
    }

    public final JSONObject a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        JSONObject jSONObjectA = this.b.a(context, this.a);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "getDataByKeys(...)");
        return a(jSONObjectA);
    }
}
