package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.List;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ze, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3957ze {
    private final String a;
    private final String b;
    private final List<IronSource.a> c;

    public C3957ze(String appKey, String str, List<IronSource.a> legacyAdFormats) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(legacyAdFormats, "legacyAdFormats");
        this.a = appKey;
        this.b = str;
        this.c = legacyAdFormats;
    }

    public /* synthetic */ C3957ze(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ C3957ze a(C3957ze c3957ze, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3957ze.a;
        }
        if ((i & 2) != 0) {
            str2 = c3957ze.b;
        }
        if ((i & 4) != 0) {
            list = c3957ze.c;
        }
        return c3957ze.a(str, str2, list);
    }

    public final C3957ze a(String appKey, String str, List<IronSource.a> legacyAdFormats) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(legacyAdFormats, "legacyAdFormats");
        return new C3957ze(appKey, str, legacyAdFormats);
    }

    public final String a() {
        return this.a;
    }

    public final void a(List<? extends IronSource.a> adFormats) {
        Intrinsics.checkNotNullParameter(adFormats, "adFormats");
        this.c.clear();
        this.c.addAll(adFormats);
    }

    public final String b() {
        return this.b;
    }

    public final List<IronSource.a> c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final List<IronSource.a> e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3957ze)) {
            return false;
        }
        C3957ze c3957ze = (C3957ze) obj;
        return Intrinsics.areEqual(this.a, c3957ze.a) && Intrinsics.areEqual(this.b, c3957ze.b) && Intrinsics.areEqual(this.c, c3957ze.c);
    }

    public final String f() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "SdkInitRequest(appKey=" + this.a + ", userId=" + this.b + ", legacyAdFormats=" + this.c + ")";
    }
}
