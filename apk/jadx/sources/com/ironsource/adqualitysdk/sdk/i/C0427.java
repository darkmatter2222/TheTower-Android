package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.core.ad.AdPresenter;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0427 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f1970;

    public C0427(C0117 c0117) {
        this.f1970 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f1970;
        AdPresenter adPresenter = (AdPresenter) arrayList.get(0);
        c0117.getClass();
        return adPresenter.getCreativeId();
    }
}
