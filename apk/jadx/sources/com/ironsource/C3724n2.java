package com.ironsource;

import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.n2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3724n2 {
    private final R6.a a;
    private final ArrayList<String> b = new ArrayList<>(new C3688l2().a());
    private final T6 c = new T6();

    public C3724n2(R6.a aVar) {
        this.a = aVar;
    }

    private final JSONObject a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectB = U6.b(jSONObject.optJSONObject(R6.u));
        if (jSONObjectB != null) {
            jSONObject.put(R6.u, jSONObjectB);
        }
        return jSONObject;
    }

    public final JSONObject a() {
        JSONObject jSONObjectA;
        R6.a aVar = this.a;
        if (aVar == null || (jSONObjectA = this.c.a(this.b, aVar)) == null) {
            jSONObjectA = this.c.a(this.b);
            Intrinsics.checkNotNullExpressionValue(jSONObjectA, "getDataByKeys(...)");
        }
        return a(jSONObjectA);
    }
}
