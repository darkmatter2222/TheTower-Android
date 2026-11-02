package com.applovin.impl;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class z {
    private final Map a;
    private final List b;

    public z(Map map, List list) {
        this.a = map;
        this.b = list;
    }

    public Map a() {
        return this.a;
    }

    protected boolean a(Object obj) {
        return obj instanceof z;
    }

    public List b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        if (!zVar.a(this)) {
            return false;
        }
        Map mapA = a();
        Map mapA2 = zVar.a();
        if (mapA != null ? !mapA.equals(mapA2) : mapA2 != null) {
            return false;
        }
        List listB = b();
        List listB2 = zVar.b();
        return listB != null ? listB.equals(listB2) : listB2 == null;
    }

    public int hashCode() {
        Map mapA = a();
        int iHashCode = mapA == null ? 43 : mapA.hashCode();
        List listB = b();
        return ((iHashCode + 59) * 59) + (listB != null ? listB.hashCode() : 43);
    }

    public String toString() {
        return "AppAdsTxt(domainEntries=" + a() + ", invalidEntries=" + b() + ")";
    }
}
