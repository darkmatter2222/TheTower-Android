package com.ironsource.adqualitysdk.sdk.i;

import com.qq.e.ads.LiteAbstractAD;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹺ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0990 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0756 f3512;

    public C0990(C0756 c0756) {
        this.f3512 = c0756;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0756 c0756 = this.f3512;
        LiteAbstractAD liteAbstractAD = (LiteAbstractAD) arrayList.get(0);
        c0756.getClass();
        return liteAbstractAD.getExtraInfo();
    }
}
