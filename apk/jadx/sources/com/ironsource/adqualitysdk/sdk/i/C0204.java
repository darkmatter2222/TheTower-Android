package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0204 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1087;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualityCustomMediationRevenue f1088;

    public C0204(C0193 c0193, ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        this.f1087 = c0193;
        this.f1088 = iSAdQualityCustomMediationRevenue;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1087.f1067.m2082(StringFog.decrypt("jc5+Wh6Gcx+OhXVdM5dsFYz7dlIGoH8G\n", "4KsaM3/yGnA=\n"), Collections.singletonList(C0193.m1945(this.f1087, this.f1088)));
    }
}
