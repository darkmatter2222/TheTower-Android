package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.reward.RewardItem;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.น, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0479 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f2146;

    public C0479(C0370 c0370) {
        this.f2146 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        this.f2146.getClass();
        return Integer.valueOf(((RewardItem) AbstractC0993.m2388(arrayList, 0, RewardItem.class)).getAmount());
    }
}
