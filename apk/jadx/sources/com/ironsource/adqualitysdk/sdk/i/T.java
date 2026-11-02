package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.ads.internal.model.AdPayload;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class T implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ V f191;

    public T(V v) {
        this.f191 = v;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        V v = this.f191;
        AdPayload.AdUnit adUnit = (AdPayload.AdUnit) arrayList.get(0);
        v.getClass();
        return adUnit.getTemplateSettings();
    }
}
