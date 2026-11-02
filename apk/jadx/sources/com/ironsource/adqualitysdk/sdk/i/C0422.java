package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0422 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f1960;

    public C0422(C0370 c0370) {
        this.f1960 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f1960.getClass();
        return ((AdView) AbstractC0993.m2388(arrayList, 0, AdView.class)).getAdListener();
    }
}
