package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class X extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C3460a0 f232;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f233;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f234;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ WebView f235;

    public X(C3460a0 c3460a0, WebView webView, String str, boolean z) {
        this.f232 = c3460a0;
        this.f235 = webView;
        this.f234 = str;
        this.f233 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1856() {
        AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0 = this.f232.f244;
        if (abstractViewOnLayoutChangeListenerC3462b0.f251) {
            List list = abstractViewOnLayoutChangeListenerC3462b0.f254;
            if (list == null || list.isEmpty()) {
                C3460a0 c3460a0 = this.f232;
                WebView webView = this.f235;
                String str = this.f234;
                boolean z = this.f233;
                c3460a0.getClass();
                AbstractC0340.m2055(new Z(c3460a0, webView, str, z));
                return;
            }
            Iterator it = this.f232.f244.f254.iterator();
            while (it.hasNext()) {
                if (this.f234.startsWith((String) it.next())) {
                    C3460a0 c3460a1 = this.f232;
                    WebView webView2 = this.f235;
                    String str2 = this.f234;
                    boolean z2 = this.f233;
                    c3460a1.getClass();
                    AbstractC0340.m2055(new Z(c3460a1, webView2, str2, z2));
                    return;
                }
            }
        }
    }
}
