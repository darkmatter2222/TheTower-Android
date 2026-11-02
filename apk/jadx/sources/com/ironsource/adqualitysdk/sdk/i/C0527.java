package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import tv.superawesome.lib.samodelspace.saad.SAAd;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0527 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0914 f2211;

    public C0527(C0914 c0914) {
        this.f2211 = c0914;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0914 c0914 = this.f2211;
        SAAd sAAd = (SAAd) arrayList.get(0);
        c0914.getClass();
        return sAAd.writeToJson();
    }
}
