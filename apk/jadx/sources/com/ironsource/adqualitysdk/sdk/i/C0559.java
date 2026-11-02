package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.rewarded.EventListener;
import com.smaato.sdk.rewarded.viewmodel.RewardedAdEventListenerNotifications;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0559 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2300;

    public C0559(C0117 c0117) {
        this.f2300 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2300;
        RewardedAdEventListenerNotifications rewardedAdEventListenerNotifications = (RewardedAdEventListenerNotifications) arrayList.get(0);
        EventListener eventListener = (EventListener) arrayList.get(1);
        c0117.getClass();
        rewardedAdEventListenerNotifications.setEventListener(eventListener);
        return null;
    }
}
