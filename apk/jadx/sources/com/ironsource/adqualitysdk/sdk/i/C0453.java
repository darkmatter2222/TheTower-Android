package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ণ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0453 implements ISAdQualityAdListener {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0429 f2013;

    public C0453(C0429 c0429) {
        this.f2013 = c0429;
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener
    public final void adClosed(String str, ISAdQualityAdType iSAdQualityAdType) {
        ISAdQualityAdListener iSAdQualityAdListener = this.f2013.f1972.f1356;
        if (iSAdQualityAdListener != null) {
            iSAdQualityAdListener.adClosed(str, iSAdQualityAdType);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener
    public final void adDisplayed(String str, ISAdQualityAdType iSAdQualityAdType) {
        ISAdQualityAdListener iSAdQualityAdListener = this.f2013.f1972.f1356;
        if (iSAdQualityAdListener != null) {
            iSAdQualityAdListener.adDisplayed(str, iSAdQualityAdType);
        }
    }
}
