package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Advertisement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class I implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f104;

    public I(J j) {
        this.f104 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        J j = this.f104;
        Advertisement advertisement = (Advertisement) arrayList.get(0);
        j.getClass();
        return advertisement.getDownloadableUrls();
    }
}
