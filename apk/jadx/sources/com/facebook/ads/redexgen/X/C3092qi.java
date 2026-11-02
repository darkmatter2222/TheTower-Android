package com.facebook.ads.redexgen.X;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3092qi extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ InterfaceC3093qj A02;
    public final /* synthetic */ ViewOnTouchListenerC3094qk A03;

    public C3092qi(ViewOnTouchListenerC3094qk viewOnTouchListenerC3094qk, InterfaceC3093qj interfaceC3093qj, int i, int i2) {
        this.A03 = viewOnTouchListenerC3094qk;
        this.A02 = interfaceC3093qj;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent == null || motionEvent2 == null) {
            return false;
        }
        float y = motionEvent2.getY() - motionEvent.getY();
        if (Math.abs(y) <= Math.abs(motionEvent2.getX() - motionEvent.getX()) || y <= this.A00 || Math.abs(f2) <= this.A01) {
            return false;
        }
        this.A02.AHF();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        this.A02.AH4();
        return true;
    }
}
