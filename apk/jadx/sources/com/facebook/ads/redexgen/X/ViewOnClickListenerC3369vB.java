package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3369vB implements View.OnClickListener {
    public final /* synthetic */ ET A00;

    public ViewOnClickListenerC3369vB(ET et) {
        this.A00 = et;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (!this.A00.A0M) {
                this.A00.A0N = true;
                if (this.A00.A0c != null) {
                    this.A00.A0f(((C13897v) this.A00.A0c).A0O().toString());
                }
                if (this.A00.A0E.A1N() >= 0) {
                    this.A00.A08.postDelayed(this.A00.A0i, this.A00.A0E.A1N());
                }
            }
            this.A00.A0i(this.A00.A0M ? false : true);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
