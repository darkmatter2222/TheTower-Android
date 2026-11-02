package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3317uL implements View.OnClickListener {
    public final /* synthetic */ C3319uN A00;

    public ViewOnClickListenerC3317uL(C3319uN c3319uN) {
        this.A00 = c3319uN;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
