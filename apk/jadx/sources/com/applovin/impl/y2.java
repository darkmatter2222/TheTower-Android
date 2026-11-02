package com.applovin.impl;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class y2 implements Comparable {
    private final String a;
    private final String b;
    private final boolean c;
    private final i3 d;

    y2(String str, String str2, boolean z, i3 i3Var) {
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = i3Var;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(y2 y2Var) {
        return this.b.compareToIgnoreCase(y2Var.b);
    }

    public String a() {
        return this.b;
    }

    public List b() {
        List listL = this.d.l();
        return (listL == null || listL.isEmpty()) ? Collections.singletonList(this.a) : listL;
    }

    public String c() {
        return this.a;
    }

    public i3 d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            y2 y2Var = (y2) obj;
            String str = this.a;
            if (str == null ? y2Var.a != null : !str.equals(y2Var.a)) {
                return false;
            }
            String str2 = this.b;
            if (str2 == null ? y2Var.b != null : !str2.equals(y2Var.b)) {
                return false;
            }
            if (this.c == y2Var.c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.c ? 1 : 0);
    }
}
