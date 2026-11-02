package com.ironsource;

import com.ironsource.mediationsdk.ISBannerSize;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Z2 extends C3815s0 {
    private final ISBannerSize b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z2(C3597g0 adProperties, ISBannerSize iSBannerSize) {
        super(adProperties);
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.b = iSBannerSize;
    }

    @Override // com.ironsource.C3815s0, com.ironsource.InterfaceC3817s2
    public void a(com.ironsource.mediationsdk.h auctionRequestParams) {
        Intrinsics.checkNotNullParameter(auctionRequestParams, "auctionRequestParams");
        super.a(auctionRequestParams);
        auctionRequestParams.a(this.b);
    }
}
