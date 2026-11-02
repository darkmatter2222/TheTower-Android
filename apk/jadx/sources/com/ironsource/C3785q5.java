package com.ironsource;

import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.q5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3785q5 implements Ob<String, com.ironsource.mediationsdk.d.a> {
    @Override // com.ironsource.Ob
    public com.ironsource.mediationsdk.d.a a(String input) throws JSONException {
        Intrinsics.checkNotNullParameter(input, "input");
        com.ironsource.mediationsdk.d.a aVarA = com.ironsource.mediationsdk.d.b().a(new JSONObject(input));
        Intrinsics.checkNotNullExpressionValue(aVarA, "getAuctionDataFromResponse(...)");
        return aVarA;
    }
}
