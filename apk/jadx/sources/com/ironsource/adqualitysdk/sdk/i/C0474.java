package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.จ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0474 implements ISAdQualityInitListener {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0429 f2141;

    public C0474(C0429 c0429) {
        this.f2141 = c0429;
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
    public final void adQualitySdkInitFailed(ISAdQualityInitError iSAdQualityInitError, String str) {
        C0272.m2014(this.f2141.f1972.f1351, iSAdQualityInitError, str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
    public final void adQualitySdkInitSuccess() {
        C0272 c0272 = this.f2141.f1972;
        String str = C0272.f1348;
        c0272.getClass();
        AbstractC0340.m2053(new C0305(c0272));
    }
}
