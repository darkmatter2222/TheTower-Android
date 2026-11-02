package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ヶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0894 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3179;

    public C0894(C0893 c0893) {
        this.f3179 = c0893;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        ArrayList arrayList = new ArrayList(this.f3179.f3176.values());
        this.f3179.f3176.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((B) it.next()).m1810();
        }
    }
}
