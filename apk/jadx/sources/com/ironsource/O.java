package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.Date;
import java.util.Objects;
import org.json.JSONObject;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class O {
    public static final a f = new a(null);
    public static final String g = "0";
    public static final String h = "0";
    public static final String i = "0";
    public static final String j = "0";
    private final R9 a;
    private W7 b;
    private String c;
    private EnumC3740o0 d;
    private double e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public O(R9 adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        this.a = adInstance;
        this.b = W7.UnknownProvider;
        this.c = "0";
        this.d = EnumC3740o0.LOAD_REQUEST;
        this.e = new Date().getTime() / 1000.0d;
    }

    public static /* synthetic */ O a(O o, R9 r9, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            r9 = o.a;
        }
        return o.a(r9);
    }

    public final O a(R9 adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        return new O(adInstance);
    }

    public final R9 a() {
        return this.a;
    }

    public final void a(double d) {
        this.e = d;
    }

    public final void a(W7 w7) {
        Intrinsics.checkNotNullParameter(w7, "<set-?>");
        this.b = w7;
    }

    public final void a(EnumC3740o0 enumC3740o0) {
        Intrinsics.checkNotNullParameter(enumC3740o0, "<set-?>");
        this.d = enumC3740o0;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.c = str;
    }

    public final IronSource.a b() {
        if (this.a.i()) {
            return IronSource.a.BANNER;
        }
        return this.a.n() ? IronSource.a.REWARDED_VIDEO : IronSource.a.INTERSTITIAL;
    }

    public final String c() {
        String strE = this.a.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        return strE;
    }

    public final R9 d() {
        return this.a;
    }

    public final W7 e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof O)) {
            return false;
        }
        O o = (O) obj;
        return Intrinsics.areEqual(c(), o.c()) && Intrinsics.areEqual(g(), o.g()) && b() == o.b() && Intrinsics.areEqual(i(), o.i()) && this.b == o.b && Intrinsics.areEqual(this.c, o.c) && this.d == o.d;
    }

    public final EnumC3740o0 f() {
        return this.d;
    }

    public final String g() {
        String strC = this.a.c();
        return strC == null ? "0" : strC;
    }

    public final String h() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hash(c(), g(), b(), i(), this.b, this.c, this.d, Double.valueOf(this.e));
    }

    public final String i() {
        String strG = this.a.g();
        Intrinsics.checkNotNullExpressionValue(strG, "getName(...)");
        return strG;
    }

    public final double j() {
        return this.e;
    }

    public String toString() {
        String string = new JSONObject().put(com.ironsource.sdk.controller.f.b.c, c()).put("advertiserBundleId", this.c).put("adProvider", this.b.ordinal()).put("adStatus", this.d.ordinal()).put("lastStatusUpdateTimeStamp", (long) this.e).put("adUnitId", g()).put("adFormat", b().toString()).put("instanceId", i()).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
