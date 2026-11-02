package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.zg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3959zg implements InterfaceC3530c6 {
    private final C3646id a;
    private final String b;

    public C3959zg(C3646id folderRootUrl, String version) {
        Intrinsics.checkNotNullParameter(folderRootUrl, "folderRootUrl");
        Intrinsics.checkNotNullParameter(version, "version");
        this.a = folderRootUrl;
        this.b = version;
    }

    public final String a() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3530c6
    public String value() {
        return this.a.a() + "/versions/" + this.b + "/mobileController.html";
    }
}
