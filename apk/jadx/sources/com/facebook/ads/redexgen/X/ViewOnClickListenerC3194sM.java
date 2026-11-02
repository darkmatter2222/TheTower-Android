package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3194sM implements View.OnClickListener {
    public final /* synthetic */ C3188sG A00;
    public final /* synthetic */ FD A01;

    public ViewOnClickListenerC3194sM(FD fd, C3188sG c3188sG) {
        this.A01 = fd;
        this.A00 = c3188sG;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0D.AFv(EnumC2481gc.A03);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
