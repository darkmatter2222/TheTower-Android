package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.冫, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0908 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3195;

    public C0908(C0773 c0773) {
        this.f3195 = c0773;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0773 c0773 = this.f3195;
        InneractiveAdRequest inneractiveAdRequest = (InneractiveAdRequest) arrayList.get(0);
        c0773.getClass();
        return inneractiveAdRequest.getSpotId();
    }
}
