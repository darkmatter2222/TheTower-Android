package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Ig {
    public static final a c = new a(null);
    private final Double a;
    private final Double b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final b a() {
            return new b();
        }

        @JvmStatic
        public final Ig b() {
            return a().a();
        }
    }

    public static final class b {
        private Double a;
        private Double b;

        public final b a(double d) {
            this.b = Double.valueOf(d);
            return this;
        }

        public final Ig a() {
            return new Ig(this, null);
        }

        public final void a(Double d) {
            this.b = d;
        }

        public final b b(double d) {
            this.a = Double.valueOf(d);
            return this;
        }

        public final Double b() {
            return this.b;
        }

        public final void b(Double d) {
            this.a = d;
        }

        public final Double c() {
            return this.a;
        }
    }

    private Ig(b bVar) {
        this.a = bVar.c();
        this.b = bVar.b();
    }

    public /* synthetic */ Ig(b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar);
    }

    @JvmStatic
    public static final b a() {
        return c.a();
    }

    @JvmStatic
    public static final Ig b() {
        return c.b();
    }

    public final Double c() {
        return this.b;
    }

    public final Double d() {
        return this.a;
    }

    public final String e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ceiling", this.b);
            jSONObject.put("floor", this.a);
        } catch (JSONException e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.getMessage());
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public String toString() {
        return "WaterfallConfiguration" + e();
    }
}
