package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.t3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC3838t3 {
    private final int a;
    private final String b;
    private final boolean c;
    private final C3735nd d;

    public AbstractC3838t3(int i, String placementName, boolean z, C3735nd c3735nd) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.a = i;
        this.b = placementName;
        this.c = z;
        this.d = c3735nd;
    }

    public /* synthetic */ AbstractC3838t3(int i, String str, boolean z, C3735nd c3735nd, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, str, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? null : c3735nd);
    }

    public final C3735nd a() {
        return this.d;
    }

    public final boolean a(int i) {
        return this.a == i;
    }

    public final int b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean d() {
        return this.c;
    }

    public String toString() {
        return "placement name: " + this.b;
    }
}
