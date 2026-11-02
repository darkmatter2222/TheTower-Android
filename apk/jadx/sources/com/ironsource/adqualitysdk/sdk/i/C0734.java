package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.VideoAdController;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴾ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0734 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2718;

    public C0734(C0176 c0176) {
        this.f2718 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2718;
        VideoAdController videoAdController = (VideoAdController) arrayList.get(0);
        c0176.getClass();
        return videoAdController.getAdParams();
    }
}
