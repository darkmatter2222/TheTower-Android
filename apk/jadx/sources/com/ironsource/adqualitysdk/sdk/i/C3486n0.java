package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3486n0 implements InterfaceC0313 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final WeakHashMap f363;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashSet f364 = new HashSet();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C3472g0 f365;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f366;

    static {
        StringFog.decrypt("V1Jyv1il2tVpRGSMX6Xf\n", "ADcQ6THArZk=\n");
        f363 = new WeakHashMap();
    }

    public C3486n0(WebView webView, String str) {
        this.f366 = str;
        C3472g0 c3472g0 = new C3472g0(webView);
        this.f365 = c3472g0;
        m1869();
        new C3484m0(this);
        WebView webView2 = (WebView) c3472g0.f268.get();
        if (webView2 != null) {
            try {
                x0.m1885(webView2);
            } catch (Exception e) {
                AbstractC1071.m2435(C3472g0.f265, StringFog.decrypt("P10+vPqwDFQOWyW977A8VBhsJKHn/Q5yFkYpvfw=\n", "ei9M04iQazE=\n"), (Throwable) e, false);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1869() {
        C3472g0 c3472g0 = this.f365;
        C3482l0 c3482l0 = new C3482l0(this);
        WebView webView = (WebView) c3472g0.f268.get();
        if (webView != null) {
            try {
                C3468e0 c3468e0 = new C3468e0(x0.m1884(webView), c3482l0);
                c3472g0.f267 = new WeakReference(c3468e0);
                webView.setWebViewClient(c3468e0);
                c3472g0.f266 = true;
                return;
            } catch (Exception e) {
                AbstractC1071.m2435(C3472g0.f265, StringFog.decrypt("2s99AZF0iEvryWYAhHS4S/3rZguUF4NH+tN7\n", "n70PbuNU7y4=\n"), (Throwable) e, false);
            }
        }
        c3472g0.f266 = false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1857(WebView webView) {
        for (InterfaceC0313 interfaceC0313 : new HashSet(this.f364)) {
            if (interfaceC0313 != null) {
                interfaceC0313.mo1857(webView);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1858(WebView webView, String str) {
        for (InterfaceC0313 interfaceC0313 : new HashSet(this.f364)) {
            if (interfaceC0313 != null) {
                interfaceC0313.mo1858(webView, str);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1859(WebView webView, String str, String str2) {
        for (InterfaceC0313 interfaceC0313 : new HashSet(this.f364)) {
            if (interfaceC0313 != null) {
                interfaceC0313.mo1859(webView, str, str2);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1860(WebView webView, String str, boolean z) {
        for (InterfaceC0313 interfaceC0313 : new HashSet(this.f364)) {
            if (interfaceC0313 != null) {
                interfaceC0313.mo1860(webView, str, z);
            }
        }
    }
}
