package com.ironsource.adqualitysdk.sdk.i;

import com.hyprmx.android.sdk.api.data.WebTrafficObject;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0634 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0610 f2512;

    public C0634(C0610 c0610) {
        this.f2512 = c0610;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0610 c0610 = this.f2512;
        WebTrafficObject webTrafficObject = (WebTrafficObject) arrayList.get(0);
        c0610.getClass();
        return webTrafficObject.urls;
    }
}
