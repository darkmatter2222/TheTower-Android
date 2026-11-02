package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.InLine;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0589 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f2356;

    public C0589(C0176 c0176) {
        this.f2356 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f2356;
        InLine inLine = (InLine) arrayList.get(0);
        c0176.getClass();
        return inLine.getCreatives();
    }
}
