package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0574 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2331;

    public C0574(C0466 c0466) {
        this.f2331 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2331;
        Context context = (Context) arrayList.get(0);
        c0466.getClass();
        return AppLovinBroadcastManager.getInstance(context);
    }
}
