package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.core.ad.InterstitialAdPresenter;
import com.smaato.sdk.video.ad.InterstitialVideoAdPresenter;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0631 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2508;

    public C0631(C0117 c0117) {
        this.f2508 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2508;
        InterstitialVideoAdPresenter interstitialVideoAdPresenter = (InterstitialVideoAdPresenter) arrayList.get(0);
        InterstitialAdPresenter.Listener listener = (InterstitialAdPresenter.Listener) arrayList.get(1);
        c0117.getClass();
        interstitialVideoAdPresenter.setListener(listener);
        return null;
    }
}
