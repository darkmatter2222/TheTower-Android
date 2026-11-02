package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.response.AdParams;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ị, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0812 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f3059;

    public C0812(C0176 c0176) {
        this.f3059 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f3059;
        AdParams adParams = (AdParams) arrayList.get(0);
        c0176.getClass();
        return adParams.getAdParams();
    }
}
