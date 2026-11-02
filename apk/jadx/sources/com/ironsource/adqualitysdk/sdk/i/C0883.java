package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.models.AdData;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ゝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0883 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0176 f3163;

    public C0883(C0176 c0176) {
        this.f3163 = c0176;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0176 c0176 = this.f3163;
        AdData adData = (AdData) arrayList.get(0);
        String str = (String) arrayList.get(1);
        c0176.getClass();
        return adData.getStringField(str);
    }
}
