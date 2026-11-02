package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.hd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3628hd {
    private final Boolean a;
    private final Integer b;
    private final M3 c;

    public C3628hd(JSONObject features) {
        Intrinsics.checkNotNullParameter(features, "features");
        this.a = features.has("enabled") ? Boolean.valueOf(features.getBoolean("enabled")) : null;
        this.b = features.has("numOfSeconds") ? Integer.valueOf(features.getInt("numOfSeconds")) : null;
        this.c = M3.Second;
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
