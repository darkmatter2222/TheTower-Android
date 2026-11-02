package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.VideoClicks;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0722 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2687;

    public C0722(C0176 c0176) {
        this.f2687 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2687;
        VideoClicks videoClicks = (VideoClicks) arrayList.get(0);
        c0176.getClass();
        return videoClicks.getClickThrough();
    }
}
