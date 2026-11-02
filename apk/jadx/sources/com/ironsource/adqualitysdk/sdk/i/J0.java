package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.common.VideoController;
import com.yandex.mobile.ads.common.VideoEventListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class J0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f145;

    public J0(Q0 q0) {
        this.f145 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f145;
        VideoController videoController = (VideoController) arrayList.get(0);
        VideoEventListener videoEventListener = (VideoEventListener) arrayList.get(1);
        q0.getClass();
        videoController.setVideoEventListener(videoEventListener);
        return null;
    }
}
