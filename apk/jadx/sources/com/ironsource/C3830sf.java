package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.sf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3830sf {
    private final String a;
    private final String b;

    public C3830sf(String identifier, String baseConst) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(baseConst, "baseConst");
        this.a = identifier;
        this.b = baseConst;
    }

    public final String a() {
        return this.a + "_" + this.b;
    }
}
