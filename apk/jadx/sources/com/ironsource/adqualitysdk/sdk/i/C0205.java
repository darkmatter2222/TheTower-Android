package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0205 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1089;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityCustomMediationRevenue f1090;

    public C0205(C0193 c0193, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        this.f1089 = c0193;
        this.f1090 = iSAdQualityCustomMediationRevenue;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1089.f1067.m2082(StringFog.decrypt("uRJwjErGERi6WXuLaMcLA7saRoBd\n", "1HcU5SuyeHc=\n"), Collections.singletonList(C0193.m1945(this.f1089, this.f1090)));
        this.f1089.f1068 = true;
    }
}
