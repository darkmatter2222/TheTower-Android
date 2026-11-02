package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3280tk implements View.OnClickListener {
    public float A00;
    public float A01;
    public View.OnClickListener A02;

    public ViewOnClickListenerC3280tk(View.OnClickListener onClickListener) {
        this.A02 = onClickListener;
    }

    public final void A00(float f, float f2) {
        this.A00 = f;
        this.A01 = f2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            int iAbs = Math.abs(width - height) / 2;
            if (width == height || ((width > height && this.A00 >= iAbs && this.A00 <= width - iAbs) || (height > width && this.A01 >= iAbs && this.A01 <= height - iAbs))) {
                this.A02.onClick(view);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
