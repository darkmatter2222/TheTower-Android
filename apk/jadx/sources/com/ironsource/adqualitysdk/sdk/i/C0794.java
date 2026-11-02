package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0794 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0791 f2976;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ View f2977;

    public C0794(C0791 c0791, View view) {
        this.f2976 = c0791;
        this.f2977 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0733 c0733 = this.f2976.f2971.f2969;
        View view = this.f2977;
        C0733 c0734 = C0733.f2714;
        synchronized (c0733) {
            Iterator it = c0733.f2716.iterator();
            while (it.hasNext()) {
                ((z0) it.next()).mo1815(view);
            }
        }
    }
}
