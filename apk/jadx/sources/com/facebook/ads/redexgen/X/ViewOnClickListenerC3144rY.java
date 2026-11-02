package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3144rY implements View.OnClickListener {
    public final /* synthetic */ FS A00;

    public ViewOnClickListenerC3144rY(FS fs) {
        this.A00 = fs;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0T.A04(EnumC2891nN.A07, null);
            this.A00.A0W.A5C(this.A00.A0X.A8X());
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
