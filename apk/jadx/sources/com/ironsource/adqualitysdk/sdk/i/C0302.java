package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import java.util.Set;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ч, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0302 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f1536;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityInitError f1537;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Set f1538;

    public C0302(Set set, ISAdQualityInitError iSAdQualityInitError, String str) {
        this.f1538 = set;
        this.f1537 = iSAdQualityInitError;
        this.f1536 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        for (ISAdQualityInitListener iSAdQualityInitListener : this.f1538) {
            if (iSAdQualityInitListener != null) {
                iSAdQualityInitListener.adQualitySdkInitFailed(this.f1537, this.f1536);
            }
        }
        this.f1538.clear();
    }
}
