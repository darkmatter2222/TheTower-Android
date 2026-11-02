package com.facebook.ads.redexgen.X;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2826mK extends WebViewClient {
    public final /* synthetic */ CallableC2827mL A00;

    public C2826mK(CallableC2827mL callableC2827mL) {
        this.A00 = callableC2827mL;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC3267tX.A0D(AbstractC2786lf.A2j);
        return true;
    }
}
