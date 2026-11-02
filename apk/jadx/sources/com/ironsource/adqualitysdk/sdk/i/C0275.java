package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.media.ads.network.common.model.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0275 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1099 f1370;

    public C0275(C1099 c1099) {
        this.f1370 = c1099;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1099 c1099 = this.f1370;
        Ad ad = (Ad) arrayList.get(0);
        c1099.getClass();
        return ad.getWebVast();
    }
}
