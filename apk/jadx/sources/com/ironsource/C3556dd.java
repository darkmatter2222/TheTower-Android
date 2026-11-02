package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.dd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3556dd {
    private final long a;
    private final M3 b;

    public C3556dd(long j, M3 unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.a = j;
        this.b = unit;
    }

    public /* synthetic */ C3556dd(long j, M3 m3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? M3.Second : m3);
    }

    public final long a() {
        return this.a;
    }

    public final M3 b() {
        return this.b;
    }

    public String toString() {
        return "PacingCappingConfig(timeInterval=" + this.a + " unit=" + this.b + ")";
    }
}
