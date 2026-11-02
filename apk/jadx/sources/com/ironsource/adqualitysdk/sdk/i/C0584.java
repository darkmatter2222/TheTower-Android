package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.core.api.ApiAdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒻ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0584 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2353;

    public C0584(C0117 c0117) {
        this.f2353 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2353;
        ApiAdResponse apiAdResponse = (ApiAdResponse) arrayList.get(0);
        c0117.getClass();
        return apiAdResponse.getCreativeId();
    }
}
