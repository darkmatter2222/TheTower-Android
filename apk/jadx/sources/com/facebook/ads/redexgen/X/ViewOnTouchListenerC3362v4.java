package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.v4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC3362v4 implements View.OnTouchListener {
    public final /* synthetic */ ET A00;

    public ViewOnTouchListenerC3362v4(ET et) {
        this.A00 = et;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.A00.A00 = motionEvent.getY();
                break;
            case 1:
                if (this.A00.A00 < motionEvent.getY()) {
                    this.A00.A0i(false);
                }
                break;
        }
        return true;
    }
}
