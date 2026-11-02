package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public final class Z extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C3460a0 f239;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f240;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f241;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ WebView f242;

    public Z(C3460a0 c3460a0, WebView webView, String str, boolean z) {
        this.f239 = c3460a0;
        this.f242 = webView;
        this.f241 = str;
        this.f240 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        AbstractC0340.m2057(new Y(this, this.f242.getOriginalUrl(), this.f239.f244.mo1863(this.f242)));
    }
}
