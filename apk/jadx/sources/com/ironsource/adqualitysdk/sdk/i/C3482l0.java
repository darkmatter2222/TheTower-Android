package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3482l0 extends WebViewClient {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C3486n0 f292;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f295 = false;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f294 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public String f293 = null;

    public C3482l0(C3486n0 c3486n0) {
        this.f292 = c3486n0;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f292.mo1857(webView);
        this.f295 = false;
        this.f294 = true;
        if (this.f293 == null) {
            this.f293 = webView.getOriginalUrl();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f292.mo1857(webView);
        this.f295 = true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f292.f366)) {
            this.f293 = webView.getOriginalUrl();
            String strSubstring = str.substring(this.f292.f366.length());
            C3486n0 c3486n0 = this.f292;
            c3486n0.mo1859(webView, c3486n0.f366, strSubstring);
            return true;
        }
        if (this.f293 == null) {
            this.f293 = webView.getOriginalUrl();
        }
        this.f292.mo1860(webView, str, (this.f295 && this.f294) || !(webView.getOriginalUrl() == null || this.f293 == null || webView.getOriginalUrl().equals(this.f293)));
        this.f294 = true;
        this.f295 = false;
        return false;
    }
}
