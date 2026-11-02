package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.core.mvvm.model.AdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0224 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f1115;

    public C0224(C0117 c0117) {
        this.f1115 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f1115;
        AdResponse adResponse = (AdResponse) arrayList.get(0);
        c0117.getClass();
        return adResponse.getClickTrackingUrls();
    }
}
