package com.google.android.libraries.ads.mobile.sdk.h5;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import kotlin.f01;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010S\u001a\u00020\n¢\u0006\u0004\bT\u0010UJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0017\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u0019\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u0014J#\u0010\u001a\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u0014J%\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010 \u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J-\u0010#\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\"\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b#\u0010$J-\u0010(\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010'\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b(\u0010)J+\u0010+\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010*\u001a\u00020\u000eH\u0016¢\u0006\u0004\b+\u0010,J-\u00100\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010.\u001a\u0004\u0018\u00010-2\b\u0010\u001f\u001a\u0004\u0018\u00010/H\u0016¢\u0006\u0004\b0\u00101J#\u00103\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b3\u00104J7\u00108\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010.\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u00010\u00112\b\u00107\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b8\u00109J#\u0010<\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J#\u0010>\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b>\u0010?J)\u0010C\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@H\u0016¢\u0006\u0004\bC\u0010DJ7\u0010G\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u00107\u001a\u0004\u0018\u00010\u00112\b\u0010E\u001a\u0004\u0018\u00010\u00112\b\u0010F\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\bG\u0010HJ#\u0010K\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010J\u001a\u0004\u0018\u00010IH\u0017¢\u0006\u0004\bK\u0010LJ5\u0010Q\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010N\u001a\u00020M2\b\u0010P\u001a\u0004\u0018\u00010OH\u0017¢\u0006\u0004\bQ\u0010R¨\u0006V"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsWebViewClient;", "Landroid/webkit/WebViewClient;", "", "clearAdObjects", "()V", "delegate", "setDelegateWebViewClient", "(Landroid/webkit/WebViewClient;)V", "getDelegateWebViewClient", "()Landroid/webkit/WebViewClient;", "Landroid/webkit/WebView;", "view", "Landroid/webkit/WebResourceRequest;", "request", "", "shouldOverrideUrlLoading", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z", "", "url", "onLoadResource", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", "favicon", "onPageStarted", "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "onPageFinished", "onPageCommitVisible", "Landroid/webkit/WebResourceResponse;", "shouldInterceptRequest", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;", "Landroid/webkit/WebResourceError;", "error", "onReceivedError", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "errorResponse", "onReceivedHttpError", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V", "Landroid/os/Message;", "dontResend", "resend", "onFormResubmission", "(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V", "isReload", "doUpdateVisitedHistory", "(Landroid/webkit/WebView;Ljava/lang/String;Z)V", "Landroid/webkit/SslErrorHandler;", "handler", "Landroid/net/http/SslError;", "onReceivedSslError", "(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V", "Landroid/webkit/ClientCertRequest;", "onReceivedClientCertRequest", "(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V", "Landroid/webkit/HttpAuthHandler;", "host", "realm", "onReceivedHttpAuthRequest", "(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/view/KeyEvent;", "event", "shouldOverrideKeyEvent", "(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z", "onUnhandledKeyEvent", "(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V", "", "oldScale", "newScale", "onScaleChanged", "(Landroid/webkit/WebView;FF)V", "account", "args", "onReceivedLoginRequest", "(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/webkit/RenderProcessGoneDetail;", "detail", "onRenderProcessGone", "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z", "", "threatType", "Landroid/webkit/SafeBrowsingResponse;", "callback", "onSafeBrowsingHit", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V", "webView", "<init>", "(Landroid/webkit/WebView;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class H5AdsWebViewClient extends WebViewClient {
    private final WebView a;
    private final H5AdsRequestHandler b;
    private WebViewClient c;

    public H5AdsWebViewClient(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.a = webView;
        this.b = new H5AdsRequestHandler(new OnH5AdsEventListener() { // from class: com.google.android.libraries.ads.mobile.sdk.h5.H5AdsWebViewClient$$ExternalSyntheticLambda0
            @Override // com.google.android.libraries.ads.mobile.sdk.h5.OnH5AdsEventListener
            public final void onH5AdsEvent(String str) {
                H5AdsWebViewClient.a(this.f$0, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(H5AdsWebViewClient this$0, String it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.a.evaluateJavascript(it, null);
    }

    public final void clearAdObjects() {
        this.b.clearAdObjects();
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(WebView view, String url, boolean isReload) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.doUpdateVisitedHistory(view, url, isReload);
        }
    }

    /* JADX INFO: renamed from: getDelegateWebViewClient, reason: from getter */
    public final WebViewClient getC() {
        return this.c;
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(WebView view, Message dontResend, Message resend) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onFormResubmission(view, dontResend, resend);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Unit unit = null;
        if (!Intrinsics.areEqual(this.a, view)) {
            f01.a("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.", (Throwable) null);
            return;
        }
        if (url == null || !this.b.handleH5AdsRequest(url)) {
            WebViewClient webViewClient = this.c;
            if (webViewClient != null) {
                webViewClient.onLoadResource(view, url);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                super.onLoadResource(view, url);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageCommitVisible(WebView view, String url) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onPageCommitVisible(view, url);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onPageFinished(view, url);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onPageStarted(view, url, favicon);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedClientCertRequest(WebView view, ClientCertRequest request) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onReceivedClientCertRequest(view, request);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        WebViewClient webViewClient = this.c;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedError(view, request, error);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(WebView view, HttpAuthHandler handler, String host, String realm) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpAuthRequest(view, handler, host, realm);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpError(view, request, errorResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedLoginRequest(WebView view, String realm, String account, String args) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onReceivedLoginRequest(view, realm, account, args);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onReceivedSslError(view, handler, error);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            return webViewClient.onRenderProcessGone(view, detail);
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onSafeBrowsingHit(WebView view, WebResourceRequest request, int threatType, SafeBrowsingResponse callback) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onSafeBrowsingHit(view, request, threatType, callback);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView view, float oldScale, float newScale) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onScaleChanged(view, oldScale, newScale);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(WebView view, KeyEvent event) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            webViewClient.onUnhandledKeyEvent(view, event);
        }
    }

    public final void setDelegateWebViewClient(WebViewClient delegate) {
        this.c = delegate;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            return webViewClient.shouldInterceptRequest(view, request);
        }
        return null;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView view, KeyEvent event) {
        WebViewClient webViewClient = this.c;
        if (webViewClient != null) {
            return webViewClient.shouldOverrideKeyEvent(view, event);
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (view != null && !Intrinsics.areEqual(this.a, view)) {
            f01.a("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.", (Throwable) null);
            return false;
        }
        String string = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        if (this.b.handleH5AdsRequest(string)) {
            return true;
        }
        WebViewClient webViewClient = this.c;
        return webViewClient != null ? webViewClient.shouldOverrideUrlLoading(view, request) : super.shouldOverrideUrlLoading(view, request);
    }
}
