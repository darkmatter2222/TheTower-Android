package com.ironsource;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public final class Fb {
    public static final a e = new a(null);
    private static final String f = "graceDuration";
    private static final String g = "graceOutcome";
    private static final String h = "heldDuration";
    private static final String i = "instances";
    private static final String j = "id";
    private static final String k = "adNetwork";
    private static final String l = "showOrderIndex";
    private static final String m = "loadOrderIndex";
    private static final String n = "revenue";
    private static final String o = "precision";
    private static final String p = "status";
    private static final String q = "delivered";
    private final long a;
    private final b b;
    private final long c;
    private final List<c> d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public enum b {
        NOT_SCHEDULED("not_scheduled"),
        BEST_LOADED("best_loaded"),
        BETTER_LOADED_GRACE_EXPIRED("better_loaded_grace_expired"),
        BETTER_LOADED_BEST_FAILED("better_loaded_best_failed"),
        INITIAL_LOADED_GRACE_EXPIRED("initial_loaded_grace_expired"),
        INITIAL_LOADED_BEST_FAILED("initial_loaded_best_failed");

        private static final /* synthetic */ EnumEntries i = EnumEntriesKt.enumEntries(a());
        private final String a;

        b(String str) {
            this.a = str;
        }

        public static EnumEntries<b> b() {
            return i;
        }

        public final String c() {
            return this.a;
        }
    }

    public static final class c {
        private final String a;
        private final String b;
        private final int c;
        private final int d;
        private final double e;
        private final String f;
        private final d g;
        private final boolean h;

        public c(String instanceId, String adNetwork, int i, int i2, double d, String precision, d status, boolean z) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(adNetwork, "adNetwork");
            Intrinsics.checkNotNullParameter(precision, "precision");
            Intrinsics.checkNotNullParameter(status, "status");
            this.a = instanceId;
            this.b = adNetwork;
            this.c = i;
            this.d = i2;
            this.e = d;
            this.f = precision;
            this.g = status;
            this.h = z;
        }

        public static /* synthetic */ c a(c cVar, String str, String str2, int i, int i2, double d, String str3, d dVar, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = cVar.a;
            }
            if ((i3 & 2) != 0) {
                str2 = cVar.b;
            }
            if ((i3 & 4) != 0) {
                i = cVar.c;
            }
            if ((i3 & 8) != 0) {
                i2 = cVar.d;
            }
            if ((i3 & 16) != 0) {
                d = cVar.e;
            }
            if ((i3 & 32) != 0) {
                str3 = cVar.f;
            }
            if ((i3 & 64) != 0) {
                dVar = cVar.g;
            }
            if ((i3 & 128) != 0) {
                z = cVar.h;
            }
            boolean z2 = z;
            String str4 = str3;
            double d2 = d;
            int i4 = i;
            int i5 = i2;
            return cVar.a(str, str2, i4, i5, d2, str4, dVar, z2);
        }

        public final c a(String instanceId, String adNetwork, int i, int i2, double d, String precision, d status, boolean z) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(adNetwork, "adNetwork");
            Intrinsics.checkNotNullParameter(precision, "precision");
            Intrinsics.checkNotNullParameter(status, "status");
            return new c(instanceId, adNetwork, i, i2, d, precision, status, z);
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final int c() {
            return this.c;
        }

        public final int d() {
            return this.d;
        }

        public final double e() {
            return this.e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.areEqual(this.a, cVar.a) && Intrinsics.areEqual(this.b, cVar.b) && this.c == cVar.c && this.d == cVar.d && Double.compare(this.e, cVar.e) == 0 && Intrinsics.areEqual(this.f, cVar.f) && this.g == cVar.g && this.h == cVar.h;
        }

        public final String f() {
            return this.f;
        }

        public final d g() {
            return this.g;
        }

        public final boolean h() {
            return this.h;
        }

        public int hashCode() {
            return (((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Double.hashCode(this.e)) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + Boolean.hashCode(this.h);
        }

        public final String i() {
            return this.b;
        }

        public final boolean j() {
            return this.h;
        }

        public final String k() {
            return this.a;
        }

        public final int l() {
            return this.d;
        }

        public final String m() {
            return this.f;
        }

        public final double n() {
            return this.e;
        }

        public final int o() {
            return this.c;
        }

        public final d p() {
            return this.g;
        }

        public String toString() {
            return "InstanceState(instanceId=" + this.a + ", adNetwork=" + this.b + ", showOrderIndex=" + this.c + ", loadOrderIndex=" + this.d + ", revenue=" + this.e + ", precision=" + this.f + ", status=" + this.g + ", delivered=" + this.h + ")";
        }
    }

    public enum d {
        LOADING("loading"),
        LOADED("loaded"),
        FAILED("failed"),
        TIMED_OUT("timedOut");

        private static final /* synthetic */ EnumEntries g = EnumEntriesKt.enumEntries(a());
        private final String a;

        d(String str) {
            this.a = str;
        }

        public static EnumEntries<d> b() {
            return g;
        }

        public final String c() {
            return this.a;
        }
    }

    public Fb(long j2, b graceOutcome, long j3, List<c> instances) {
        Intrinsics.checkNotNullParameter(graceOutcome, "graceOutcome");
        Intrinsics.checkNotNullParameter(instances, "instances");
        this.a = j2;
        this.b = graceOutcome;
        this.c = j3;
        this.d = instances;
    }

    private final double a(c cVar) {
        if (Math.abs(cVar.n()) > Double.MAX_VALUE) {
            return -1.0d;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.ENGLISH, "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(cVar.n())}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return Double.parseDouble(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Fb a(Fb fb, long j2, b bVar, long j3, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = fb.a;
        }
        long j4 = j2;
        if ((i2 & 2) != 0) {
            bVar = fb.b;
        }
        b bVar2 = bVar;
        if ((i2 & 4) != 0) {
            j3 = fb.c;
        }
        long j5 = j3;
        if ((i2 & 8) != 0) {
            list = fb.d;
        }
        return fb.a(j4, bVar2, j5, list);
    }

    private final JSONObject b(c cVar) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("id", cVar.k()).put("adNetwork", cVar.i()).put(l, cVar.o()).put(m, cVar.l()).put("revenue", a(cVar)).put("precision", cVar.m()).put("status", cVar.p().c()).put(q, cVar.j() ? 1 : 0);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public final long a() {
        return this.a;
    }

    public final Fb a(long j2, b graceOutcome, long j3, List<c> instances) {
        Intrinsics.checkNotNullParameter(graceOutcome, "graceOutcome");
        Intrinsics.checkNotNullParameter(instances, "instances");
        return new Fb(j2, graceOutcome, j3, instances);
    }

    public final b b() {
        return this.b;
    }

    public final long c() {
        return this.c;
    }

    public final List<c> d() {
        return this.d;
    }

    public final long e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fb)) {
            return false;
        }
        Fb fb = (Fb) obj;
        return this.a == fb.a && this.b == fb.b && this.c == fb.c && Intrinsics.areEqual(this.d, fb.d);
    }

    public final b f() {
        return this.b;
    }

    public final long g() {
        return this.c;
    }

    public final List<c> h() {
        return this.d;
    }

    public int hashCode() {
        return (((((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c)) * 31) + this.d.hashCode();
    }

    public final String i() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(f, this.a).put(g, this.b.c()).put(h, this.c);
        List<c> list = this.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b((c) it.next()));
        }
        String string = jSONObjectPut.put("instances", new JSONArray((Collection) arrayList)).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public String toString() {
        return "LoadGraceResult(graceDurationMs=" + this.a + ", graceOutcome=" + this.b + ", heldDurationMs=" + this.c + ", instances=" + this.d + ")";
    }
}
