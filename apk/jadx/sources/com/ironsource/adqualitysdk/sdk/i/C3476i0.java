package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3476i0 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C3478j0 f276;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f277;

    public C3476i0(C3478j0 c3478j0, String str) {
        this.f276 = c3478j0;
        this.f277 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        WebView webView = this.f276.f280;
        String str = this.f277;
        String str2 = x0.f396;
        if (webView != null) {
            if (webView.getHandler() == null && webView.getRootView() == null) {
                return;
            }
            webView.loadUrl(AbstractC0662.m2192("8UlDrBppegvrXA+oH2tkSvpcWq9BKA==\n", "myg1zWkKCGI=\n", new StringBuilder(), str).append(StringFog.decrypt("sm6d4w==\n", "kEe02AUZ1p8=\n")).toString());
        }
    }
}
