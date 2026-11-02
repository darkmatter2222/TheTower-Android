package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3262tS extends WebViewClient {
    public static byte[] A05;
    public final WeakReference<C1618Hi> A02;
    public final WeakReference<InterfaceC3259tP> A03;
    public final WeakReference<C3254tK> A04;
    public final InterfaceC3258tO A01 = new InterfaceC3258tO() { // from class: com.facebook.ads.redexgen.X.F5
        @Override // com.facebook.ads.redexgen.X.InterfaceC3258tO
        public final boolean ABN(String str) {
            return C3262tS.A04(str);
        }
    };
    public WeakReference<InterfaceC3260tQ> A00 = new WeakReference<>(null);

    static {
        A01();
    }

    public C3262tS(WeakReference<C1618Hi> weakReference, WeakReference<InterfaceC3259tP> weakReference2, WeakReference<C3254tK> weakReference3) {
        this.A02 = weakReference;
        this.A03 = weakReference2;
        this.A04 = weakReference3;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{54, 55, 68, 74, 73, Ascii.SI, 55, 65, 54, 67, SignedBytes.MAX_POWER_OF_TWO, 39, 52, 37, 39, 41, 58, 47, 60, 47, 58, 63, 51, SignedBytes.MAX_POWER_OF_TWO, 54, 68, 65, 59, 54, 0, 59, SignedBytes.MAX_POWER_OF_TWO, 70, 55, SignedBytes.MAX_POWER_OF_TWO, 70, 0, 51, 53, 70, 59, 65, SignedBytes.MAX_POWER_OF_TWO, 0, 40, Ascii.ESC, Ascii.ETB, 41, 9, Ascii.SYN, Ascii.FF, Ascii.SUB, Ascii.ETB, 17, Ascii.FF, -42, 17, Ascii.SYN, Ascii.FS, Ascii.CR, Ascii.SYN, Ascii.FS, -42, Ascii.VT, 9, Ascii.FS, Ascii.CR, Ascii.SI, Ascii.ETB, Ascii.SUB, 33, -42, -22, -6, -9, -1, -5, -23, -22, -12, -19, 7, Ascii.ETB, Ascii.DC4, Ascii.FS, Ascii.CAN, 10, Ascii.ETB, 4, Ascii.VT, 6, 17, 17, 7, 6, 8, Ascii.DLE, 4, Ascii.SUB, Ascii.ETB, 17, -54, -57, -38, -57, 49, 54, 60, 45, 54, 60, -36, -39, -45, -95, -121, -30, -48, -51, -54, -31, -44, -48, -30};
    }

    private void A02(String str, C1618Hi c1618Hi) {
        c1618Hi.A08().ABz(A00(11, 11, 101), AbstractC2786lf.A09, new C2787lg(A00(111, 5, 6) + str));
    }

    private boolean A03(WebView webView, String str) {
        Intent intent;
        String strA00 = A00(116, 8, 10);
        C1618Hi c1618Hi = this.A02.get();
        if (c1618Hi == null) {
            return false;
        }
        if ((F4.A0A && (TextUtils.isEmpty(str) || A00(0, 11, 116).equals(str))) || !this.A01.ABN(str)) {
            return true;
        }
        try {
            Uri uriA00 = AbstractC3011pP.A00(str);
            String scheme = uriA00.getScheme();
            try {
                boolean zA13 = C2863mv.A13(c1618Hi);
                String strA01 = A00(48, 33, 71);
                String strA02 = A00(22, 26, InterfaceC3669k1.d.b.k);
                String strA03 = A00(105, 6, 103);
                if (!zA13) {
                    if (F4.A0A && strA03.equalsIgnoreCase(scheme)) {
                        Intent uri = Intent.parseUri(str, 1);
                        uri.addCategory(strA01);
                        uri.setComponent(null);
                        uri.setSelector(null);
                        PackageManager packageManager = c1618Hi.getPackageManager();
                        if (packageManager != null && packageManager.resolveActivity(uri, 65536) != null && C2997p8.A0F(c1618Hi, uri)) {
                            webView.goBack();
                            return true;
                        }
                    } else if ((F4.A0A && AbstractC3050q2.A04(str)) || !F4.A0C.contains(scheme)) {
                        return C2997p8.A0F(c1618Hi, new Intent(strA02, uriA00));
                    }
                    return false;
                }
                if (!F4.A0C.contains(scheme) && !A00(101, 4, 5).equals(scheme)) {
                    if (strA03.equalsIgnoreCase(scheme)) {
                        intent = Intent.parseUri(str, 1);
                        intent.setComponent(null);
                        intent.setSelector(null);
                    } else {
                        intent = new Intent(strA02, uriA00);
                    }
                    intent.addCategory(strA01);
                    if (Build.VERSION.SDK_INT >= 30) {
                        intent.setFlags(268436480);
                    } else {
                        intent.setFlags(268435456);
                    }
                    try {
                        if (!C2997p8.A0F(c1618Hi, intent)) {
                            A02(str, c1618Hi);
                        }
                        return true;
                    } catch (C2995p6 unused) {
                        if (strA03.equals(scheme)) {
                            String stringExtra = intent.getStringExtra(A00(81, 20, 68));
                            if (!TextUtils.isEmpty(stringExtra)) {
                                if (!C2997p8.A0F(c1618Hi, new Intent(strA02, AbstractC3011pP.A00(stringExtra)))) {
                                    A02(str, c1618Hi);
                                }
                                return true;
                            }
                        }
                        C2787lg c2787lg = new C2787lg(A00(111, 5, 6) + str);
                        c2787lg.A05(1);
                        c1618Hi.A08().AC0(A00(11, 11, 101), AbstractC2786lf.A06, c2787lg);
                        return true;
                    }
                }
                return false;
            } catch (Exception e) {
                c1618Hi.A08().AC0(strA00, AbstractC2786lf.A2d, new C2787lg(e));
                c1618Hi.A0F().AAg(e.toString());
            }
        } catch (SecurityException e2) {
            c1618Hi.A08().AC0(strA00, AbstractC2786lf.A2d, new C2787lg(e2));
            return true;
        }
    }

    public static /* synthetic */ boolean A04(String str) {
        return true;
    }

    public final void A05(WeakReference<InterfaceC3260tQ> weakReference) {
        this.A00 = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        C3254tK c3254tK = this.A04.get();
        if (c3254tK != null) {
            c3254tK.A03();
        }
        InterfaceC3259tP interfaceC3259tP = this.A03.get();
        if (interfaceC3259tP != null) {
            interfaceC3259tP.AGC(str);
        }
        InterfaceC3260tQ interfaceC3260tQ = this.A00.get();
        if (interfaceC3260tQ != null) {
            interfaceC3260tQ.AE7(webView.canGoBack());
            interfaceC3260tQ.AF0(webView.canGoForward());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        InterfaceC3259tP interfaceC3259tP = this.A03.get();
        if (interfaceC3259tP != null) {
            interfaceC3259tP.AGE(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        C1618Hi c1618Hi = this.A02.get();
        if (c1618Hi != null) {
            StringBuilder sb = new StringBuilder();
            String strA00 = A00(0, 0, 27);
            c1618Hi.A0F().AAd(AbstractC3050q2.A01(i, sb.append(strA00).append(str).toString(), strA00 + str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        C1618Hi c1618Hi = this.A02.get();
        if (c1618Hi != null) {
            int errorCode = webResourceError.getErrorCode();
            StringBuilder sb = new StringBuilder();
            String strA00 = A00(0, 0, 27);
            c1618Hi.A0F().AAd(AbstractC3050q2.A01(errorCode, sb.append(strA00).append((Object) webResourceError.getDescription()).toString(), strA00 + webResourceRequest.getUrl()));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        C1618Hi c1618Hi = this.A02.get();
        if (c1618Hi != null) {
            c1618Hi.A0F().AAe();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        C1618Hi c1618Hi = this.A02.get();
        if (c1618Hi != null) {
            c1618Hi.A0F().AAf();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC3267tX.A0D(AbstractC2786lf.A2e);
        InterfaceC3259tP interfaceC3259tP = this.A03.get();
        if (interfaceC3259tP == null) {
            return true;
        }
        interfaceC3259tP.AGl();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return A03(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return A03(webView, str);
    }
}
