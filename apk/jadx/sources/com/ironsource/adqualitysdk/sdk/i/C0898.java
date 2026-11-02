package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.models.AdData;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.一, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0898 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f3182;

    public C0898(C0176 c0176) {
        this.f3182 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f3182;
        AdData adData = (AdData) arrayList.get(0);
        c0176.getClass();
        return adData.getHtml();
    }
}
