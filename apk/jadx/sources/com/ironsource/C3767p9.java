package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: renamed from: com.ironsource.p9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3767p9 {
    private final int a;
    private final int b;
    private final int c;
    private int d;
    private boolean e;
    private String f;

    public C3767p9() {
        this(0, 0, 0, 7, null);
    }

    public C3767p9(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public /* synthetic */ C3767p9(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 62 : i, (i4 & 2) != 0 ? 12 : i2, (i4 & 4) != 0 ? 1 : i3);
    }

    private final int a() {
        return this.c << Math.min(this.d, this.b);
    }

    public final void a(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (this.f == null) {
            this.f = reason;
        }
    }

    public final boolean a(C3829se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return error.c() != 2110;
    }

    public final Sd b(C3829se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        a(error.d());
        if (this.d >= this.a) {
            return Sd.a.a;
        }
        e();
        Duration.Companion companion = Duration.INSTANCE;
        long duration = DurationKt.toDuration(a(), DurationUnit.SECONDS);
        this.d++;
        return new Sd.b(duration, null);
    }

    public final String b() {
        return this.f;
    }

    public final int c() {
        return this.d;
    }

    public final boolean d() {
        return this.e;
    }

    public final void e() {
        this.e = true;
    }
}
