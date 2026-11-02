package com.applovin.impl.adview;

import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.view.MotionEvent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import androidx.webkit.internal.AssetHelper;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.c4;
import com.applovin.impl.c5;
import com.applovin.impl.h2;
import com.applovin.impl.h8;
import com.applovin.impl.j2;
import com.applovin.impl.q7;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u7;
import com.applovin.impl.v7;
import com.applovin.impl.y4;
import com.applovin.impl.y7;
import com.applovin.sdk.AppLovinAdSize;
import com.google.common.net.HttpHeaders;
import com.ironsource.G5;
import com.ironsource.InterfaceC3669k1;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class c extends y4 {
    private final com.applovin.impl.sdk.l a;
    private final p b;
    private final com.applovin.impl.adview.a c;

    private static class a extends InputStream {
        final int a;
        final byte[] b;
        int c = 0;

        a(int i, byte[] bArr) {
            this.a = i;
            this.b = bArr;
        }

        @Override // java.io.InputStream
        public int available() {
            return (this.a + this.b.length) - this.c;
        }

        @Override // java.io.InputStream
        public int read() {
            int i = this.c;
            int i2 = this.a;
            if (i < i2) {
                this.c = i + 1;
                return 0;
            }
            int i3 = i - i2;
            byte[] bArr = this.b;
            if (i3 >= bArr.length) {
                return -1;
            }
            this.c = i + 1;
            return bArr[i3] & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            int i5 = 0;
            if (i2 == 0) {
                return 0;
            }
            int i6 = this.a;
            int length = this.b.length + i6;
            int i7 = this.c;
            if (i7 >= length) {
                return -1;
            }
            if (i7 < i6) {
                int iMin = Math.min(i2, i6 - i7);
                for (int i8 = 0; i8 < iMin; i8++) {
                    bArr[i + i8] = 0;
                }
                this.c += iMin;
                i5 = iMin;
            }
            int i9 = i2 - i5;
            if (i9 > 0 && (i3 = this.c) >= (i4 = this.a)) {
                int i10 = i3 - i4;
                int iMin2 = Math.min(i9, this.b.length - i10);
                if (iMin2 > 0) {
                    System.arraycopy(this.b, i10, bArr, i + i5, iMin2);
                    this.c += iMin2;
                    i5 += iMin2;
                }
            }
            if (i5 > 0) {
                return i5;
            }
            return -1;
        }
    }

    public c(com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
        this.c = aVar;
    }

    private InputStream a(byte[] bArr, String str) {
        if (!((Boolean) this.a.a(c5.E2)).booleanValue()) {
            return new ByteArrayInputStream(bArr);
        }
        int i = 0;
        try {
            i = Integer.parseInt(str.split("-")[0]);
        } catch (NumberFormatException unused) {
        }
        return new a(i, bArr);
    }

    private static Map a(com.applovin.impl.sdk.ad.b bVar, Uri uri, boolean z) {
        Map mapA = j2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("url", uri.toString(), mapA);
        CollectionUtils.putStringIfValid("is_blocked_auto_redirect", String.valueOf(z), mapA);
        return mapA;
    }

    private void a(Uri uri) {
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("success", false);
        String queryParameter = uri.getQueryParameter("type");
        u7.a(booleanQueryParameter ? "Tracked event: " + queryParameter : "Failed to track event: " + queryParameter, com.applovin.impl.sdk.l.p());
    }

    private static void a(Uri uri, boolean z, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.l lVar) {
        if (lVar.c(c5.c7).contains(uri.getScheme())) {
            return;
        }
        lVar.E().d(h2.Y0, a(bVar, uri, z));
    }

    private void a(MotionEvent motionEvent) {
        this.c.a(motionEvent);
    }

    private void a(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail, com.applovin.impl.sdk.ad.b bVar) {
        if (renderProcessGoneDetail.didCrash() && ((Boolean) this.a.a(c5.l6)).booleanValue()) {
            throw new RuntimeException("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: " + (bVar != null ? String.valueOf(bVar.getAdIdNumber()) : AbstractJsonLexerKt.NULL));
        }
        if (webView == null || !webView.equals(this.c.f())) {
            return;
        }
        this.c.a(((Boolean) this.a.a(c5.k7)).booleanValue());
        AppLovinAdSize appLovinAdSizeK = this.c.k();
        if (u7.a(appLovinAdSizeK)) {
            this.c.a(appLovinAdSizeK);
            this.c.D();
        }
    }

    private void a(b bVar, Uri uri) {
        com.applovin.impl.sdk.ad.b currentAd = bVar.getCurrentAd();
        AppLovinAdView appLovinAdViewI = this.c.i();
        if (appLovinAdViewI == null || currentAd == null) {
            if (p.a()) {
                this.b.b("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
            }
        } else {
            if (currentAd instanceof v7) {
                ((v7) currentAd).getAdEventTracker().v();
            }
            this.c.a(currentAd, appLovinAdViewI, uri, bVar.getAndClearLastClickEvent());
        }
    }

    private void a(v7 v7Var, b bVar) {
        y7 y7VarG1 = v7Var.g1();
        if (y7VarG1 != null) {
            h8.a(y7VarG1.b(), this.c.j());
            a(bVar, y7VarG1.c());
        }
    }

    private boolean a(boolean z, com.applovin.impl.sdk.ad.b bVar, Uri uri) {
        if (z) {
            return false;
        }
        boolean zY0 = bVar.Y0();
        a(uri, zY0, bVar, this.a);
        return zY0;
    }

    private void b() {
        this.c.y();
    }

    private void c() {
        this.c.a();
    }

    private WebResourceResponse e() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, ProxyConfig.MATCH_ALL_SCHEMES);
        return new WebResourceResponse(AssetHelper.DEFAULT_MIME_TYPE, G5.O, InterfaceC3669k1.a.b.d, "Not Found", map, new ByteArrayInputStream(new byte[0]));
    }

    @Override // com.applovin.impl.y4
    protected Map a() {
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("name", "AdWebViewClient");
        mapHashMap.putAll(j2.a((AppLovinAdImpl) this.c.g()));
        return mapHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:151:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:78:0x015f  */
    protected boolean a(WebView webView, String str) {
        boolean z;
        if (this.c == null) {
            return true;
        }
        if (p.a()) {
            this.b.d("AdWebView", "Processing click on ad URL \"" + str + "\"");
        }
        if (str != null && (webView instanceof b)) {
            Uri uri = Uri.parse(str);
            b bVar = (b) webView;
            String scheme = uri.getScheme();
            String host = uri.getHost();
            String path = uri.getPath();
            com.applovin.impl.sdk.ad.b bVarG = this.c.g();
            if (bVarG == null) {
                if (p.a()) {
                    this.b.b("AdWebView", "Unable to process click, ad not found!");
                }
                return true;
            }
            boolean zA = bVar.a();
            if (!"applovin".equals(scheme) || !"com.applovin.sdk".equals(host)) {
                Iterator it = bVarG.Y().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    String str2 = (String) it.next();
                    if (StringUtils.isValidString(path) && path.contains(str2)) {
                        z = false;
                        break;
                    }
                }
                if (!zA) {
                    boolean zX0 = bVarG.X0();
                    boolean z2 = zX0 ? false : z;
                    a(uri, zX0, bVarG, this.a);
                    z = z2;
                }
                if (z) {
                    List listR0 = bVarG.r0();
                    List listQ0 = bVarG.q0();
                    if ((listR0.isEmpty() || listR0.contains(scheme)) && (listQ0.isEmpty() || listQ0.contains(host))) {
                        if (bVarG instanceof v7) {
                            v7 v7Var = (v7) bVarG;
                            if (v7Var.w1()) {
                                a(v7Var, bVar);
                            } else {
                                a(bVar, uri);
                            }
                        } else {
                            a(bVar, uri);
                        }
                    } else if (p.a()) {
                        this.b.b("AdWebView", "URL is not whitelisted - bypassing click");
                    }
                }
            } else if ("/vibrate".equals(path)) {
                long j = StringUtils.parseLong(uri.getQueryParameter("duration_ms"), 0L);
                if (j > 0) {
                    u7.a(StringUtils.parseFloat(uri.getQueryParameter("intensity"), 0.5f), j, this.a);
                }
            } else if ("/adservice/close_ad".equals(path)) {
                b();
            } else if ("/adservice/expand_ad".equals(path)) {
                if (a(zA, bVarG, uri)) {
                    if (p.a()) {
                        this.b.b("AdWebView", "Skipping expand command without user interaction");
                    }
                    return true;
                }
                a(bVar.getLastClickEvent());
            } else if ("/adservice/contract_ad".equals(path)) {
                c();
            } else {
                if ("/adservice/no_op".equals(path)) {
                    return true;
                }
                if ("/adservice/load_url".equals(path)) {
                    if (a(zA, bVarG, uri)) {
                        if (p.a()) {
                            this.b.b("AdWebView", "Skipping URL load command without user interaction");
                        }
                        return true;
                    }
                    q7.a(uri, this.c, this.a);
                } else if ("/adservice/track_click_now".equals(path)) {
                    if (a(zA, bVarG, uri)) {
                        if (p.a()) {
                            this.b.b("AdWebView", "Skipping click tracking command without user interaction");
                        }
                        return true;
                    }
                    if (bVarG instanceof v7) {
                        a((v7) bVarG, bVar);
                    } else {
                        a(bVar, Uri.parse("/adservice/track_click_now"));
                    }
                } else if ("/adservice/deeplink".equals(path)) {
                    if (a(zA, bVarG, uri)) {
                        if (p.a()) {
                            this.b.b("AdWebView", "Skipping deep link plus command without user interaction");
                        }
                        return true;
                    }
                    if (bVarG instanceof v7) {
                        v7 v7Var2 = (v7) bVarG;
                        if (v7Var2.w1()) {
                            a(v7Var2, bVar);
                        } else {
                            a(bVar, uri);
                        }
                    } else {
                        a(bVar, uri);
                    }
                } else if ("/adservice/postback".equals(path)) {
                    q7.a(uri, bVarG, this.a);
                } else if ("/ga_init".equals(path)) {
                    this.c.c(uri);
                } else if ("/ga_event".equals(path)) {
                    this.c.b(uri);
                } else if ("/playable_event".equals(path)) {
                    a(uri);
                } else if ("/save_template_state".equals(path)) {
                    bVarG.b(uri.getQueryParameter("state"));
                } else if ("/template_error".equals(path)) {
                    q7.c(uri, bVarG, this.a);
                } else if ("/adservice/fully_watched".equals(path)) {
                    this.c.z();
                } else if ("/adservice/preload".equals(path)) {
                    q7.b(uri, bVarG, this.a);
                } else if ("/adservice/custom_intent".equals(path)) {
                    q7.a(uri, bVarG, this.c.i(), this.a);
                } else if ("/config_system_bars".equals(path)) {
                    this.c.a(uri);
                } else if ("/save_template_stage_info".equals(path)) {
                    bVarG.c(uri.getQueryParameter("stage_info"));
                } else {
                    if (p.a()) {
                        this.b.k("AdWebView", "Unknown URL: " + str);
                    }
                    if (p.a()) {
                        this.b.k("AdWebView", "Path: " + path);
                    }
                }
            }
        }
        return true;
    }

    protected com.applovin.impl.adview.a d() {
        return this.c;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (p.a()) {
            this.b.d("AdWebView", "Loaded resource: " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (p.a()) {
            this.b.d("AdWebView", "Loaded URL: " + str);
        }
        this.c.a(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        com.applovin.impl.sdk.ad.b bVarG = this.c.g();
        String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
        if (p.a()) {
            this.b.b("AdWebView", str3 + " for ad: " + bVarG);
        }
        if (u7.a(str2, this.a)) {
            this.a.E().a("adWebViewReceivedError", str2, i, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        com.applovin.impl.sdk.ad.b bVarG = this.c.g();
        if (p.a()) {
            this.b.b("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + bVarG);
        }
        if (u7.a(webResourceRequest.getUrl().toString(), this.a)) {
            this.a.E().a("adWebViewReceivedHttpError", webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), webResourceResponse.getReasonPhrase());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        com.applovin.impl.sdk.ad.b bVarG = this.c.g();
        String str = "Received SSL error: " + sslError;
        if (p.a()) {
            this.b.b("AdWebView", str + " for ad: " + bVarG);
        }
    }

    @Override // com.applovin.impl.y4, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.render_process_gone"), null);
        com.applovin.impl.sdk.ad.b bVarG = this.c.g();
        p.h("AdWebView", "Render process gone for ad: " + bVarG + ". Process did crash: " + renderProcessGoneDetail.didCrash());
        boolean zOnRenderProcessGone = super.onRenderProcessGone(webView, renderProcessGoneDetail);
        if (((Boolean) this.a.a(c5.f6)).booleanValue()) {
            a(webView, renderProcessGoneDetail, bVarG);
        }
        return zOnRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        c4 c4VarI1;
        String strReplace;
        byte[] bArrA;
        Uri url = webResourceRequest.getUrl();
        if (url == null || !"sdk".equals(url.getScheme())) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
        com.applovin.impl.sdk.ad.b bVarG = this.c.g();
        if ((bVarG instanceof com.applovin.impl.sdk.ad.a) && (c4VarI1 = ((com.applovin.impl.sdk.ad.a) bVarG).i1()) != null) {
            n nVarI = this.a.I();
            String string = url.toString();
            if (string.equals(c4VarI1.e())) {
                byte[] bArrD = c4VarI1.d();
                if (bArrD == null) {
                    return e();
                }
                HashMap map = new HashMap();
                map.put(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, ProxyConfig.MATCH_ALL_SCHEMES);
                return new WebResourceResponse("application/dash+xml", G5.O, 200, "OK", map, new ByteArrayInputStream(bArrD));
            }
            String strReplace2 = string.replace("sdk://", "https://");
            String str = webResourceRequest.getRequestHeaders().get(HttpHeaders.RANGE);
            if (str != null && (bArrA = c4VarI1.a(strReplace2, (strReplace = str.replace("bytes=", "")))) != null) {
                InputStream inputStreamA = a(bArrA, strReplace);
                String strA = nVarI.a(strReplace2);
                HashMap map2 = new HashMap();
                map2.put(HttpHeaders.CONTENT_RANGE, "bytes " + strReplace + "/*");
                map2.put(HttpHeaders.ACCEPT_RANGES, "bytes");
                map2.put(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, ProxyConfig.MATCH_ALL_SCHEMES);
                return new WebResourceResponse(strA, null, InterfaceC3669k1.c.b.g, "Partial Content", map2, inputStreamA);
            }
            return e();
        }
        return e();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return a(webView, url.toString());
        }
        if (!p.a()) {
            return false;
        }
        this.b.b("AdWebView", "No url found for request");
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(webView, str);
    }
}
