package com.tapjoy.internal;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class dz extends ea {
    protected final HashSet<String> a;
    protected final JSONObject b;
    protected final long c;

    public dz(ea.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar);
        this.a = new HashSet<>(hashSet);
        this.b = jSONObject;
        this.c = j;
    }
}
