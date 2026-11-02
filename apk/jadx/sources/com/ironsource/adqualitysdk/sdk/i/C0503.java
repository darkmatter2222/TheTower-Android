package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ເ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0503 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0279 f2184;

    public C0503(C0279 c0279) {
        this.f2184 = c0279;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0279 c0279 = this.f2184;
        MBridgeIds mBridgeIds = (MBridgeIds) arrayList.get(0);
        c0279.getClass();
        return mBridgeIds.getPlacementId();
    }
}
