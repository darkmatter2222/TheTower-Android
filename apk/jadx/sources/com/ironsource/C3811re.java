package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.re, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3811re implements M8, M8.a {
    private C3794qe a;
    private boolean b;

    @Override // com.ironsource.M8
    public C3456ab a() {
        C3794qe c3794qe = this.a;
        if (c3794qe != null) {
            return new C3456ab(c3794qe);
        }
        return null;
    }

    @Override // com.ironsource.M8.a
    public void a(C3794qe sdkConfig) {
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        this.a = sdkConfig;
    }

    @Override // com.ironsource.M8
    public T9 b() {
        C3794qe c3794qe = this.a;
        if (c3794qe != null) {
            return new T9(c3794qe);
        }
        return null;
    }

    @Override // com.ironsource.M8
    public boolean c() {
        return this.b;
    }

    @Override // com.ironsource.M8.a
    public void d() {
        this.b = true;
    }
}
