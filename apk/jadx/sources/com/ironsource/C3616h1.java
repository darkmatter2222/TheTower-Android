package com.ironsource;

import java.util.Calendar;
import java.util.Map;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3616h1 {
    private final EnumC3719mf a;
    private final W7 b;
    private final String c;
    private final long d;

    public C3616h1(EnumC3719mf recordType, W7 adProvider, String adInstanceId) {
        Intrinsics.checkNotNullParameter(recordType, "recordType");
        Intrinsics.checkNotNullParameter(adProvider, "adProvider");
        Intrinsics.checkNotNullParameter(adInstanceId, "adInstanceId");
        this.a = recordType;
        this.b = adProvider;
        this.c = adInstanceId;
        this.d = Calendar.getInstance().getTimeInMillis() / ((long) 1000);
    }

    public final String a() {
        return this.c;
    }

    public final W7 b() {
        return this.b;
    }

    public final Map<String, Object> c() {
        return MapsKt.mapOf(TuplesKt.to(Ba.c, Integer.valueOf(this.b.c())), TuplesKt.to("ts", String.valueOf(this.d)));
    }

    public final Map<String, Object> d() {
        return MapsKt.mapOf(TuplesKt.to(Ba.b, this.c), TuplesKt.to(Ba.c, Integer.valueOf(this.b.c())), TuplesKt.to("ts", String.valueOf(this.d)), TuplesKt.to("rt", Integer.valueOf(this.a.ordinal())));
    }

    public final EnumC3719mf e() {
        return this.a;
    }

    public final long f() {
        return this.d;
    }
}
