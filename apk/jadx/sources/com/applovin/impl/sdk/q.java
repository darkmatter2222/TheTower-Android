package com.applovin.impl.sdk;

import com.applovin.impl.c3;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class q {
    private final p a;
    private final Map b = new HashMap(5);
    private final Object c = new Object();
    private final Map d = Collections.synchronizedMap(new HashMap(5));
    private final Map e = Collections.synchronizedMap(new HashMap(5));

    public static class a {
        private final String a;
        private final String b;
        private final String c;

        public a(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public String a() {
            return this.b;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public String b() {
            return this.a;
        }

        public String c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String strB = b();
            String strB2 = aVar.b();
            if (strB != null ? !strB.equals(strB2) : strB2 != null) {
                return false;
            }
            String strA = a();
            String strA2 = aVar.a();
            if (strA != null ? !strA.equals(strA2) : strA2 != null) {
                return false;
            }
            String strC = c();
            String strC2 = aVar.c();
            return strC != null ? strC.equals(strC2) : strC2 == null;
        }

        public int hashCode() {
            String strB = b();
            int iHashCode = strB == null ? 43 : strB.hashCode();
            String strA = a();
            int iHashCode2 = ((iHashCode + 59) * 59) + (strA == null ? 43 : strA.hashCode());
            String strC = c();
            return (iHashCode2 * 59) + (strC != null ? strC.hashCode() : 43);
        }

        public String toString() {
            return "MediationWaterfallWinnerTracker.WinningAd(bCode=" + b() + ", adapterName=" + a() + ", networkName=" + c() + ")";
        }
    }

    q(l lVar) {
        this.a = lVar.Q();
    }

    public String a(String str) {
        return (String) this.e.get(str);
    }

    public void a(c3 c3Var) {
        synchronized (this.c) {
            String adUnitId = c3Var.getAdUnitId();
            a aVar = (a) this.b.get(adUnitId);
            if (aVar == null) {
                if (p.a()) {
                    this.a.a("MediationWaterfallWinnerTracker", "No previous winner to clear.");
                }
                return;
            }
            if (c3Var.C().equals(aVar.b())) {
                if (p.a()) {
                    this.a.a("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + aVar);
                }
                this.b.remove(adUnitId);
            } else if (p.a()) {
                this.a.a("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + c3Var + " , since it could have already been updated with a new ad: " + aVar);
            }
        }
    }

    public String b(String str) {
        return (String) this.d.get(str);
    }

    public void b(c3 c3Var) {
        this.d.put(c3Var.getAdUnitId(), c3Var.T());
    }

    public a c(String str) {
        a aVar;
        synchronized (this.c) {
            aVar = (a) this.b.get(str);
        }
        return aVar;
    }

    public void c(c3 c3Var) {
        synchronized (this.c) {
            if (p.a()) {
                this.a.a("MediationWaterfallWinnerTracker", "Tracking winning ad: " + c3Var);
            }
            this.b.put(c3Var.getAdUnitId(), new a(c3Var.C(), c3Var.c(), c3Var.getNetworkName()));
        }
        this.e.put(c3Var.getAdUnitId(), c3Var.T());
    }
}
