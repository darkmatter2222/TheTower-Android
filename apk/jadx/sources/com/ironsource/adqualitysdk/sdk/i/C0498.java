package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAdClickListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ไ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0498 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2179;

    public C0498(C0466 c0466) {
        this.f2179 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2179;
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialog = (AppLovinInterstitialAdDialog) arrayList.get(0);
        AppLovinAdClickListener appLovinAdClickListener = (AppLovinAdClickListener) arrayList.get(1);
        c0466.getClass();
        appLovinInterstitialAdDialog.setAdClickListener(appLovinAdClickListener);
        return null;
    }
}
