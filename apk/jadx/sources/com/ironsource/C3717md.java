package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.md, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3717md extends AbstractC3838t3 {
    private String e;
    private int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3717md(int i, String placementName, boolean z, String rewardName, int i2, C3735nd c3735nd) {
        super(i, placementName, z, c3735nd);
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(rewardName, "rewardName");
        this.f = i2;
        this.e = rewardName;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3717md(AbstractC3838t3 placement) {
        super(placement.b(), placement.c(), placement.d(), placement.a());
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.e = "";
    }

    public final int e() {
        return this.f;
    }

    public final String f() {
        return this.e;
    }

    @Override // com.ironsource.AbstractC3838t3
    public String toString() {
        return super.toString() + ", reward name: " + this.e + " , amount: " + this.f;
    }
}
