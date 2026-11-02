package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.tf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3850tf {
    private final int a;
    private final M3 b;

    public C3850tf(int i, M3 unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.a = i;
        this.b = unit;
    }

    public final int a() {
        return this.a;
    }

    public final M3 b() {
        return this.b;
    }

    public String toString() {
        return "ShowCountCappingConfig(maxImpressions=" + this.a + ", unit=" + this.b + ")";
    }
}
