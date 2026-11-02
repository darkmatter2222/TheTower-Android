package com.ironsource;

import java.util.HashMap;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.sd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3828sd implements D0 {
    private final String a;

    public C3828sd(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.a = placementName;
    }

    @Override // com.ironsource.D0
    public Map<String, Object> a(B0 b0) {
        HashMap map = new HashMap();
        map.put("placement", this.a);
        return map;
    }
}
