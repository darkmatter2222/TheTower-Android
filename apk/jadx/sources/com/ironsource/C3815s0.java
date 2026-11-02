package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3815s0 implements InterfaceC3817s2 {
    private final C3597g0 a;

    public C3815s0(C3597g0 adProperties) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.a = adProperties;
    }

    @Override // com.ironsource.InterfaceC3817s2
    public void a(com.ironsource.mediationsdk.h auctionRequestParams) {
        Intrinsics.checkNotNullParameter(auctionRequestParams, "auctionRequestParams");
        auctionRequestParams.b(this.a.c());
        auctionRequestParams.a(this.a.a().toString());
        auctionRequestParams.a(Boolean.TRUE);
    }
}
