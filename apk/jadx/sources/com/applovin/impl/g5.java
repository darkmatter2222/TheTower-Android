package com.applovin.impl;

import android.os.SystemClock;
import com.applovin.mediation.MaxAdFormat;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g5 {
    private final com.applovin.impl.sdk.l a;
    private final Map b = new HashMap();
    private final Object c = new Object();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.AD_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.AD_UNIT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum b {
        AD_FORMAT,
        AD_UNIT_ID,
        ALL
    }

    private static class c {
        private final h5 a;
        private final long b;
        private final long c;

        private c(h5 h5Var, long j) {
            this.a = h5Var;
            this.b = j;
            this.c = SystemClock.elapsedRealtime();
        }

        /* synthetic */ c(h5 h5Var, long j, a aVar) {
            this(h5Var, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d() {
            return SystemClock.elapsedRealtime() - this.c > this.b;
        }

        public long a() {
            return this.c;
        }

        protected boolean a(Object obj) {
            return obj instanceof c;
        }

        public long b() {
            return this.b;
        }

        public h5 c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a((Object) this) || b() != cVar.b() || a() != cVar.a()) {
                return false;
            }
            h5 h5VarC = c();
            h5 h5VarC2 = cVar.c();
            return h5VarC != null ? h5VarC.equals(h5VarC2) : h5VarC2 == null;
        }

        public int hashCode() {
            long jB = b();
            long jA = a();
            h5 h5VarC = c();
            return ((((((int) (jB ^ (jB >>> 32))) + 59) * 59) + ((int) ((jA >>> 32) ^ jA))) * 59) + (h5VarC == null ? 43 : h5VarC.hashCode());
        }

        public String toString() {
            return "SignalCacheManager.SignalWrapper(signal=" + c() + ", expirationTimeMillis=" + b() + ", cacheTimestampMillis=" + a() + ")";
        }
    }

    public g5(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
    }

    private String a(i5 i5Var, String str, MaxAdFormat maxAdFormat) {
        String strC = i5Var.c();
        int i = a.a[i5Var.t().ordinal()];
        if (i != 1) {
            return i != 2 ? strC : strC + "_" + str;
        }
        return strC + "_" + maxAdFormat.getLabel();
    }

    public void a(h5 h5Var, i5 i5Var, String str, MaxAdFormat maxAdFormat) {
        if (h5Var == null) {
            return;
        }
        long jV = i5Var.v();
        if (jV <= 0) {
            return;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("SignalCacheManager", "Caching signal for: " + i5Var);
        }
        String strA = a(i5Var, str, maxAdFormat);
        c cVar = new c(h5Var, jV, null);
        synchronized (this.c) {
            this.b.put(strA, cVar);
        }
    }

    public h5 b(i5 i5Var, String str, MaxAdFormat maxAdFormat) {
        String strA = a(i5Var, str, maxAdFormat);
        synchronized (this.c) {
            c cVar = (c) this.b.get(strA);
            if (cVar == null) {
                return null;
            }
            if (cVar.d()) {
                this.b.remove(strA);
                return null;
            }
            this.a.Q();
            if (com.applovin.impl.sdk.p.a()) {
                this.a.Q().a("SignalCacheManager", "Returning cached signal for: " + i5Var);
            }
            return cVar.a;
        }
    }
}
