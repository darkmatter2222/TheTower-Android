package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.r4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3114r4 implements View.OnClickListener {
    public final /* synthetic */ C1582Fy A00;

    public ViewOnClickListenerC3114r4(C1582Fy c1582Fy) {
        this.A00 = c1582Fy;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0G();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
