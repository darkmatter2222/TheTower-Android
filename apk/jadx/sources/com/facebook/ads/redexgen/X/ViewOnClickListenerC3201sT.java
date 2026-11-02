package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3201sT implements View.OnClickListener {
    public final /* synthetic */ C2483ge A00;
    public final /* synthetic */ C3188sG A01;
    public final /* synthetic */ C3202sU A02;

    public ViewOnClickListenerC3201sT(C3202sU c3202sU, C3188sG c3188sG, C2483ge c2483ge) {
        this.A02 = c3202sU;
        this.A01 = c3188sG;
        this.A00 = c2483ge;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            this.A02.A02.AG9(this.A00);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
