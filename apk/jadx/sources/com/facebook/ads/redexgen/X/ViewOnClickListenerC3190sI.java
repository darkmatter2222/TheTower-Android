package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3190sI implements View.OnClickListener {
    public final /* synthetic */ FE A00;

    public ViewOnClickListenerC3190sI(FE fe) {
        this.A00 = fe;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0D.AFv(EnumC2481gc.A03);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
