package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.mediation.config.MediationConfig;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵂ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0738 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2735;

    public C0738(C0597 c0597) {
        this.f2735 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2735;
        MediationConfig mediationConfig = (MediationConfig) arrayList.get(0);
        c0597.getClass();
        return mediationConfig.getAdapterConfigurations();
    }
}
