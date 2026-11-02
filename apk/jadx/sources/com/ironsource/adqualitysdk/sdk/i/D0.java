package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.video.playback.model.MediaFile;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class D0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f95;

    public D0(Q0 q0) {
        this.f95 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f95;
        MediaFile mediaFile = (MediaFile) arrayList.get(0);
        q0.getClass();
        return mediaFile.getUrl();
    }
}
