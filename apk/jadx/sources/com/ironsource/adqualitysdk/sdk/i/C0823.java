package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0823 implements InterfaceC0128 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0820 f3080;

    public C0823(C0820 c0820) {
        this.f3080 = c0820;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0128
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1914(ViewOnTouchListenerC0124 viewOnTouchListenerC0124, View view, MotionEvent motionEvent) {
        C0820.m2279(this.f3080, motionEvent);
        return true;
    }
}
