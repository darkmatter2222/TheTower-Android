package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3138rS implements View.OnClickListener {
    public final /* synthetic */ C3141rV A00;

    public ViewOnClickListenerC3138rS(C3141rV c3141rV) {
        this.A00 = c3141rV;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0D();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
