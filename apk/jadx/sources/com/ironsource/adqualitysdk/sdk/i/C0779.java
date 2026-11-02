package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ḟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0779 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0733 f2901;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ z0 f2902;

    public C0779(C0733 c0733, z0 z0Var) {
        this.f2901 = c0733;
        this.f2902 = z0Var;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        Iterator it = this.f2901.f2717.iterator();
        while (it.hasNext()) {
            View view = (View) ((WeakReference) it.next()).get();
            if (view != null) {
                AbstractC0340.m2053(new C0784(this, view));
            }
        }
    }
}
