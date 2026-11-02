package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3869ug {
    private final InterfaceC3839t4 a;

    public C3869ug(InterfaceC3839t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = currentTimeProvider;
    }

    public final boolean a(long j, long j2) {
        long jA = this.a.a();
        return j2 <= 0 || j <= 0 || jA < j || jA - j > j2;
    }
}
