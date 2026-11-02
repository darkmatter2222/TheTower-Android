package com.ironsource;

import com.ironsource.environment.ContextProvider;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.m9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3713m9 {
    public static final C3713m9 a = new C3713m9();

    private C3713m9() {
    }

    @JvmStatic
    public static final JSONObject a() throws JSONException {
        new C3516ba().b(ContextProvider.getInstance().getApplicationContext());
        String string = new C3695l9().a().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        We.c(string);
        JSONObject jSONObjectPut = new JSONObject().put("data", Q9.e(C3763p5.b().c(), string));
        Intrinsics.checkNotNull(jSONObjectPut);
        return jSONObjectPut;
    }
}
