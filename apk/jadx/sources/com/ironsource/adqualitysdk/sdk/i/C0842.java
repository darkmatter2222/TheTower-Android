package com.ironsource.adqualitysdk.sdk.i;

import android.view.ViewGroup;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ῖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0842 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnLayoutChangeListenerC0876 f3108;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0857 f3109;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f3110;

    public C0842(ViewGroup viewGroup, C0857 c0857, ViewOnLayoutChangeListenerC0876 viewOnLayoutChangeListenerC0876) {
        this.f3110 = viewGroup;
        this.f3109 = c0857;
        this.f3108 = viewOnLayoutChangeListenerC0876;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f3110.addView(this.f3109, new ViewGroup.LayoutParams(-1, -1));
        this.f3110.removeOnLayoutChangeListener(this.f3108);
        this.f3110.addOnLayoutChangeListener(this.f3108);
    }
}
