package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC2903nZ implements View.OnTouchListener {
    public final /* synthetic */ C1589Gf A00;
    public final /* synthetic */ boolean A01;
    public final /* synthetic */ boolean A02;

    public ViewOnTouchListenerC2903nZ(C1589Gf c1589Gf, boolean z, boolean z2) {
        this.A00 = c1589Gf;
        this.A02 = z;
        this.A01 = z2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.A02) {
            return false;
        }
        return (this.A01 && C2863mv.A1X(this.A00.A04)) ? false : true;
    }
}
