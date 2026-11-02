package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ห, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0489 implements AppLovinCommunicatorSubscriber {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ String f2155;

    public C0489(String str) {
        this.f2155 = str;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public final String getCommunicatorId() {
        return this.f2155;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public final void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
    }
}
