package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3137rR implements View.OnClickListener {
    public final /* synthetic */ C13666y A00;

    public ViewOnClickListenerC3137rR(C13666y c13666y) {
        this.A00 = c13666y;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.onClick(view);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
