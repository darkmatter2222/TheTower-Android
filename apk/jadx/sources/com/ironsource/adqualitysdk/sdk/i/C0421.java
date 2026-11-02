package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0421 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f1959;

    public C0421(C0370 c0370) {
        this.f1959 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f1959.getClass();
        AdView adView = (AdView) AbstractC0993.m2388(arrayList, 0, AdView.class);
        this.f1959.getClass();
        adView.setAdListener((AdListener) AbstractC0993.m2388(arrayList, 1, AdListener.class));
        return null;
    }
}
