package com.ironsource;

import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3872v1 {
    public static final b a = b.a;

    /* JADX INFO: renamed from: com.ironsource.v1$a */
    public interface a extends InterfaceC3872v1 {

        /* JADX INFO: renamed from: com.ironsource.v1$a$a, reason: collision with other inner class name */
        public static final class C1129a implements a {
            private final String b;
            private final String c;
            private final C3843t8.e d;
            private final String e;
            private final String f;
            private final C1130a g;
            private final int h;
            private final int i;

            /* JADX INFO: renamed from: com.ironsource.v1$a$a$a, reason: collision with other inner class name */
            public static final class C1130a {
                private final int a;
                private final int b;

                public C1130a(int i, int i2) {
                    this.a = i;
                    this.b = i2;
                }

                public static /* synthetic */ C1130a a(C1130a c1130a, int i, int i2, int i3, Object obj) {
                    if ((i3 & 1) != 0) {
                        i = c1130a.a;
                    }
                    if ((i3 & 2) != 0) {
                        i2 = c1130a.b;
                    }
                    return c1130a.a(i, i2);
                }

                public final int a() {
                    return this.a;
                }

                public final C1130a a(int i, int i2) {
                    return new C1130a(i, i2);
                }

                public final int b() {
                    return this.b;
                }

                public final int c() {
                    return this.a;
                }

                public final int d() {
                    return this.b;
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof C1130a)) {
                        return false;
                    }
                    C1130a c1130a = (C1130a) obj;
                    return this.a == c1130a.a && this.b == c1130a.b;
                }

                public int hashCode() {
                    return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
                }

                public String toString() {
                    return "Coordinates(x=" + this.a + ", y=" + this.b + ")";
                }
            }

            public C1129a(String successCallback, String failCallback, C3843t8.e productType, String demandSourceName, String url, C1130a coordinates, int i, int i2) {
                Intrinsics.checkNotNullParameter(successCallback, "successCallback");
                Intrinsics.checkNotNullParameter(failCallback, "failCallback");
                Intrinsics.checkNotNullParameter(productType, "productType");
                Intrinsics.checkNotNullParameter(demandSourceName, "demandSourceName");
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(coordinates, "coordinates");
                this.b = successCallback;
                this.c = failCallback;
                this.d = productType;
                this.e = demandSourceName;
                this.f = url;
                this.g = coordinates;
                this.h = i;
                this.i = i2;
            }

            public static /* synthetic */ C1129a a(C1129a c1129a, String str, String str2, C3843t8.e eVar, String str3, String str4, C1130a c1130a, int i, int i2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    str = c1129a.b;
                }
                if ((i3 & 2) != 0) {
                    str2 = c1129a.c;
                }
                if ((i3 & 4) != 0) {
                    eVar = c1129a.d;
                }
                if ((i3 & 8) != 0) {
                    str3 = c1129a.e;
                }
                if ((i3 & 16) != 0) {
                    str4 = c1129a.f;
                }
                if ((i3 & 32) != 0) {
                    c1130a = c1129a.g;
                }
                if ((i3 & 64) != 0) {
                    i = c1129a.h;
                }
                if ((i3 & 128) != 0) {
                    i2 = c1129a.i;
                }
                int i4 = i;
                int i5 = i2;
                String str5 = str4;
                C1130a c1130a2 = c1130a;
                return c1129a.a(str, str2, eVar, str3, str5, c1130a2, i4, i5);
            }

            public final C1129a a(String successCallback, String failCallback, C3843t8.e productType, String demandSourceName, String url, C1130a coordinates, int i, int i2) {
                Intrinsics.checkNotNullParameter(successCallback, "successCallback");
                Intrinsics.checkNotNullParameter(failCallback, "failCallback");
                Intrinsics.checkNotNullParameter(productType, "productType");
                Intrinsics.checkNotNullParameter(demandSourceName, "demandSourceName");
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(coordinates, "coordinates");
                return new C1129a(successCallback, failCallback, productType, demandSourceName, url, coordinates, i, i2);
            }

            @Override // com.ironsource.InterfaceC3872v1
            public String a() {
                return this.b;
            }

            @Override // com.ironsource.InterfaceC3872v1.a
            public String b() {
                return this.f;
            }

            @Override // com.ironsource.InterfaceC3872v1
            public String c() {
                return this.c;
            }

            @Override // com.ironsource.InterfaceC3872v1
            public C3843t8.e d() {
                return this.d;
            }

            @Override // com.ironsource.InterfaceC3872v1
            public String e() {
                return this.e;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C1129a)) {
                    return false;
                }
                C1129a c1129a = (C1129a) obj;
                return Intrinsics.areEqual(this.b, c1129a.b) && Intrinsics.areEqual(this.c, c1129a.c) && this.d == c1129a.d && Intrinsics.areEqual(this.e, c1129a.e) && Intrinsics.areEqual(this.f, c1129a.f) && Intrinsics.areEqual(this.g, c1129a.g) && this.h == c1129a.h && this.i == c1129a.i;
            }

            public final String f() {
                return this.b;
            }

            public final String g() {
                return this.c;
            }

            public final C3843t8.e h() {
                return this.d;
            }

            public int hashCode() {
                return (((((((((((((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + Integer.hashCode(this.h)) * 31) + Integer.hashCode(this.i);
            }

            public final String i() {
                return this.e;
            }

            public final String j() {
                return this.f;
            }

            public final C1130a k() {
                return this.g;
            }

            public final int l() {
                return this.h;
            }

            public final int m() {
                return this.i;
            }

            public final int n() {
                return this.h;
            }

            public final C1130a o() {
                return this.g;
            }

            public final int p() {
                return this.i;
            }

            public String toString() {
                return "Click(successCallback=" + this.b + ", failCallback=" + this.c + ", productType=" + this.d + ", demandSourceName=" + this.e + ", url=" + this.f + ", coordinates=" + this.g + ", action=" + this.h + ", metaState=" + this.i + ")";
            }
        }

        /* JADX INFO: renamed from: com.ironsource.v1$a$b */
        public static final class b implements a {
            private final String b;
            private final String c;
            private final C3843t8.e d;
            private final String e;
            private final String f;

            public b(String successCallback, String failCallback, C3843t8.e productType, String demandSourceName, String url) {
                Intrinsics.checkNotNullParameter(successCallback, "successCallback");
                Intrinsics.checkNotNullParameter(failCallback, "failCallback");
                Intrinsics.checkNotNullParameter(productType, "productType");
                Intrinsics.checkNotNullParameter(demandSourceName, "demandSourceName");
                Intrinsics.checkNotNullParameter(url, "url");
                this.b = successCallback;
                this.c = failCallback;
                this.d = productType;
                this.e = demandSourceName;
                this.f = url;
            }

            public static /* synthetic */ b a(b bVar, String str, String str2, C3843t8.e eVar, String str3, String str4, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = bVar.b;
                }
                if ((i & 2) != 0) {
                    str2 = bVar.c;
                }
                if ((i & 4) != 0) {
                    eVar = bVar.d;
                }
                if ((i & 8) != 0) {
                    str3 = bVar.e;
                }
                if ((i & 16) != 0) {
                    str4 = bVar.f;
                }
                String str5 = str4;
                C3843t8.e eVar2 = eVar;
                return bVar.a(str, str2, eVar2, str3, str5);
            }

            public final b a(String successCallback, String failCallback, C3843t8.e productType, String demandSourceName, String url) {
                Intrinsics.checkNotNullParameter(successCallback, "successCallback");
                Intrinsics.checkNotNullParameter(failCallback, "failCallback");
                Intrinsics.checkNotNullParameter(productType, "productType");
                Intrinsics.checkNotNullParameter(demandSourceName, "demandSourceName");
                Intrinsics.checkNotNullParameter(url, "url");
                return new b(successCallback, failCallback, productType, demandSourceName, url);
            }

            @Override // com.ironsource.InterfaceC3872v1
            public String a() {
                return this.b;
            }

            @Override // com.ironsource.InterfaceC3872v1.a
            public String b() {
                return this.f;
            }

            @Override // com.ironsource.InterfaceC3872v1
            public String c() {
                return this.c;
            }

            @Override // com.ironsource.InterfaceC3872v1
            public C3843t8.e d() {
                return this.d;
            }

            @Override // com.ironsource.InterfaceC3872v1
            public String e() {
                return this.e;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.c, bVar.c) && this.d == bVar.d && Intrinsics.areEqual(this.e, bVar.e) && Intrinsics.areEqual(this.f, bVar.f);
            }

            public final String f() {
                return this.b;
            }

            public final String g() {
                return this.c;
            }

            public final C3843t8.e h() {
                return this.d;
            }

            public int hashCode() {
                return (((((((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode();
            }

            public final String i() {
                return this.e;
            }

            public final String j() {
                return this.f;
            }

            public String toString() {
                return "Impression(successCallback=" + this.b + ", failCallback=" + this.c + ", productType=" + this.d + ", demandSourceName=" + this.e + ", url=" + this.f + ")";
            }
        }

        String b();
    }

    /* JADX INFO: renamed from: com.ironsource.v1$b */
    public static final class b {
        static final /* synthetic */ b a = new b();

        private b() {
        }

        private final a a(JSONObject jSONObject) throws JSONException {
            String string = jSONObject.getString("success");
            String string2 = jSONObject.getString(C3510b4.g.e);
            String string3 = jSONObject.getString("demandSourceName");
            String string4 = jSONObject.getString(C3510b4.i.m);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            C3843t8.e eVarValueOf = C3843t8.e.valueOf(string4);
            JSONObject jSONObject2 = jSONObject.getJSONObject("params");
            String string5 = jSONObject2.getString("url");
            String strOptString = jSONObject2.optString("type");
            if (!Intrinsics.areEqual(strOptString, "click")) {
                if (!Intrinsics.areEqual(strOptString, "impression")) {
                    throw new IllegalArgumentException("JSON does not contain valid type: " + jSONObject2.optString("type"));
                }
                Intrinsics.checkNotNull(string);
                Intrinsics.checkNotNull(string2);
                Intrinsics.checkNotNull(string3);
                Intrinsics.checkNotNull(string5);
                return new a.b(string, string2, eVarValueOf, string3, string5);
            }
            JSONObject jSONObject3 = jSONObject2.getJSONObject(C3528c4.f);
            int i = jSONObject3.getInt(C3528c4.g);
            int i2 = jSONObject3.getInt(C3528c4.h);
            int iOptInt = jSONObject2.optInt("action", 0);
            int iOptInt2 = jSONObject2.optInt(C3528c4.j, 0);
            Intrinsics.checkNotNull(string);
            Intrinsics.checkNotNull(string2);
            Intrinsics.checkNotNull(string3);
            Intrinsics.checkNotNull(string5);
            return new a.C1129a(string, string2, eVarValueOf, string3, string5, new a.C1129a.C1130a(i, i2), iOptInt, iOptInt2);
        }

        @JvmStatic
        public final InterfaceC3872v1 a(String jsonString) {
            Intrinsics.checkNotNullParameter(jsonString, "jsonString");
            JSONObject jSONObject = new JSONObject(jsonString);
            String strOptString = jSONObject.optString("type", "none");
            if (Intrinsics.areEqual(strOptString, C3528c4.c)) {
                return a(jSONObject);
            }
            throw new IllegalArgumentException("unsupported message type: " + strOptString);
        }
    }

    @JvmStatic
    static InterfaceC3872v1 a(String str) {
        return a.a(str);
    }

    String a();

    String c();

    C3843t8.e d();

    String e();
}
