package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3814s {
    private final String a;
    private final EnumC3916x9 b;
    private final boolean c;
    private final String d;
    private final long e;

    public C3814s(String adSourceNameForEvents, EnumC3916x9 instanceType, boolean z, String providerName, long j) {
        Intrinsics.checkNotNullParameter(adSourceNameForEvents, "adSourceNameForEvents");
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.a = adSourceNameForEvents;
        this.b = instanceType;
        this.c = z;
        this.d = providerName;
        this.e = j;
    }

    public static /* synthetic */ C3814s a(C3814s c3814s, String str, EnumC3916x9 enumC3916x9, boolean z, String str2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3814s.a;
        }
        if ((i & 2) != 0) {
            enumC3916x9 = c3814s.b;
        }
        if ((i & 4) != 0) {
            z = c3814s.c;
        }
        if ((i & 8) != 0) {
            str2 = c3814s.d;
        }
        if ((i & 16) != 0) {
            j = c3814s.e;
        }
        long j2 = j;
        return c3814s.a(str, enumC3916x9, z, str2, j2);
    }

    public final C3814s a(String adSourceNameForEvents, EnumC3916x9 instanceType, boolean z, String providerName, long j) {
        Intrinsics.checkNotNullParameter(adSourceNameForEvents, "adSourceNameForEvents");
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return new C3814s(adSourceNameForEvents, instanceType, z, providerName, j);
    }

    public final String a() {
        return this.a;
    }

    public final EnumC3916x9 b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final long e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3814s)) {
            return false;
        }
        C3814s c3814s = (C3814s) obj;
        return Intrinsics.areEqual(this.a, c3814s.a) && this.b == c3814s.b && this.c == c3814s.c && Intrinsics.areEqual(this.d, c3814s.d) && this.e == c3814s.e;
    }

    public final String f() {
        return this.a;
    }

    public final EnumC3916x9 g() {
        return this.b;
    }

    public final long h() {
        return this.e;
    }

    public int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + Long.hashCode(this.e);
    }

    public final String i() {
        return this.d;
    }

    public final boolean j() {
        return this.c;
    }

    public String toString() {
        return "AdFormatConfig(adSourceNameForEvents=" + this.a + ", instanceType=" + this.b + ", isOneFlow=" + this.c + ", providerName=" + this.d + ", loadTimeoutInMillis=" + this.e + ")";
    }
}
