package com.tapjoy.internal;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class dd {
    private static dd c = new dd();
    public final ArrayList<cx> a = new ArrayList<>();
    public final ArrayList<cx> b = new ArrayList<>();

    private dd() {
    }

    public static dd a() {
        return c;
    }

    public final boolean b() {
        return this.b.size() > 0;
    }
}
