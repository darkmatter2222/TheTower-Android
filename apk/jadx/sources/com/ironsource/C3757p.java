package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3757p {
    private final Boolean a;

    public C3757p(JSONObject adFormatAuctionSettings) {
        Intrinsics.checkNotNullParameter(adFormatAuctionSettings, "adFormatAuctionSettings");
        this.a = adFormatAuctionSettings.has(C3779q.a) ? Boolean.valueOf(adFormatAuctionSettings.optBoolean(C3779q.a)) : null;
    }

    public final Boolean a() {
        return this.a;
    }
}
