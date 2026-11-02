package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Y6 implements Z6 {
    private final long a;
    private final EnumC3531c7 b;

    public Y6(long j, EnumC3531c7 recoveryStrategy) {
        Intrinsics.checkNotNullParameter(recoveryStrategy, "recoveryStrategy");
        this.a = j;
        this.b = recoveryStrategy;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Y6(C3513b7 feature) {
        this(feature.a(), feature.c());
        Intrinsics.checkNotNullParameter(feature, "feature");
    }

    @Override // com.ironsource.Z6
    public long a() {
        return this.a;
    }

    @Override // com.ironsource.Z6
    public EnumC3531c7 b() {
        return this.b;
    }
}
