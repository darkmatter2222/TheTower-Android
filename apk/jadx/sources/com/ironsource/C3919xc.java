package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.xc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3919xc {
    private final EnumC3719mf a;
    private final String b;
    private final W7 c;
    private final String d;

    public C3919xc(EnumC3719mf recordType, String advertiserBundleId, W7 adProvider, String adInstanceId) {
        Intrinsics.checkNotNullParameter(recordType, "recordType");
        Intrinsics.checkNotNullParameter(advertiserBundleId, "advertiserBundleId");
        Intrinsics.checkNotNullParameter(adProvider, "adProvider");
        Intrinsics.checkNotNullParameter(adInstanceId, "adInstanceId");
        this.a = recordType;
        this.b = advertiserBundleId;
        this.c = adProvider;
        this.d = adInstanceId;
    }

    public final C3616h1 a(Ob<C3919xc, C3616h1> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }

    public final String a() {
        return this.d;
    }

    public final W7 b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final EnumC3719mf d() {
        return this.a;
    }
}
