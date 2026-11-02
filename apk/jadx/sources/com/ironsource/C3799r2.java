package com.ironsource;

import java.util.HashMap;
import java.util.Map;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.r2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3799r2 {
    private final String a;
    private final boolean b;
    private boolean c;
    private String d;
    private Map<String, ? extends Object> e;
    private C3652j2 f;
    private Map<String, Object> g;

    public C3799r2(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = name;
        this.b = z;
        this.d = "";
        this.e = MapsKt.emptyMap();
        this.g = new HashMap();
    }

    public static /* synthetic */ C3799r2 a(C3799r2 c3799r2, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3799r2.a;
        }
        if ((i & 2) != 0) {
            z = c3799r2.b;
        }
        return c3799r2.a(str, z);
    }

    public final C3799r2 a(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new C3799r2(name, z);
    }

    public final String a() {
        return this.a;
    }

    public final void a(C3652j2 c3652j2) {
        this.f = c3652j2;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.d = str;
    }

    public final void a(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.g = map;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void b(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.e = map;
    }

    public final boolean b() {
        return this.b;
    }

    public final Map<String, Object> c() {
        return this.g;
    }

    public final C3652j2 d() {
        return this.f;
    }

    public final boolean e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3799r2)) {
            return false;
        }
        C3799r2 c3799r2 = (C3799r2) obj;
        return Intrinsics.areEqual(this.a, c3799r2.a) && this.b == c3799r2.b;
    }

    public final Map<String, Object> f() {
        return this.e;
    }

    public final String g() {
        return this.a;
    }

    public final String h() {
        return this.d;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + Boolean.hashCode(this.b);
    }

    public final boolean i() {
        return this.c;
    }

    public String toString() {
        return "AuctionRequestInstanceInfo(name=" + this.a + ", bidder=" + this.b + ")";
    }
}
