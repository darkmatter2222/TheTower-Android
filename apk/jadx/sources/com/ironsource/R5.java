package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class R5 {
    private final JSONObject a;

    public R5(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public final Boolean a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        JSONObject jSONObject = this.a;
        Object objOpt = jSONObject != null ? jSONObject.opt(key) : null;
        if (objOpt instanceof Boolean) {
            return (Boolean) objOpt;
        }
        return null;
    }

    public final Integer b(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        JSONObject jSONObject = this.a;
        Object objOpt = jSONObject != null ? jSONObject.opt(key) : null;
        if (objOpt instanceof Integer) {
            return (Integer) objOpt;
        }
        return null;
    }

    public final String c(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        JSONObject jSONObject = this.a;
        Object objOpt = jSONObject != null ? jSONObject.opt(key) : null;
        if (objOpt instanceof String) {
            return (String) objOpt;
        }
        return null;
    }
}
