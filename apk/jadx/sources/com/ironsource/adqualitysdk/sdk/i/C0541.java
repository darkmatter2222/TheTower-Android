package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.applovin.communicator.AppLovinCommunicator;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0541 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2252;

    public C0541(C0466 c0466) {
        this.f2252 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2252;
        Context context = (Context) arrayList.get(0);
        String str = (String) arrayList.get(1);
        String str2 = (String) arrayList.get(2);
        c0466.getClass();
        AppLovinCommunicator.getInstance(context).subscribe(new C0489(str), str2);
        return null;
    }
}
