package com.facebook.ads.redexgen.X;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3219sl extends ViewOutlineProvider {
    public final /* synthetic */ float A00;
    public final /* synthetic */ C3226ss A01;

    public C3219sl(C3226ss c3226ss, float f) {
        this.A01 = c3226ss;
        this.A00 = f;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(AbstractC3043pv.A00, AbstractC3043pv.A00, view.getWidth(), view.getHeight(), this.A00);
    }
}
