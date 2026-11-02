package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.dc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3555dc implements J {
    private final Vb a;

    public C3555dc(Vb nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        this.a = nativeAdBinder;
    }

    @Override // com.ironsource.J
    public void a(C3536cc nativeAdInstance) {
        Intrinsics.checkNotNullParameter(nativeAdInstance, "nativeAdInstance");
        nativeAdInstance.a(this.a);
    }
}
