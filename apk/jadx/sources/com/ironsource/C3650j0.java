package com.ironsource;

import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3650j0 {
    private final ArrayList<String> a = new ArrayList<>(new C3633i0().a());
    private final T6 b = new T6();

    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectA = this.b.a(this.a);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "getDataByKeys(...)");
        return jSONObjectA;
    }
}
