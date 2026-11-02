package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ѓ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0305 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0272 f1542;

    public C0305(C0272 c0272) {
        this.f1542 = c0272;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        for (ISAdQualityInitListener iSAdQualityInitListener : this.f1542.f1351) {
            if (iSAdQualityInitListener != null) {
                iSAdQualityInitListener.adQualitySdkInitSuccess();
            }
        }
        this.f1542.f1351.clear();
    }
}
