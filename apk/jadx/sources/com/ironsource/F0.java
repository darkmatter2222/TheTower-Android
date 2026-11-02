package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class F0 {
    private final EnumC3719mf a;
    private final String b;
    private final String c;
    private final W7 d;
    private final String e;

    public F0(EnumC3719mf recordType, String advertiserBundleId, String networkInstanceId, W7 adProvider, String adInstanceId) {
        Intrinsics.checkNotNullParameter(recordType, "recordType");
        Intrinsics.checkNotNullParameter(advertiserBundleId, "advertiserBundleId");
        Intrinsics.checkNotNullParameter(networkInstanceId, "networkInstanceId");
        Intrinsics.checkNotNullParameter(adProvider, "adProvider");
        Intrinsics.checkNotNullParameter(adInstanceId, "adInstanceId");
        this.a = recordType;
        this.b = advertiserBundleId;
        this.c = networkInstanceId;
        this.d = adProvider;
        this.e = adInstanceId;
    }

    public final C3919xc a(Ob<F0, C3919xc> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }

    public final String a() {
        return this.e;
    }

    public final W7 b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.c;
    }

    public final EnumC3719mf e() {
        return this.a;
    }
}
