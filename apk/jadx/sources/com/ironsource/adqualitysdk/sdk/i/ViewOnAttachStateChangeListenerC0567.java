package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnAttachStateChangeListenerC0567 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f2312;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f2313;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f2314;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2315;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ List f2316;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f2317;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f2318;

    public ViewOnAttachStateChangeListenerC0567(C0197 c0197, C1014 c1014, C1014 c1015, List list, boolean z, C0983 c0983, C0116 c0116) {
        this.f2312 = c0197;
        this.f2318 = c1014;
        this.f2317 = c1015;
        this.f2316 = list;
        this.f2315 = z;
        this.f2314 = c0983;
        this.f2313 = c0116;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        m2136(this.f2318, view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m2136(this.f2317, view);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2136(C1014 c1014, View view) {
        try {
            ArrayList arrayListM1964 = C0197.m1964(this.f2312, this.f2316, new Object[]{this, view});
            if (!this.f2315) {
                AbstractC0340.m2054(new C0607(this, c1014, arrayListM1964));
                return;
            }
            C0983 c0983 = this.f2314;
            C0116 c0116 = this.f2313;
            c1014.getClass();
            c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
        } catch (Throwable th) {
            AbstractC1071.m2435(this.f2313.m1903(), StringFog.decrypt("AqdluisZ0i1nmnmULU3aIC+GY7QtXPgrJrtwsBVQyDciu3KneVDVMC6xcvU=\n", "R9UX1Vk5u0M=\n") + c1014.f3586, th, false);
        }
    }
}
