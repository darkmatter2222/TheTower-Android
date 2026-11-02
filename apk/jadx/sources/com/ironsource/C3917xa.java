package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.xa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3917xa implements Te<JSONObject> {
    private final Te<String> a;

    public C3917xa(Te<String> serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        this.a = serverResponse;
    }

    @Override // com.ironsource.Te
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a() {
        return new JSONObject(this.a.a());
    }
}
