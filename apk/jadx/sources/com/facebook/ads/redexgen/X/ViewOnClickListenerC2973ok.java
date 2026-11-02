package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ok, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC2973ok implements View.OnClickListener {
    public final /* synthetic */ C2972oj A00;

    public ViewOnClickListenerC2973ok(C2972oj c2972oj) {
        this.A00 = c2972oj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05.performClick();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
