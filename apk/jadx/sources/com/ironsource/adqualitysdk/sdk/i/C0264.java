package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ς, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0264 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1058 f1289;

    public C0264(C1058 c1058) {
        this.f1289 = c1058;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1058 c1058 = this.f1289;
        AdData adData = (AdData) arrayList.get(0);
        c1058.getClass();
        return adData.getServerData();
    }
}
