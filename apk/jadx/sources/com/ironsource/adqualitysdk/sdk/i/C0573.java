package com.ironsource.adqualitysdk.sdk.i;

import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0573 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2330;

    public C0573(C0466 c0466) {
        this.f2330 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2330;
        AppLovinBroadcastManager appLovinBroadcastManager = (AppLovinBroadcastManager) arrayList.get(0);
        AppLovinBroadcastManager.Receiver receiver = (AppLovinBroadcastManager.Receiver) arrayList.get(1);
        IntentFilter intentFilter = (IntentFilter) arrayList.get(2);
        c0466.getClass();
        appLovinBroadcastManager.registerReceiver(receiver, intentFilter);
        return null;
    }
}
