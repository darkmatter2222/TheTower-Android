package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ל, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0359 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0286 f1650;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ View f1651;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnClickListenerC0256 f1652;

    public C0359(C0286 c0286, ViewOnClickListenerC0256 viewOnClickListenerC0256, View view) {
        this.f1650 = c0286;
        this.f1652 = viewOnClickListenerC0256;
        this.f1651 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1650.f1452.mo2032(this.f1652, this.f1651);
    }
}
