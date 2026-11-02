package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3198sQ implements View.OnClickListener {
    public final /* synthetic */ C2483ge A00;
    public final /* synthetic */ C3188sG A01;
    public final /* synthetic */ FD A02;

    public ViewOnClickListenerC3198sQ(FD fd, C3188sG c3188sG, C2483ge c2483ge) {
        this.A02 = fd;
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
            this.A02.A0D.AG9(this.A00);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
