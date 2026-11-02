package com.ironsource.adqualitysdk.sdk.i;

import com.moloco.sdk.publisher.Banner;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0173 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0154 f914;

    public C0173(C0154 c0154) {
        this.f914 = c0154;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0154 c0154 = this.f914;
        Banner banner = (Banner) arrayList.get(0);
        c0154.getClass();
        return banner.getAdShowListener();
    }
}
