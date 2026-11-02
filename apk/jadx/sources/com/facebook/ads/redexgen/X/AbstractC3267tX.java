package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3267tX extends WebView {
    public static byte[] A01;
    public static String[] A02 = {"wCfyxoFTZ1jJ20JoleL2PfrggSS6BF65", "Rc2rUHoB5tN3gwl7phNiRTFEm74RUGaD", "k3E8g92vqjz0P264LqfNkGJlcmiFj3XN", "5IFC", "4VKGug1amLvDa4cy8fz1MnlZuIkeI9i2", "ilhy", "oZlIL0UAu4uBBRacqgrbUbhUTaUcQiCc", "IlF4AsfZVSat8w0D1JV7TLHsmvDiF9Hf"};
    public static final String A03;
    public boolean A00;

    static {
        A0C();
        A03 = AbstractC3267tX.class.getSimpleName();
    }

    public AbstractC3267tX(Activity activity, C1618Hi c1618Hi) {
        super(activity);
        A0E(c1618Hi);
    }

    public AbstractC3267tX(C1618Hi c1618Hi) {
        super(c1618Hi);
        A0E(c1618Hi);
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A01 = new byte[]{87, 112, 120, 125, 116, 117, 49, 101, 126, 49, 120, 127, 120, 101, 120, 112, 125, 120, 107, 116, 49, 82, 126, 126, 122, 120, 116, 92, 112, 127, 112, 118, 116, 99, 63, 92, 93, 43, 104, 121, 106, 120, 99, 110, 111, Ascii.ESC, Ascii.DLE, 7, Ascii.DLE, 2, Ascii.DC2, 3, Ascii.CAN, 1, 5, 75, 82, SignedBytes.MAX_POWER_OF_TWO, 71, 122, 83, 76, SignedBytes.MAX_POWER_OF_TWO, 82};
    }

    public static void A0D(int i) {
        C1617Hh c1617HhA00 = AbstractC2754l9.A00();
        if (c1617HhA00 != null) {
            c1617HhA00.A08().ABz(A0B(56, 8, 76), i, new C2787lg(A0B(35, 10, 98)));
        }
    }

    private void A0E(C2755lA c2755lA) {
        setWebChromeClient(A0G());
        setWebViewClient(A0H());
        AbstractC3273td.A04(this);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        if (c2755lA.A05().AB6()) {
            setWebContentsDebuggingEnabled(true);
        }
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        try {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        } catch (Exception unused) {
            String str = A03;
            String[] strArr = A02;
            if (strArr[5].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[2] = "3PNmPrSUWzxeiAB5I9EQOdArp4AOyYx8";
            strArr2[1] = "IwiUK4Jj6dujXEYBYevDXKu5TYuHUrzl";
            Log.w(str, A0B(0, 35, 120));
        }
    }

    private void A0F(String str) {
        loadUrl(A0B(45, 11, 24) + str);
    }

    public abstract WebChromeClient A0G();

    public abstract WebViewClient A0H();

    public final void A0I(String str) {
        try {
            evaluateJavascript(str, null);
        } catch (IllegalStateException unused) {
            A0F(str);
        }
    }

    public final boolean A0J() {
        return this.A00;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.A00 = true;
        super.destroy();
    }
}
