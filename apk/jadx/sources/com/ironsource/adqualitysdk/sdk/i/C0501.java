package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ງ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0501 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f2182;

    public C0501(C0370 c0370) {
        this.f2182 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f2182.getClass();
        AdManagerAdView adManagerAdView = (AdManagerAdView) AbstractC0993.m2388(arrayList, 0, AdManagerAdView.class);
        this.f2182.getClass();
        adManagerAdView.setAdListener((AdListener) AbstractC0993.m2388(arrayList, 1, AdListener.class));
        return null;
    }
}
