package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.external.InneractiveContentController;
import com.fyber.inneractive.sdk.external.VideoContentListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺮ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1018 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3620;

    public C1018(C0773 c0773) {
        this.f3620 = c0773;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0773 c0773 = this.f3620;
        InneractiveContentController inneractiveContentController = (InneractiveContentController) arrayList.get(0);
        VideoContentListener videoContentListener = (VideoContentListener) arrayList.get(1);
        c0773.getClass();
        inneractiveContentController.setEventsListener(videoContentListener);
        return null;
    }
}
