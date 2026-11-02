package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.VideoClicks;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0721 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2686;

    public C0721(C0176 c0176) {
        this.f2686 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2686;
        VideoClicks videoClicks = (VideoClicks) arrayList.get(0);
        c0176.getClass();
        return videoClicks.getClickTrackingList();
    }
}
