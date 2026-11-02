package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.f9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3588f9 {
    private final String a;
    private final String b;
    private W c;
    private boolean d;
    private String e;
    private String f;

    public C3588f9(String appKey, String userId) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.a = appKey;
        this.b = userId;
    }

    public static /* synthetic */ C3588f9 a(C3588f9 c3588f9, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3588f9.a;
        }
        if ((i & 2) != 0) {
            str2 = c3588f9.b;
        }
        return c3588f9.a(str, str2);
    }

    public final C3588f9 a(String appKey, String userId) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new C3588f9(appKey, userId);
    }

    public final <T> T a(Ob<C3588f9, T> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }

    public final String a() {
        return this.a;
    }

    public final void a(W w) {
        this.c = w;
    }

    public final void a(String str) {
        this.f = str;
    }

    public final void a(boolean z) {
        this.d = z;
    }

    public final String b() {
        return this.b;
    }

    public final void b(String str) {
        this.e = str;
    }

    public final boolean c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final W e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3588f9)) {
            return false;
        }
        C3588f9 c3588f9 = (C3588f9) obj;
        return Intrinsics.areEqual(this.a, c3588f9.a) && Intrinsics.areEqual(this.b, c3588f9.b);
    }

    public final String f() {
        return this.f;
    }

    public final String g() {
        return this.e;
    }

    public final String h() {
        return this.b;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "InitConfig(appKey=" + this.a + ", userId=" + this.b + ")";
    }
}
