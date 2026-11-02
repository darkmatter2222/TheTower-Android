package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ΐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0246 implements InterfaceC0128 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0128 f1185;

    public C0246(InterfaceC0128 interfaceC0128) {
        this.f1185 = interfaceC0128;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0128
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1914(ViewOnTouchListenerC0124 viewOnTouchListenerC0124, View view, MotionEvent motionEvent) {
        AbstractC0340.m2054(new C0247(this, viewOnTouchListenerC0124, view, motionEvent));
        return false;
    }
}
