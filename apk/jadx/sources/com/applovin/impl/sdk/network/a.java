package com.applovin.impl.sdk.network;

import com.applovin.impl.c5;
import com.applovin.impl.sdk.l;
import com.applovin.impl.z4;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private String a;
    private String b;
    private Map c;
    private Map d;
    private final JSONObject e;
    private String f;
    private final Object g;
    private final int h;
    private int i;
    private final int j;
    private final int k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final boolean o;
    private final z4.a p;
    private final boolean q;
    private final boolean r;

    /* JADX INFO: renamed from: com.applovin.impl.sdk.network.a$a, reason: collision with other inner class name */
    public static class C0028a {
        String a;
        String b;
        String c;
        Map e;
        JSONObject f;
        Object g;
        int i;
        int j;
        boolean k;
        boolean m;
        boolean n;
        boolean o;
        boolean p;
        z4.a q;
        int h = 1;
        boolean l = true;
        Map d = new HashMap();

        public C0028a(l lVar) {
            this.i = ((Integer) lVar.a(c5.d3)).intValue();
            this.j = ((Integer) lVar.a(c5.c3)).intValue();
            this.m = ((Boolean) lVar.a(c5.z3)).booleanValue();
            this.n = ((Boolean) lVar.a(c5.x5)).booleanValue();
            this.q = z4.a.a(((Integer) lVar.a(c5.y5)).intValue());
            this.p = ((Boolean) lVar.a(c5.Y5)).booleanValue();
        }

        public C0028a a(int i) {
            this.h = i;
            return this;
        }

        public C0028a a(z4.a aVar) {
            this.q = aVar;
            return this;
        }

        public C0028a a(Object obj) {
            this.g = obj;
            return this;
        }

        public C0028a a(String str) {
            this.c = str;
            return this;
        }

        public C0028a a(Map map) {
            this.e = map;
            return this;
        }

        public C0028a a(JSONObject jSONObject) {
            this.f = jSONObject;
            return this;
        }

        public C0028a a(boolean z) {
            this.n = z;
            return this;
        }

        public a a() {
            return new a(this);
        }

        public C0028a b(int i) {
            this.j = i;
            return this;
        }

        public C0028a b(String str) {
            this.b = str;
            return this;
        }

        public C0028a b(Map map) {
            this.d = map;
            return this;
        }

        public C0028a b(boolean z) {
            this.p = z;
            return this;
        }

        public C0028a c(int i) {
            this.i = i;
            return this;
        }

        public C0028a c(String str) {
            this.a = str;
            return this;
        }

        public C0028a c(boolean z) {
            this.k = z;
            return this;
        }

        public C0028a d(boolean z) {
            this.l = z;
            return this;
        }

        public C0028a e(boolean z) {
            this.m = z;
            return this;
        }

        public C0028a f(boolean z) {
            this.o = z;
            return this;
        }
    }

    protected a(C0028a c0028a) {
        this.a = c0028a.b;
        this.b = c0028a.a;
        this.c = c0028a.d;
        this.d = c0028a.e;
        this.e = c0028a.f;
        this.f = c0028a.c;
        this.g = c0028a.g;
        int i = c0028a.h;
        this.h = i;
        this.i = i;
        this.j = c0028a.i;
        this.k = c0028a.j;
        this.l = c0028a.k;
        this.m = c0028a.l;
        this.n = c0028a.m;
        this.o = c0028a.n;
        this.p = c0028a.q;
        this.q = c0028a.o;
        this.r = c0028a.p;
    }

    public static C0028a a(l lVar) {
        return new C0028a(lVar);
    }

    public String a() {
        return this.f;
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(String str) {
        this.f = str;
    }

    public JSONObject b() {
        return this.e;
    }

    public void b(String str) {
        this.a = str;
    }

    public int c() {
        return this.h - this.i;
    }

    public void c(String str) {
        this.b = str;
    }

    public Object d() {
        return this.g;
    }

    public z4.a e() {
        return this.p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.a;
        if (str == null ? aVar.a != null : !str.equals(aVar.a)) {
            return false;
        }
        Map map = this.c;
        if (map == null ? aVar.c != null : !map.equals(aVar.c)) {
            return false;
        }
        Map map2 = this.d;
        if (map2 == null ? aVar.d != null : !map2.equals(aVar.d)) {
            return false;
        }
        String str2 = this.f;
        if (str2 == null ? aVar.f != null : !str2.equals(aVar.f)) {
            return false;
        }
        String str3 = this.b;
        if (str3 == null ? aVar.b != null : !str3.equals(aVar.b)) {
            return false;
        }
        JSONObject jSONObject = this.e;
        if (jSONObject == null ? aVar.e != null : !jSONObject.equals(aVar.e)) {
            return false;
        }
        Object obj2 = this.g;
        if (obj2 == null ? aVar.g == null : obj2.equals(aVar.g)) {
            return this.h == aVar.h && this.i == aVar.i && this.j == aVar.j && this.k == aVar.k && this.l == aVar.l && this.m == aVar.m && this.n == aVar.n && this.o == aVar.o && this.p == aVar.p && this.q == aVar.q && this.r == aVar.r;
        }
        return false;
    }

    public String f() {
        return this.a;
    }

    public Map g() {
        return this.d;
    }

    public String h() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.a;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.b;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Object obj = this.g;
        int iHashCode5 = ((((((((((((((((((((((iHashCode4 + (obj != null ? obj.hashCode() : 0)) * 31) + this.h) * 31) + this.i) * 31) + this.j) * 31) + this.k) * 31) + (this.l ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31) + (this.n ? 1 : 0)) * 31) + (this.o ? 1 : 0)) * 31) + this.p.b()) * 31) + (this.q ? 1 : 0)) * 31) + (this.r ? 1 : 0);
        Map map = this.c;
        if (map != null) {
            iHashCode5 = (iHashCode5 * 31) + map.hashCode();
        }
        Map map2 = this.d;
        if (map2 != null) {
            iHashCode5 = (iHashCode5 * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.e;
        if (jSONObject == null) {
            return iHashCode5;
        }
        char[] charArray = jSONObject.toString().toCharArray();
        Arrays.sort(charArray);
        return (iHashCode5 * 31) + new String(charArray).hashCode();
    }

    public Map i() {
        return this.c;
    }

    public int j() {
        return this.i;
    }

    public int k() {
        return this.k;
    }

    public int l() {
        return this.j;
    }

    public boolean m() {
        return this.o;
    }

    public boolean n() {
        return this.l;
    }

    public boolean o() {
        return this.r;
    }

    public boolean p() {
        return this.m;
    }

    public boolean q() {
        return this.n;
    }

    public boolean r() {
        return this.q;
    }

    public String toString() {
        return "HttpRequest {endpoint=" + this.a + ", backupEndpoint=" + this.f + ", httpMethod=" + this.b + ", httpHeaders=" + this.d + ", body=" + this.e + ", emptyResponse=" + this.g + ", initialRetryAttempts=" + this.h + ", retryAttemptsLeft=" + this.i + ", timeoutMillis=" + this.j + ", retryDelayMillis=" + this.k + ", exponentialRetries=" + this.l + ", retryOnAllErrors=" + this.m + ", retryOnNoConnection=" + this.n + ", encodingEnabled=" + this.o + ", encodingType=" + this.p + ", trackConnectionSpeed=" + this.q + ", gzipBodyEncoding=" + this.r + AbstractJsonLexerKt.END_OBJ;
    }
}
