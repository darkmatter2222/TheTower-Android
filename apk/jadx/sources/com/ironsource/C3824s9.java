package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3824s9 {
    private final String a;
    private final String b;
    private final EnumC3862u9 c;
    private final JSONObject d;

    public C3824s9(String url, String storePackage, EnumC3862u9 strategy, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(storePackage, "storePackage");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = url;
        this.b = storePackage;
        this.c = strategy;
        this.d = jSONObject;
    }

    public /* synthetic */ C3824s9(String str, String str2, EnumC3862u9 enumC3862u9, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? EnumC3862u9.APP_ACTIVITY : enumC3862u9, (i & 8) != 0 ? null : jSONObject);
    }

    public static /* synthetic */ C3824s9 a(C3824s9 c3824s9, String str, String str2, EnumC3862u9 enumC3862u9, JSONObject jSONObject, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3824s9.a;
        }
        if ((i & 2) != 0) {
            str2 = c3824s9.b;
        }
        if ((i & 4) != 0) {
            enumC3862u9 = c3824s9.c;
        }
        if ((i & 8) != 0) {
            jSONObject = c3824s9.d;
        }
        return c3824s9.a(str, str2, enumC3862u9, jSONObject);
    }

    public final C3824s9 a(String url, String storePackage, EnumC3862u9 strategy, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(storePackage, "storePackage");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        return new C3824s9(url, storePackage, strategy, jSONObject);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final EnumC3862u9 c() {
        return this.c;
    }

    public final JSONObject d() {
        return this.d;
    }

    public final JSONObject e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3824s9)) {
            return false;
        }
        C3824s9 c3824s9 = (C3824s9) obj;
        return Intrinsics.areEqual(this.a, c3824s9.a) && Intrinsics.areEqual(this.b, c3824s9.b) && this.c == c3824s9.c && Intrinsics.areEqual(this.d, c3824s9.d);
    }

    public final String f() {
        return this.b;
    }

    public final EnumC3862u9 g() {
        return this.c;
    }

    public final String h() {
        return this.a;
    }

    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        JSONObject jSONObject = this.d;
        return iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode());
    }

    public String toString() {
        return "InlineStoreRequest(url=" + this.a + ", storePackage=" + this.b + ", strategy=" + this.c + ", extras=" + this.d + ")";
    }
}
