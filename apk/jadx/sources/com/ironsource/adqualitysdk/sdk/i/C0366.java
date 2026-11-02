package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ץ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0366 implements InterfaceC0350 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1670;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1671;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1672;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1673;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1674;

    public C0366(C0197 c0197, C1014 c1014, C0983 c0983, C0116 c0116, List list) {
        this.f1670 = c0197;
        this.f1674 = c1014;
        this.f1673 = c0983;
        this.f1672 = c0116;
        this.f1671 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0350
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2032(ViewOnClickListenerC0256 viewOnClickListenerC0256, View view) {
        C1014 c1014 = this.f1674;
        C0983 c0983 = this.f1673;
        C0116 c0116 = this.f1672;
        ArrayList arrayListM1964 = C0197.m1964(this.f1670, this.f1671, new Object[]{this, viewOnClickListenerC0256, view});
        c1014.getClass();
        c1014.m2401(c0983, c0983.f3496, c0116, arrayListM1964);
    }
}
