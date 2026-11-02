package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.internal.Constants;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0635 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2513;

    public C0635(C0597 c0597) {
        this.f2513 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2513;
        Constants.AdType adType = (Constants.AdType) arrayList.get(0);
        c0597.getClass();
        return adType.getPlacementType();
    }
}
