package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.models.Ad;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.גּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0921 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f3311;

    public C0921(C0176 c0176) {
        this.f3311 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f3311;
        Ad ad = (Ad) arrayList.get(0);
        String str = (String) arrayList.get(1);
        c0176.getClass();
        return ad.getAssetUrl(str);
    }
}
