package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ḽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0791 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0787 f2971;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f2972;

    public C0791(C0787 c0787, ArrayList arrayList) {
        this.f2971 = c0787;
        this.f2972 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        ArrayList arrayListM1822 = C.m1822(this.f2971.f2969.f2717, this.f2972);
        for (View view : this.f2972) {
            Iterator it = this.f2971.f2969.f2717.iterator();
            do {
                if (!it.hasNext()) {
                    this.f2971.f2969.f2717.add(new WeakReference(view));
                    AbstractC0340.m2053(new C0802(this, view));
                    break;
                }
            } while (((WeakReference) it.next()).get() != view);
        }
        for (int i = 0; i < arrayListM1822.size(); i++) {
            AbstractC0340.m2053(new C0794(this, (View) arrayListM1822.get(i)));
        }
    }
}
