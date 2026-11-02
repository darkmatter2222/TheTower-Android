package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3468e0 extends WebViewClient implements InterfaceC3470f0, InterfaceC0497 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final WebViewClient f261;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final WebViewClient f262;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f260 = StringFog.decrypt("g58L2w16+c+4kwzjEFvr77uICPkLbQ==\n", "1PppjWQfjow=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f259 = StringFog.decrypt("RiAAnAru/whEISOuGtnmHVYGGKId4fs=\n", "IUV0y3iPj3g=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f258 = StringFog.decrypt("82R4E+dXG8HCaGkwxmwXxvp1\n", "lAEMR4UAfqM=\n");

    public C3468e0(WebViewClient webViewClient, WebViewClient webViewClient2) {
        this.f262 = webViewClient;
        this.f261 = webViewClient2;
    }

    @Override // android.webkit.WebViewClient
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        try {
            this.f261.doUpdateVisitedHistory(webView, str, z);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("pasXXjZRF/nAtDFTCBgN44W3AENkFRHCkL0ERSEnF+SJrQBVDBgN44+rHA==\n", "4NllMURxfpc=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.doUpdateVisitedHistory(webView, str, z);
        } else {
            super.doUpdateVisitedHistory(webView, str, z);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onFormResubmission(WebView webView, Message message, Message message2) {
        try {
            this.f261.onFormResubmission(webView, message, message2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("hork7pYjhz/jlcLjqGqdJaaW8/PEbIAXrIr704FwmzOukeXyjWyA\n", "w/iWgeQD7lE=\n"), th, false);
        }
        try {
            WebViewClient webViewClient = this.f262;
            if (webViewClient != null) {
                webViewClient.onFormResubmission(webView, message, message2);
            } else {
                super.onFormResubmission(webView, message, message2);
            }
        } catch (Error e) {
            AbstractC1071.m2435(f260, StringFog.decrypt("AzpY801nh8RmJ0TaUDWD+CM7X/5SLp3ZLydE\n", "RkgqnD9H7qo=\n"), (Throwable) e, false);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        try {
            this.f261.onLoadResource(webView, str);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("74g4E9lRwBiKlx4e5xjaAs+ULw6LHsc6xZsuLs4CxgPYmS8=\n", "qvpKfKtxqXY=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onLoadResource(webView, str);
        } else {
            super.onLoadResource(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageCommitVisible(WebView webView, String str) {
        try {
            this.f261.onPageCommitVisible(webView, str);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("h5mP+yXl22fihqn2G6zBfaeFmOZ3qtxZo4yYxyOkwH2njw==\n", "wuv9lFfFsgk=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onPageCommitVisible(webView, str);
        } else {
            super.onPageCommitVisible(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        try {
            this.f261.onPageFinished(webView, str);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("+1oOnwRP0iueRSiSOgbIMdtGGYJWANUV308Zth8B0jbWTRg=\n", "vih88HZvu0U=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onPageFinished(webView, str);
        } else {
            super.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        try {
            this.f261.onPageStarted(webView, str, bitmap);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("qlbiSrB1YfDPScRHjjx76opK9VfiOmbOjkP1drY0euqKQA==\n", "7ySQJcJVCJ4=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onPageStarted(webView, str, bitmap);
        } else {
            super.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        try {
            this.f261.onReceivedClientCertRequest(webView, clientCertRequest);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("p87ELpigwRHC0eIjpunbC4fS0zPK78Yth9/TKJzlzDyO1dMvnsPNDZbu0zCf5dsL\n", "4ry2QeqAqH8=\n"), th, false);
        }
        try {
            WebViewClient webViewClient = this.f262;
            if (webViewClient != null) {
                webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
            } else {
                super.onReceivedClientCertRequest(webView, clientCertRequest);
            }
        } catch (Throwable th2) {
            AbstractC1071.m2435(f260, StringFog.decrypt("/idUpyrFeUWbNkekNIx+TJs6VKE/jH4L1Dt0rTuAeV3eMWWkMYB+X/gwVLwKgGFe3iZS\n", "u1UmyFjlECs=\n"), th2, false);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        try {
            this.f261.onReceivedError(webView, i, str, str2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("EyQa0xPeyXV2OzzeLZfTbzM4Dc5Bkc5JMzUN1RebxF4kJAfO\n", "VlZovGH+oBs=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onReceivedError(webView, i, str, str2);
        } else {
            super.onReceivedError(webView, i, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        try {
            this.f261.onReceivedError(webView, webResourceRequest, webResourceError);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("tL0tGJCXvE3RogsVrt6mV5ShOgXC2LtxlKw6HpTSsWaDvTAF\n", "8c9fd+K31SM=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
        } else {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        try {
            this.f261.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("sqp9x6Ahg7fXtVvKnmiZrZK2atryboSLkrtqwaRkjpGDrH/pp3WCi5Kpes2hdQ==\n", "99gPqNIB6tk=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } else {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        try {
            this.f261.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("HxEZZu/J3w16Dj9r0YDFFz8NDnu9htgxPwAOYOuM0isuFxtM75vZEQ==\n", "WmNrCZ3ptmM=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } else {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        try {
            this.f261.onReceivedLoginRequest(webView, str, str2, str3);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("RP0eP+pMdQ8h4jgy1AVvFWThCSK4A3IzZOwJOe4JeC1u6AU+ygltFGT8GA==\n", "AY9sUJhsHGE=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
        } else {
            super.onReceivedLoginRequest(webView, str, str2, str3);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        try {
            this.f261.onReceivedSslError(webView, sslErrorHandler, sslError);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("p1sFzOzM6/vCRCPB0oXx4YdHEtG+g+zHh0oSyuiJ5saRRTLR7IPw\n", "4il3o57sgpU=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
        } else {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            this.f261.onRenderProcessGone(webView, renderProcessGoneDetail);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("3DILCswejUm5LS0H8leXU/wuHBeeUYp1/C4dAMxulkj6JQoW+VGKQg==\n", "mUB5Zb4+5Cc=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            return webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onScaleChanged(WebView webView, float f, float f2) {
        try {
            this.f261.onScaleChanged(webView, f, f2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("NIm0wJiq3D5RlpLNpuPGJBSVo93K5dsDEpqqyqni1D4WnqI=\n", "cfvGr+qKtVA=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onScaleChanged(webView, f, f2);
        } else {
            super.onScaleChanged(webView, f, f2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onTooManyRedirects(WebView webView, Message message, Message message2) {
        try {
            this.f261.onTooManyRedirects(webView, message, message2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("kwyPuZHWYML2E6m0r5962LMQmKTDmWf4uRGwt42PW8myF4+zgIJ6\n", "1n791uP2Caw=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onTooManyRedirects(webView, message, message2);
        } else {
            super.onTooManyRedirects(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        try {
            this.f261.onUnhandledKeyEvent(webView, keyEvent);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("uHcGQ1vSTwndaCBOZZtVE5hrEV4JnUgyk20VQk2eQwO2YA1pX5dIEw==\n", "/QV0LCnyJmc=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        if (webViewClient != null) {
            webViewClient.onUnhandledKeyEvent(webView, keyEvent);
        } else {
            super.onUnhandledKeyEvent(webView, keyEvent);
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            this.f261.shouldInterceptRequest(webView, webResourceRequest);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("LYIf9VhW+l1InTn4Zh/gRw2eCOgKBftcHZwJ00QC9kELlR3ueBPiRg2DGQ==\n", "aPBtmip2kzM=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, webResourceRequest) : super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            this.f261.shouldInterceptRequest(webView, str);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("GFToa0FqGl59S85mfyMARDhI/3YTORtfKEr+TV0+FkI+Q+pwYS8CRThV7g==\n", "XSaaBDNKczA=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, str) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        try {
            this.f261.shouldOverrideKeyEvent(webView, keyEvent);
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("kAbhpS0AI071GceoE0k5VLAa9rh/UyJPoBj3hSlFOFK8EPaBOlkPVrAa5w==\n", "1XSTyl8gSiA=\n"), th, false);
        }
        WebViewClient webViewClient = this.f262;
        return webViewClient != null ? webViewClient.shouldOverrideKeyEvent(webView, keyEvent) : super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return m1866(webView, webResourceRequest, false);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return m1867(webView, str, false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        byte b;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != 368095040) {
                if (iHashCode == 381550901 && str.equals(f259)) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str.equals(f258)) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                return this.f262;
            }
            if (b == 1) {
                return this.f261;
            }
            new C3491q(c0116, c0983, f260, str).m2264(c0116.m1903());
            return null;
        } catch (Exception e) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0897.m2299("gg==\n", "pT4FLzogyjc=\n", AbstractC0662.m2192("XOiRtjSPzOBw9ob5I9fe62zuirchj+zte8yKvDHs1+F89JedI8zU+njujKtmwdr8cOyG+SvKz+B2\n/sP+\n", "GZrj2Uavu4g=\n", new StringBuilder(), str)), e, null);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1866(WebView webView, WebResourceRequest webResourceRequest, boolean z) {
        try {
            if (this.f261.shouldOverrideUrlLoading(webView, webResourceRequest) || z) {
                WebViewClient webViewClient = this.f262;
                if (webViewClient instanceof C3468e0) {
                    ((C3468e0) webViewClient).m1866(webView, webResourceRequest, true);
                }
                return true;
            }
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("aSFOYqhMQ6IMPmhvlgVZuEk9WX/6H0KjWT9YQqwJWL5FN1lYqABmo003VWO9RFipXSZZfq5F\n", "LFM8DdpsKsw=\n"), th, false);
        }
        WebViewClient webViewClient2 = this.f262;
        if (webViewClient2 != null) {
            try {
                return webViewClient2.shouldOverrideUrlLoading(webView, webResourceRequest);
            } catch (Throwable th2) {
                AbstractC1071.m2435(f260, StringFog.decrypt("BlIxW6p9FKZjTQxGsToUpgBMKlG2KV27K082WLwSC60xUipQvQgPpA9PIlCxMxrgMUUyQb0uCeE=\n", "QyBDNNhdfcg=\n"), th2, false);
            }
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1867(WebView webView, String str, boolean z) {
        try {
            if (this.f261.shouldOverrideUrlLoading(webView, str) || z) {
                WebViewClient webViewClient = this.f262;
                if (webViewClient instanceof C3468e0) {
                    ((C3468e0) webViewClient).m1867(webView, str, true);
                }
                return true;
            }
        } catch (Throwable th) {
            AbstractC1071.m2435(f260, StringFog.decrypt("ByncrHIn93ZiNvqhTG7tbCc1y7EgdPZ3NzfKjHZi7GorP8uWcmvSdyM/x61nL+tqLnI=\n", "QluuwwAHnhg=\n"), th, false);
        }
        WebViewClient webViewClient2 = this.f262;
        if (webViewClient2 != null && !webViewClient2.getClass().equals(WebViewClient.class)) {
            try {
                return this.f262.shouldOverrideUrlLoading(webView, str);
            } catch (Throwable th2) {
                AbstractC1071.m2435(f260, StringFog.decrypt("jju1mWaMFCbrJIiEfcsUJoglrpN62F07oyaymnDjCy25O66ScfkPJIcmppJ9whpgvjur3w==\n", "y0nH9hSsfUg=\n"), th2, false);
            }
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
