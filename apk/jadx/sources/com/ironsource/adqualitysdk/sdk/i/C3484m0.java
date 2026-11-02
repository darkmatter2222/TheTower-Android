package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3484m0 extends WebChromeClient {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C3486n0 f361;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f362 = false;

    public C3484m0(C3486n0 c3486n0) {
        this.f361 = c3486n0;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.f361.mo1858(webView, str2);
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        if (i != 100 || this.f362) {
            return;
        }
        this.f362 = true;
        this.f361.mo1857(webView);
    }
}
