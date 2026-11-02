package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnLayoutChangeListenerC0682 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f2597;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f2598;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f2599;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f2600;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2601;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ List f2602;

    public ViewOnLayoutChangeListenerC0682(C0197 c0197, C1014 c1014, C0116 c0116, C0983 c0983, List list, boolean z) {
        this.f2597 = c0197;
        this.f2602 = list;
        this.f2601 = z;
        this.f2600 = c1014;
        this.f2599 = c0983;
        this.f2598 = c0116;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            ArrayList arrayListM1964 = C0197.m1964(this.f2597, this.f2602, new Object[]{this, view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8)});
            if (!this.f2601) {
                AbstractC0340.m2054(new C0710(this, arrayListM1964));
                return;
            }
            C1014 c1014 = this.f2600;
            C0983 c0983 = this.f2599;
            C0116 c0116 = this.f2598;
            c1014.getClass();
            c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
        } catch (Throwable th) {
            AbstractC1071.m2435(this.f2598.m1903(), StringFog.decrypt("KmssFozEu55PVjA1n529hRtaNhiQg7e8BmoqHJCBoNAGdy0QmoHy\n", "bxleef7k0vA=\n") + this.f2600.f3586, th, false);
        }
    }
}
