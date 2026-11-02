package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.richmedia.ad.RichMediaAdObject;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᕁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0649 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2527;

    public C0649(C0117 c0117) {
        this.f2527 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2527;
        RichMediaAdObject richMediaAdObject = (RichMediaAdObject) arrayList.get(0);
        c0117.getClass();
        return richMediaAdObject.getContent();
    }
}
