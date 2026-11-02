package com.ironsource.adqualitysdk.sdk.i;

import com.mintegral.msdk.reward.player.MTGRewardVideoActivity;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ⅹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0871 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0782 f3148;

    public C0871(C0782 c0782) {
        this.f3148 = c0782;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0782 c0782 = this.f3148;
        MTGRewardVideoActivity mTGRewardVideoActivity = (MTGRewardVideoActivity) arrayList.get(0);
        c0782.getClass();
        return mTGRewardVideoActivity.getCampaignEx();
    }
}
