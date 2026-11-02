package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0802 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0791 f3020;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ View f3021;

    public C0802(C0791 c0791, View view) {
        this.f3020 = c0791;
        this.f3021 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0733 c0733 = this.f3020.f2971.f2969;
        View view = this.f3021;
        C0733 c0734 = C0733.f2714;
        synchronized (c0733) {
            Iterator it = c0733.f2716.iterator();
            while (it.hasNext()) {
                ((z0) it.next()).mo1818(view);
            }
        }
    }
}
