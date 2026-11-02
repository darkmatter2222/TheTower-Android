package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC2537hY implements View.OnTouchListener {
    public final /* synthetic */ C2536hX A00;

    public ViewOnTouchListenerC2537hY(C2536hX c2536hX) {
        this.A00 = c2536hX;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1) {
            return false;
        }
        this.A00.A01 = System.currentTimeMillis();
        C2536hX.A00(this.A00);
        this.A00.A06.ACd(this.A00.A03.A37(), new C3278ti().A05(this.A00.getViewabilityChecker()).A04(this.A00.getTouchDataRecorder()).A07());
        return false;
    }
}
