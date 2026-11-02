package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Rect;
import android.view.View;
import android.webkit.WebView;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3466d0 extends AbstractViewOnLayoutChangeListenerC3462b0 {
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractViewOnLayoutChangeListenerC3462b0
    /* JADX INFO: renamed from: ﾇ */
    public final Object mo1863(WebView webView) {
        Rect rect = C.f94;
        View view = webView;
        while (view.getParent() instanceof View) {
            view = (View) view.getParent();
        }
        return view;
    }
}
