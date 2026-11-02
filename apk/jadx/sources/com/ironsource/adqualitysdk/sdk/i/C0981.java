package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0981 implements InterfaceC0142 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0940 f3483;

    public C0981(C0940 c0940) {
        this.f3483 = c0940;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0142
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1920() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f3483.f3347);
            this.f3483.f3347.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
