package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Yc {
    private final String a;
    private final String b;

    public Yc(String url, String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a = url;
        this.b = str;
    }

    public /* synthetic */ Yc(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ Yc a(Yc yc, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = yc.a;
        }
        if ((i & 2) != 0) {
            str2 = yc.b;
        }
        return yc.a(str, str2);
    }

    public final Yc a(String url, String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new Yc(url, str);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Yc)) {
            return false;
        }
        Yc yc = (Yc) obj;
        return Intrinsics.areEqual(this.a, yc.a) && Intrinsics.areEqual(this.b, yc.b);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "OpenUrl(url=" + this.a + ", packageName=" + this.b + ")";
    }
}
