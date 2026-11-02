package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0585 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2354;

    public C0585(C0176 c0176) {
        this.f2354 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2354;
        VastAdSource vastAdSource = (VastAdSource) arrayList.get(0);
        c0176.getClass();
        return vastAdSource.getCreatives();
    }
}
