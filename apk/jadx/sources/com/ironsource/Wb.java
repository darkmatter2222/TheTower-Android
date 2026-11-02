package com.ironsource;

import java.util.ArrayList;
import java.util.Iterator;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Wb {
    public static final a m = new a(null);
    private static final int n = 0;
    private final boolean a;
    private R1 b;
    private int c;
    private long d;
    private boolean e;
    private final ArrayList<C3627hc> f;
    private C3627hc g;
    private int h;
    private A2 i;
    private long j;
    private boolean k;
    private boolean l;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Wb(int i, long j, boolean z, R1 events, A2 auctionSettings, int i2, long j2, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(auctionSettings, "auctionSettings");
        this.a = z4;
        this.f = new ArrayList<>();
        this.c = i;
        this.d = j;
        this.e = z;
        this.b = events;
        this.h = i2;
        this.i = auctionSettings;
        this.j = j2;
        this.k = z2;
        this.l = z3;
    }

    public final C3627hc a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Iterator<C3627hc> it = this.f.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            C3627hc next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            C3627hc c3627hc = next;
            if (Intrinsics.areEqual(c3627hc.c(), placementName)) {
                return c3627hc;
            }
        }
        return null;
    }

    public final void a(int i) {
        this.c = i;
    }

    public final void a(long j) {
        this.d = j;
    }

    public final void a(A2 a2) {
        Intrinsics.checkNotNullParameter(a2, "<set-?>");
        this.i = a2;
    }

    public final void a(R1 r1) {
        Intrinsics.checkNotNullParameter(r1, "<set-?>");
        this.b = r1;
    }

    public final void a(C3627hc c3627hc) {
        if (c3627hc != null) {
            this.f.add(c3627hc);
            if (this.g == null) {
                this.g = c3627hc;
            } else if (c3627hc.b() == 0) {
                this.g = c3627hc;
            }
        }
    }

    public final void a(boolean z) {
        this.e = z;
    }

    public final boolean a() {
        return this.e;
    }

    public final int b() {
        return this.c;
    }

    public final void b(int i) {
        this.h = i;
    }

    public final void b(long j) {
        this.j = j;
    }

    public final void b(boolean z) {
        this.k = z;
    }

    public final long c() {
        return this.d;
    }

    public final void c(boolean z) {
        this.l = z;
    }

    public final A2 d() {
        return this.i;
    }

    public final C3627hc e() {
        Iterator<C3627hc> it = this.f.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            C3627hc next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            C3627hc c3627hc = next;
            if (c3627hc.d()) {
                return c3627hc;
            }
        }
        return this.g;
    }

    public final int f() {
        return this.h;
    }

    public final R1 g() {
        return this.b;
    }

    public final long h() {
        return this.j;
    }

    public final boolean i() {
        return this.k;
    }

    public final boolean j() {
        return this.a;
    }

    public final boolean k() {
        return this.l;
    }

    public String toString() {
        return "NativeAdConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.e + "}";
    }
}
