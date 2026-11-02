package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Γ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0247 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0246 f1186;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ MotionEvent f1187;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ View f1188;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnTouchListenerC0124 f1189;

    public C0247(C0246 c0246, ViewOnTouchListenerC0124 viewOnTouchListenerC0124, View view, MotionEvent motionEvent) {
        this.f1186 = c0246;
        this.f1189 = viewOnTouchListenerC0124;
        this.f1188 = view;
        this.f1187 = motionEvent;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1186.f1185.mo1914(this.f1189, this.f1188, this.f1187);
    }
}
