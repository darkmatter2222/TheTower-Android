package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vpaid.CreativeParams;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0399 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f1919;

    public C0399(C0176 c0176) {
        this.f1919 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f1919;
        CreativeParams creativeParams = (CreativeParams) arrayList.get(0);
        c0176.getClass();
        return creativeParams.getCreativeData();
    }
}
