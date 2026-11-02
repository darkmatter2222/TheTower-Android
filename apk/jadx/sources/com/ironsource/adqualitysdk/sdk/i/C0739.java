package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.response.AdParams;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0739 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2736;

    public C0739(C0176 c0176) {
        this.f2736 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2736;
        AdParams adParams = (AdParams) arrayList.get(0);
        c0176.getClass();
        return adParams.getVideoFileUrlsList();
    }
}
