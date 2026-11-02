package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.cf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3539cf {
    private EnumC3558df a;

    public C3539cf(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.a = EnumC3558df.b.a(config.optInt(C3510b4.a.t, EnumC3558df.CurrentlyLoadedAds.c()));
    }

    public final EnumC3558df a() {
        return this.a;
    }
}
