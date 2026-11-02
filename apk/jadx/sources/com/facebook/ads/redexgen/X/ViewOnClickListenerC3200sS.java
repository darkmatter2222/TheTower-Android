package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3200sS implements View.OnClickListener {
    public final /* synthetic */ C3202sU A00;

    public ViewOnClickListenerC3200sS(C3202sU c3202sU) {
        this.A00 = c3202sU;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A02.AAG();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
