package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.र, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0442 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f1999;

    public C0442(C0392 c0392) {
        this.f1999 = c0392;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0392 c0392 = this.f1999;
        Iterator it = (c0392.f1906 != null ? new ArrayList(c0392.f1906) : new ArrayList()).iterator();
        while (it.hasNext()) {
            ((C1005) it.next()).m2393();
        }
        List listM2067 = C0392.m2067(this.f1999);
        if (listM2067 != null) {
            ((ArrayList) listM2067).clear();
        }
        this.f1999.f1906 = null;
        this.f1999.f1901 = null;
    }
}
