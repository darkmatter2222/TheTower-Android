package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.android.gms.ads.AdSize;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.io.ByteArrayInputStream;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3272tc extends WebViewClient {
    public static byte[] A0A;
    public static String[] A0B = {"dutFbLT0SJ7F8tp2omMpyLiOAYVHs", "eQZAVGISCoayl61p0XGnY6zF77MwgQ", "oGFUl4XXjxY0ysGh9uHTM5Bs0jmGzYfS", "nw1FzUJk4sGWtK2y2h7dLK31U1IoYOTN", "MQohGS04hBsrr", "rz5lEB2hDVgjaI0SM6Y5mQ12Lmz2ba", "Gakm8d7sZsS0Gn2hVSl3GYNL92Z8TRo6", "Ty7sQNcmLenaFb4R0BQbvtPuiVx7Fgst"};
    public boolean A00 = false;
    public final C1618Hi A01;
    public final WeakReference<C1554Ev> A02;
    public final WeakReference<InterfaceC3270ta> A03;
    public final WeakReference<AtomicBoolean> A04;
    public final WeakReference<C3077qT> A05;
    public final WeakReference<C2199c2> A06;
    public final AtomicInteger A07;
    public final AtomicReference<String> A08;
    public final boolean A09;

    static {
        A02();
    }

    public C3272tc(C1618Hi c1618Hi, WeakReference<InterfaceC3270ta> weakReference, WeakReference<C2199c2> weakReference2, WeakReference<C3077qT> weakReference3, WeakReference<AtomicBoolean> weakReference4, WeakReference<C1554Ev> weakReference5, AtomicInteger atomicInteger, AtomicReference<String> atomicReference, boolean z) {
        this.A01 = c1618Hi;
        this.A03 = weakReference;
        this.A06 = weakReference2;
        this.A05 = weakReference3;
        this.A04 = weakReference4;
        this.A02 = weakReference5;
        this.A07 = atomicInteger;
        this.A08 = atomicReference;
        this.A09 = z;
    }

    private WebResourceResponse A00() {
        return new WebResourceResponse(A01(216, 10, 64), StandardCharsets.UTF_8.name(), 403, A01(13, 6, 93), Collections.singletonMap(A01(0, 13, 85), A01(198, 8, 82)), new ByteArrayInputStream(A01(13, 6, 93).getBytes()));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{92, 126, 124, 119, 122, 50, 92, 112, 113, 107, 109, 112, 115, 83, 114, 121, 126, 114, 115, 55, 4, 19, Ascii.RS, 7, 19, 6, Ascii.ESC, Ascii.FS, Ascii.NAK, 82, 39, 32, 59, 82, 34, 19, 6, Ascii.SUB, 82, Ascii.DC4, Ascii.GS, 0, 82, 52, Ascii.ESC, Ascii.RS, Ascii.ETB, 82, 51, 17, 17, Ascii.ETB, 1, 1, 82, 71, 122, 118, 112, 99, 34, 102, 99, 118, 99, 56, 34, 53, 41, 41, 45, 93, 56, Ascii.SI, Ascii.SI, Ascii.DC2, Ascii.SI, 53, Ascii.SO, 19, 1, 6, 5, SignedBytes.MAX_POWER_OF_TWO, 50, 5, 17, Ascii.NAK, 5, 19, Ascii.DC4, SignedBytes.MAX_POWER_OF_TWO, 6, Ascii.SI, Ascii.DC2, SignedBytes.MAX_POWER_OF_TWO, 38, 9, Ascii.FF, 5, SignedBytes.MAX_POWER_OF_TWO, 33, 3, 3, 5, 19, 19, SignedBytes.MAX_POWER_OF_TWO, 49, 10, Ascii.ETB, 5, 2, 1, 68, 54, 1, Ascii.NAK, 17, 1, Ascii.ETB, Ascii.DLE, 68, 2, Ascii.VT, Ascii.SYN, 68, 34, Ascii.CR, 8, 1, 68, 37, 7, 7, 1, Ascii.ETB, Ascii.ETB, 68, 0, 1, 10, Ascii.CR, 1, 0, 98, 99, 104, 111, 99, 98, 89, 115, 116, 111, 89, 118, 103, 114, 110, 34, 37, 50, 45, 39, 43, 42, 106, 45, 39, 43, 19, Ascii.FS, Ascii.EM, Ascii.DLE, 32, 43, 58, 116, 116, Ascii.VT, Ascii.FS, Ascii.FS, 17, Ascii.VT, 3, Ascii.RS, Ascii.SUB, Ascii.ETB, 17, Ascii.FS, Ascii.VT, Ascii.GS, Ascii.RS, 1, 0, Ascii.GS, Ascii.VT, 118, 119, 53, 107, 108, 119, 106, 125, 120, 111, 123, 127, 111, 121, 126, 85, 99, 110, 126, 111, 114, 126, 37, 122, 102, 107, 99, 100, 10, Ascii.GS, Ascii.DLE, Ascii.NAK, Ascii.CAN, 35, Ascii.FF, Ascii.GS, 8, Ascii.DC4, Ascii.ESC, 9, Ascii.SO, 51, Ascii.SUB, 5, 9, Ascii.ESC};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(int i, String str) {
        if (A01(175, 23, 4).equals(str)) {
            this.A01.A0F().AMH();
            return;
        }
        this.A01.A0F().AMI(i, str);
        if (A0B[3].charAt(13) != 'K') {
            throw new RuntimeException();
        }
        A0B[2] = "XsLUUp7nqHFiRWgs1yCq1ROdvH3XZYI8";
        if (this.A03.get() != null) {
            this.A03.get().AEw(i, str);
        }
    }

    private final void A04(WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        if (webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A01(AdSize.WIDE_SKYSCRAPER_WIDTH, 11, 14))) {
            return;
        }
        this.A01.A0F().AMM(webResourceResponse.getStatusCode(), AbstractC3050q2.A01(webResourceResponse.getStatusCode(), A01(67, 10, 55), A01(0, 0, 49) + webResourceRequest.getUrl()));
    }

    private void A06(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A01(145, 15, 76), str);
            jSONObject.put(A01(226, 10, 54), str2);
            jSONObject.put(A01(InterfaceC3669k1.c.b.g, 10, 64), this.A08.get());
        } catch (JSONException unused) {
        }
        if (this.A01 != null) {
            this.A01.A08().ABz(A01(236, 8, 38), AbstractC2786lf.A2c, new C2787lg(AdErrorType.WEB_VIEW_CACHE_FILE_WAS_DENIED.getDefaultErrorMessage(), A01(55, 12, 72) + jSONObject.toString()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00a4  */
    private boolean A07(Uri uri) {
        String path = uri.getPath();
        String scheme = uri.getScheme();
        if (path != null && scheme != null) {
            String strA01 = A01(171, 4, 63);
            if (A0B[4].length() != 8) {
                A0B[6] = "e0NZ0IpncKNbspdHVbaE77hYKi1pXgCT";
                if (scheme.equals(strA01)) {
                    if (BuildConfigApi.isDebug()) {
                        String str = A01(19, 36, 56) + path;
                    }
                    List<String> listA09 = C2746kz.A09(this.A01);
                    boolean zA09 = A09(path, listA09);
                    if (!zA09) {
                        if (BuildConfigApi.isDebug()) {
                            String str2 = A01(77, 31, 42) + path;
                        }
                        Log.w(C1554Ev.A0H, A01(108, 37, 46));
                        A06(path, listA09.toString());
                    }
                    return zA09;
                }
                if (A0B[7].charAt(29) != 'S') {
                    A0B[2] = "yXDUwGubOAV6buqiBYARa4GXiUTiAdtJ";
                    return true;
                }
            }
        } else if (A0B[7].charAt(29) != 'S') {
            A0B[2] = "yXDUwGubOAV6buqiBYARa4GXiUTiAdtJ";
            return true;
        }
        throw new RuntimeException();
    }

    public static boolean A09(String str, List<String> list) {
        String lowerCase = str.toLowerCase(Locale.getDefault());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (lowerCase.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.A01.A0F().AMJ(this.A02.get() != null);
        if (this.A02.get() != null && this.A04.get() != null && !this.A04.get().get()) {
            this.A02.get().A0K();
        }
        if (this.A03.get() != null) {
            this.A03.get().AGD();
        }
        this.A00 = true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.A01.A0F().AMK();
        new Handler().postDelayed(new C1555Ew(this), this.A07.get());
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.A00 = true;
        A03(i, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        boolean zA11 = C2863mv.A11(this.A01);
        String strA01 = A01(0, 0, 49);
        if (zA11 || webResourceRequest.isForMainFrame()) {
            this.A00 = true;
            A03(webResourceError.getErrorCode(), strA01 + ((Object) webResourceError.getDescription()));
        } else {
            this.A01.A0F().AML(AbstractC3050q2.A01(webResourceError.getErrorCode(), strA01 + ((Object) webResourceError.getDescription()), strA01 + webResourceRequest.getUrl()));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        A04(webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.A01.A0F().AMN();
        sslErrorHandler.cancel();
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC3267tX.A0D(AbstractC2786lf.A2b);
        InterfaceC3270ta interfaceC3270ta = this.A03.get();
        if (interfaceC3270ta == null) {
            return true;
        }
        interfaceC3270ta.AHt();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (!this.A09 || A07(url)) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
        WebResourceResponse webResourceResponseA00 = A00();
        A04(webResourceRequest, webResourceResponseA00);
        return webResourceResponseA00;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.A03.get() == null) {
            return true;
        }
        this.A03.get().AEN(str, new C3278ti().A05(this.A06.get()).A04(this.A05.get()).A07());
        return true;
    }
}
