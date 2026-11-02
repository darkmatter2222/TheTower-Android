package com.applovin.impl;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class t4 {
    private final String a;
    private Map b;

    private t4(String str, Map map) {
        this.a = str;
        this.b = map;
    }

    public static t4 a(String str) {
        return a(str, null);
    }

    public static t4 a(String str, Map map) {
        return new t4(str, map);
    }

    public Map a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public String toString() {
        return "PendingReward{result='" + this.a + "'params='" + this.b + "'}";
    }
}
