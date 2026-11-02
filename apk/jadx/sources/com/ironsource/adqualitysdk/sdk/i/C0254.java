package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.models.Ad;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ϊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0254 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f1201;

    public C0254(C0176 c0176) {
        this.f1201 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f1201;
        Ad ad = (Ad) arrayList.get(0);
        c0176.getClass();
        return ad.getCreativeId();
    }
}
