package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.qe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3794qe {
    private final Ae a;

    public C3794qe(Ae sdkInitResponse) {
        Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
        this.a = sdkInitResponse;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3794qe(C3794qe sdkConfig) {
        this(sdkConfig.a);
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
    }

    public final U1 a() {
        return this.a.a().b().d();
    }

    public final N1 b() {
        return this.a.a().b().b();
    }

    public final R5 c() {
        return this.a.b();
    }

    public final Ue d() {
        return this.a.c();
    }

    public final Lb e() {
        return this.a.a().b().f();
    }

    public final Ue.a f() {
        Ue.a aVarI = this.a.c().i();
        Intrinsics.checkNotNullExpressionValue(aVarI, "getOrigin(...)");
        return aVarI;
    }

    protected final Ae g() {
        return this.a;
    }
}
