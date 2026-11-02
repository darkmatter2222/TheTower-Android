package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ゥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0888 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f3170;

    public C0888(C0370 c0370) {
        this.f3170 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0370 c0370 = this.f3170;
        c0370.getClass();
        return new C0396(c0370, (AdListener) AbstractC0993.m2388(arrayList, 0, AdListener.class), c0943);
    }
}
