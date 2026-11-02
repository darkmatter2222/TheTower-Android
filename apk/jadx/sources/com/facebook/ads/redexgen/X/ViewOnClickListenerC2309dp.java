package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC2309dp implements View.OnClickListener {
    public final /* synthetic */ C1445Aq A00;

    public ViewOnClickListenerC2309dp(C1445Aq c1445Aq) {
        this.A00 = c1445Aq;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A03.A04(EnumC2891nN.A0z, null);
            this.A00.A02.A0F().A4C();
            if (this.A00.A00 == null) {
                return;
            }
            if (this.A00.A07()) {
                this.A00.A00.setVolume(1.0f);
            } else {
                this.A00.A00.setVolume(0.0f);
            }
            this.A00.A09();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
