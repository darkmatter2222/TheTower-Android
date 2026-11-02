package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3541d implements InterfaceC3530c6 {
    private final C3646id a;

    public C3541d(C3646id folderRootUrl) {
        Intrinsics.checkNotNullParameter(folderRootUrl, "folderRootUrl");
        this.a = folderRootUrl;
    }

    @Override // com.ironsource.InterfaceC3530c6
    public String value() {
        return this.a.a() + "/abTestMap.json";
    }
}
