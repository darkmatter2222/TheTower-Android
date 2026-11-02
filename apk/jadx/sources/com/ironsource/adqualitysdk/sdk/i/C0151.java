package com.ironsource.adqualitysdk.sdk.i;

import android.view.Choreographer;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ƭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0151 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0125 f861;

    public C0151(C0125 c0125) {
        this.f861 = c0125;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0125 c0125 = this.f861;
        if (!c0125.f812) {
            c0125.f809 = null;
            return;
        }
        HashMap map = new HashMap(c0125.f811);
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            this.f861.f810.post((Runnable) map.get((InterfaceC0347) it.next()));
        }
        C0125 c0126 = this.f861;
        if (c0126.f809 == null) {
            c0126.f809 = new ChoreographerFrameCallbackC0163(this);
        }
        Choreographer.getInstance().postFrameCallback(this.f861.f809);
    }
}
