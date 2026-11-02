package com.applovin.impl;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f0 {
    private final String a;
    private final Map b;
    private final Map c;
    private final Map d;
    private final String e;

    public f0(String str, Map map, Map map2, Map map3, String str2) {
        this.a = str;
        this.b = map;
        this.c = map2;
        this.d = map3;
        this.e = str2;
    }

    public String a() {
        return this.e;
    }

    protected boolean a(Object obj) {
        return obj instanceof f0;
    }

    public String b() {
        return this.a;
    }

    public Map c() {
        return this.c;
    }

    public Map d() {
        return this.b;
    }

    public Map e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (!f0Var.a(this)) {
            return false;
        }
        String strB = b();
        String strB2 = f0Var.b();
        if (strB != null ? !strB.equals(strB2) : strB2 != null) {
            return false;
        }
        Map mapD = d();
        Map mapD2 = f0Var.d();
        if (mapD != null ? !mapD.equals(mapD2) : mapD2 != null) {
            return false;
        }
        Map mapC = c();
        Map mapC2 = f0Var.c();
        if (mapC != null ? !mapC.equals(mapC2) : mapC2 != null) {
            return false;
        }
        Map mapE = e();
        Map mapE2 = f0Var.e();
        if (mapE != null ? !mapE.equals(mapE2) : mapE2 != null) {
            return false;
        }
        String strA = a();
        String strA2 = f0Var.a();
        return strA != null ? strA.equals(strA2) : strA2 == null;
    }

    public int hashCode() {
        String strB = b();
        int iHashCode = strB == null ? 43 : strB.hashCode();
        Map mapD = d();
        int iHashCode2 = ((iHashCode + 59) * 59) + (mapD == null ? 43 : mapD.hashCode());
        Map mapC = c();
        int iHashCode3 = (iHashCode2 * 59) + (mapC == null ? 43 : mapC.hashCode());
        Map mapE = e();
        int iHashCode4 = (iHashCode3 * 59) + (mapE == null ? 43 : mapE.hashCode());
        String strA = a();
        return (iHashCode4 * 59) + (strA != null ? strA.hashCode() : 43);
    }

    public String toString() {
        return "AxonEventModel(eventName=" + b() + ", parameters=" + d() + ", options=" + c() + ", userData=" + e() + ", errorMessage=" + a() + ")";
    }
}
