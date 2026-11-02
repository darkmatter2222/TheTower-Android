package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.core.ad.AdInteractor;
import com.smaato.sdk.core.util.StateMachine;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0629 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2506;

    public C0629(C0117 c0117) {
        this.f2506 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2506;
        AdInteractor adInteractor = (AdInteractor) arrayList.get(0);
        StateMachine.Listener listener = (StateMachine.Listener) arrayList.get(1);
        c0117.getClass();
        adInteractor.addStateListener(listener);
        return null;
    }
}
