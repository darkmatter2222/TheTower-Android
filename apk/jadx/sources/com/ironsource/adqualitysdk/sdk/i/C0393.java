package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.protobuf.RequestExtension;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٺ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0393 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1909;

    public C0393(C0261 c0261) {
        this.f1909 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1909;
        RequestExtension requestExtension = (RequestExtension) arrayList.get(0);
        c0261.getClass();
        return requestExtension.getSellerId();
    }
}
