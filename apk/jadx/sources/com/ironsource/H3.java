package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class H3 {
    private final Boolean a;
    private final Integer b;
    private final M3 c;

    public H3(JSONObject features) {
        Intrinsics.checkNotNullParameter(features, "features");
        this.a = features.has("enabled") ? Boolean.valueOf(features.getBoolean("enabled")) : null;
        this.b = features.has("maxImpressions") ? Integer.valueOf(features.getInt("maxImpressions")) : null;
        this.c = features.has("unit") ? M3.c.a(features.optString("unit")) : null;
    }

    public final Boolean a() {
        return this.a;
    }

    public final Integer b() {
        return this.b;
    }

    public final M3 c() {
        return this.c;
    }
}
