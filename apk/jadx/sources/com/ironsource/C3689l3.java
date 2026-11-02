package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.l3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3689l3 extends AbstractC3838t3 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3689l3(int i, String placementName, boolean z, C3735nd c3735nd) {
        super(i, placementName, z, c3735nd);
        Intrinsics.checkNotNullParameter(placementName, "placementName");
    }

    @Override // com.ironsource.AbstractC3838t3
    public String toString() {
        return super.toString() + ", placementId: " + b();
    }
}
