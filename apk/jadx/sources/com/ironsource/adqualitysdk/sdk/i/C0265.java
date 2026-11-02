package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.τ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0265 implements InterfaceC0128 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1290;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1291;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1292;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1293;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1294;

    public C0265(C0197 c0197, C1014 c1014, C0983 c0983, C0116 c0116, List list) {
        this.f1290 = c0197;
        this.f1294 = c1014;
        this.f1293 = c0983;
        this.f1292 = c0116;
        this.f1291 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0128
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1914(ViewOnTouchListenerC0124 viewOnTouchListenerC0124, View view, MotionEvent motionEvent) {
        C1014 c1014 = this.f1294;
        C0983 c0983 = this.f1293;
        C0116 c0116 = this.f1292;
        ArrayList arrayListM1964 = C0197.m1964(this.f1290, this.f1291, new Object[]{this, viewOnTouchListenerC0124, view, motionEvent});
        c1014.getClass();
        return c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964).m1987();
    }
}
