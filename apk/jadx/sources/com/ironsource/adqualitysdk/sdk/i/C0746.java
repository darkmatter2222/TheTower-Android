package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.response.AdParams;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0746 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2743;

    public C0746(C0176 c0176) {
        this.f2743 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2743;
        AdParams adParams = (AdParams) arrayList.get(0);
        c0176.getClass();
        return adParams.getEndCardRedirectUrl();
    }
}
