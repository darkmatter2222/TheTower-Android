package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x0 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f396 = StringFog.decrypt("yVFWu2tewVDqXVie\n", "njQ07QI7tgU=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean f395 = true;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static boolean f394 = true;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean f393 = true;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static boolean f392 = false;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static boolean f391 = false;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static w0 f390 = new w0();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static w0 f389 = new w0();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static WebViewClient m1884(WebView webView) {
        JSONObject jSONObject;
        C3488o0 c3488o0M1886 = m1886();
        synchronized (c3488o0M1886) {
            jSONObject = c3488o0M1886.f2613;
        }
        boolean z = true;
        if (jSONObject.optBoolean(StringFog.decrypt("zg7Wiw==\n", "qXmg6ILDRtI=\n"), true)) {
            Context context = webView.getContext();
            if (f394) {
                try {
                    f394 = false;
                    WebView webView2 = new WebView(context);
                    C3468e0 c3468e0 = new C3468e0(null, new C3493r0());
                    webView2.setWebViewClient(c3468e0);
                    if (c3468e0 != webView2.getWebViewClient()) {
                        z = false;
                    }
                    f392 = z;
                } catch (Throwable th) {
                    AbstractC1071.m2435(f396, StringFog.decrypt("B4vJIphY9LknmtAkhB+3uCTZyCyHHbeGJ5vtJI8P1L0rnNU5\n", "Qvm7Tep4l9E=\n"), th, false);
                }
            }
            if (f392) {
                return webView.getWebViewClient();
            }
        }
        m1890(webView.getContext());
        InterfaceC0792 interfaceC0792M1888 = m1888(webView, new u0(), f390);
        if (interfaceC0792M1888 != null) {
            return (WebViewClient) ((C0758) interfaceC0792M1888).m2263();
        }
        throw new RuntimeException(StringFog.decrypt("qvsgjhUjXWPJ8jyMFW0tcovCPIcGDhZ+jPohwhckH3uN\n", "6ZRV4nFNehc=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static WebChromeClient m1885(WebView webView) {
        JSONObject jSONObject;
        C3488o0 c3488o0M1886 = m1886();
        synchronized (c3488o0M1886) {
            jSONObject = c3488o0M1886.f2613;
        }
        if (jSONObject.optBoolean(StringFog.decrypt("W3uwpw==\n", "PAzTxAOaMI4=\n"), true)) {
            Context context = webView.getContext();
            if (f393) {
                f393 = false;
                WebView webView2 = new WebView(context);
                W w = new W(new s0());
                webView2.setWebChromeClient(w);
                f391 = w == webView2.getWebChromeClient();
            }
            if (f391) {
                return webView.getWebChromeClient();
            }
        }
        m1890(webView.getContext());
        InterfaceC0792 interfaceC0792M1888 = m1888(webView, new v0(), f389);
        if (interfaceC0792M1888 != null) {
            return (WebChromeClient) ((C0758) interfaceC0792M1888).m2263();
        }
        throw new RuntimeException(StringFog.decrypt("b7SYa52l/xgMvYRpneuPCU6YhXWWpr0vQLKIaY3rvgVJt4k=\n", "LNvtB/nL2Gw=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C3488o0 m1886() {
        return ((C0961) AbstractC0953.m2334()).f3421;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static w0 m1887(WebView webView, InterfaceC0497 interfaceC0497, InterfaceC0785 interfaceC0785) {
        w0 w0Var = new w0();
        C1043 c1043 = m1886().f2612;
        JSONObject jSONObject = c1043.f3677;
        String str = c1043.f3683;
        List listM2414 = c1043.f3685;
        String str2 = AbstractC1030.f3634;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            listM2414 = AbstractC1030.m2414(jSONArrayOptJSONArray);
        }
        C1043 c1044 = m1886().f2612;
        InterfaceC0792 interfaceC0792M1889 = m1889(webView, interfaceC0785, listM2414, c1044.f3677.optInt(c1044.f3682, 7));
        if (interfaceC0792M1889 != null) {
            Object objM2263 = ((C0758) interfaceC0792M1889).m2263();
            if (objM2263 == interfaceC0497) {
                w0Var.f386 = true;
                return w0Var;
            }
            C1043 c1045 = m1886().f2612;
            JSONObject jSONObject2 = c1045.f3677;
            String str3 = c1045.f3681;
            List listM2415 = c1045.f3684;
            JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(str3);
            if (jSONArrayOptJSONArray2 != null) {
                listM2415 = AbstractC1030.m2414(jSONArrayOptJSONArray2);
            }
            C1043 c1046 = m1886().f2612;
            InterfaceC0792 interfaceC0792M18810 = m1889(objM2263, interfaceC0785, listM2415, c1046.f3677.optInt(c1046.f3680, 2));
            if (interfaceC0792M18810 != null && ((C0758) interfaceC0792M18810).m2263() == interfaceC0497) {
                w0Var.f385 = true;
            }
        }
        return w0Var;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static InterfaceC0792 m1888(WebView webView, InterfaceC0785 interfaceC0785, w0 w0Var) {
        Object objM2263;
        try {
            if (!w0Var.f386 && !w0Var.f385) {
                return null;
            }
            C1043 c1043 = m1886().f2612;
            JSONObject jSONObject = c1043.f3677;
            String str = c1043.f3683;
            List listM2414 = c1043.f3685;
            String str2 = AbstractC1030.f3634;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
            if (jSONArrayOptJSONArray != null) {
                listM2414 = AbstractC1030.m2414(jSONArrayOptJSONArray);
            }
            C1043 c1044 = m1886().f2612;
            InterfaceC0792 interfaceC0792M1889 = m1889(webView, interfaceC0785, listM2414, c1044.f3677.optInt(c1044.f3682, 7));
            if (w0Var.f385 && interfaceC0792M1889 != null && (objM2263 = ((C0758) interfaceC0792M1889).m2263()) != null && !objM2263.getClass().equals(((C0758) interfaceC0792M1889).f2802.getType())) {
                C1043 c1045 = m1886().f2612;
                JSONObject jSONObject2 = c1045.f3677;
                String str3 = c1045.f3681;
                List listM2415 = c1045.f3684;
                JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(str3);
                if (jSONArrayOptJSONArray2 != null) {
                    listM2415 = AbstractC1030.m2414(jSONArrayOptJSONArray2);
                }
                C1043 c1046 = m1886().f2612;
                return m1889(objM2263, interfaceC0785, listM2415, c1046.f3677.optInt(c1046.f3680, 2));
            }
            return interfaceC0792M1889;
        } catch (Throwable th) {
            AbstractC1071.m2435(f396, StringFog.decrypt("Py27fdQdeeQOK6B8wR197RM6p2aGW3fkFjs=\n", "el/JEqY9HoE=\n"), th, false);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static InterfaceC0792 m1889(Object obj, InterfaceC0785 interfaceC0785, List list, int i) {
        C0632 c0632 = C0793.m2275().f2974;
        t0 t0Var = new t0(list);
        c0632.getClass();
        C0724 c0724 = new C0724();
        c0724.f2696.f2724 = -1;
        c0724.f2695 = interfaceC0785;
        c0724.f2694 = t0Var;
        C0735 c0735 = c0724.f2696;
        c0735.f2729 = list;
        c0735.f2728 = i;
        c0735.f2731 = interfaceC0785.getClass();
        c0724.f2696.f2730 = t0.class;
        return c0632.m2164(obj, c0724);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1890(Context context) {
        if (f395) {
            f395 = false;
            try {
                WebView webView = new WebView(context);
                C3468e0 c3468e0 = new C3468e0(null, new C3490p0());
                webView.setWebViewClient(c3468e0);
                W w = new W(new C3492q0());
                webView.setWebChromeClient(w);
                f390 = m1887(webView, c3468e0, new u0());
                f389 = m1887(webView, w, new v0());
            } catch (Throwable th) {
                AbstractC1071.m2435(f396, StringFog.decrypt("dtgBHVGpkWFWyRgbTe7Sb1zYUxtN55d7E8kfG0bnhno=\n", "M6pzciOJ8gk=\n"), th, false);
            }
        }
    }
}
