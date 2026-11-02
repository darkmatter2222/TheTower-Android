package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2549hl extends WebViewClient {
    public static byte[] A01;
    public static String[] A02 = {"hfMJ0frXuRQdVVGg5HhbkedMp84qvG2m", "353suYezQm1X4xGGmKd", "JSegO1TQToLz4SD5sG2", "wzs2neDsiDlXGMSMfb3", "O6PuLNBrYuNMqKQgURK12L6N", "9iUPqfJGnhoj94eJuJeS1Wm6njk1Rmvr", "BdwoSzPq3MvWa04biSMwYNzp8DFOBLqT", "enVVpEgx3aC4K8YdK2hdvlOQVko"};
    public final /* synthetic */ C1905Tb A00;

    static {
        A01();
    }

    public C2549hl(C1905Tb c1905Tb) {
        this.A00 = c1905Tb;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{3, 4, Ascii.DC2, 2, 17, 8, Ascii.SI, 19, 8, Ascii.SO, Ascii.CR, -11, -6, -11, -44, 3, -14, 4, -7, Ascii.FF, 17, Ascii.FF, 7, Ascii.SO, 17, Ascii.SYN, 17, Ascii.ESC, Ascii.DLE, 7, Ascii.SYN, 9, Ascii.RS, 17, Ascii.SI, 9, Ascii.FS, 17, Ascii.ETB, Ascii.SYN, 47, 60, 60, 57, 60, Ascii.CR, 57, 46, 47, 37, 32, 53, 40, 34, 46, 45, -19, 40, 34, 46, 63, 75, 75, 71, 54, 60, 73, 73, 70, 73, -9, -7, -16, -10, -7, -16, -5, 0, 48, 45, 39};
    }

    private void A02(int i, String str, String str2, boolean z) {
        if (z) {
            this.A00.A0S();
        }
        this.A00.A0I.A04(EnumC2891nN.A0Q, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(40, 9, 78), i);
            jSONObject.put(A00(0, 11, 35), str);
            jSONObject.put(A00(78, 3, 63), str2);
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        this.A00.A0G.A0F().A6n(string);
        this.A00.A0J.A04(AbstractC2786lf.A16, string);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (this.A00.A0A != null) {
            this.A00.A0n(A00(19, 21, 44));
        }
        this.A00.A0I.A04(EnumC2891nN.A0R, null);
        this.A00.A0G.A0F().A6o(C3076qS.A01(this.A00.A00));
        this.A00.A0S();
        this.A00.A0B = true;
        this.A00.A0G();
        if (this.A00.A05 != null) {
            this.A00.A05.AHu();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            A02(i, str, str2, true);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        int errorCode = webResourceError.getErrorCode();
        StringBuilder sb = new StringBuilder();
        String strA00 = A00(0, 0, 48);
        A02(errorCode, sb.append(strA00).append((Object) webResourceError.getDescription()).toString(), strA00 + webResourceRequest.getUrl(), true);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A00(49, 11, 67))) {
            return;
        }
        A02(webResourceResponse != null ? webResourceResponse.getStatusCode() : -1, A00(60, 10, 91), A00(0, 0, 48) + webResourceRequest.getUrl(), false);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(11, 8, 21), renderProcessGoneDetail.didCrash());
            jSONObject.put(A00(70, 8, 11), renderProcessGoneDetail.rendererPriorityAtExit());
        } catch (JSONException unused) {
        }
        this.A00.A0G.A0F().A6j(jSONObject.toString());
        M1.A04(this.A00.A0E.A1r());
        if (this.A00.A06 == null) {
            return true;
        }
        UO uo = this.A00.A06;
        String[] strArr = A02;
        if (strArr[1].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        A02[0] = "kv0KfCNN1XAdbICEJBZwu3dTiw7XNBbg";
        uo.AGZ();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return C1I.A00(this.A00.A0G, this.A00.A0F, webResourceRequest, this.A00.A0M, this.A00.A0E.A2A());
    }
}
