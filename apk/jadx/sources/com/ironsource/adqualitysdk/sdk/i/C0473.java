package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.Wrapper;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ง, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0473 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2140;

    public C0473(C0176 c0176) {
        this.f2140 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2140;
        Wrapper wrapper = (Wrapper) arrayList.get(0);
        c0176.getClass();
        return wrapper.getCreatives();
    }
}
