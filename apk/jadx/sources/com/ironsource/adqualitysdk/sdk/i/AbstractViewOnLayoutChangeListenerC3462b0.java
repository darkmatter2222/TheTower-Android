package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractViewOnLayoutChangeListenerC3462b0 extends AbstractC0890 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f246 = StringFog.decrypt("HG9o8J5KgicvQmvIk0OQFA==\n", "SwoKpvcv9WY=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public C3480k0 f248;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public C3486n0 f250;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f251;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f252;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public String f253;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public List f254;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final WeakHashMap f249 = new WeakHashMap();

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final ArrayList f247 = new ArrayList();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1861(AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0, String str) {
        abstractViewOnLayoutChangeListenerC3462b0.getClass();
        try {
            String strDecode = URLDecoder.decode(str, StringFog.decrypt("ztrGqRg=\n", "m46AhCABQh0=\n"));
            if (!TextUtils.isEmpty(strDecode)) {
                return new JSONObject(strDecode);
            }
        } catch (Exception e) {
            String str2 = f246;
            AbstractC0250.m1999(str2, str2, StringFog.decrypt("4HmP1XY9bcHRf5TUYz1uxdFq\n", "pQv9ugQdCqQ=\n"), e, null, false);
        }
        return new JSONObject();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            if (view instanceof WebView) {
                WebView webView = (WebView) view;
                if (this.f249.containsKey(webView)) {
                    m1862(webView);
                }
            }
        } catch (Throwable th) {
            AbstractC1071.m2435(f246, StringFog.decrypt("zjN+g9xi2aqrLmKgzzvfsf8CZI3AJdU=\n", "i0EM7K5CsMQ=\n"), th, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0890, com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﻛ */
    public final void mo1828(JSONObject jSONObject, View view, Object obj) {
        jSONObject.remove(AbstractC0115.f626);
        super.mo1828(jSONObject, (WebView) view, obj);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1862(WebView webView) {
        C3486n0 c3486n0 = (C3486n0) this.f249.get(webView);
        if (this.f252 && c3486n0.f365.f266) {
            if (!(x0.m1884(webView) instanceof C3468e0)) {
                c3486n0.m1869();
            }
            C3480k0 c3480k0 = this.f248;
            c3480k0.getClass();
            try {
                AbstractC0340.m2054(new C3478j0(c3480k0, webView));
            } catch (Exception e) {
                AbstractC0250.m1990(C3480k0.f285, StringFog.decrypt("w89ntPvUhDXs2Hav4JqKe+zONa/m1Jo+5Ot8vv7OzQ==\n", "hr0V24n07Vs=\n") + e.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public abstract Object mo1863(WebView webView);

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0890
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1809(Object obj) {
        return this.f253;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1864(WebView webView) {
        if (webView == null || this.f249.containsKey(webView)) {
            return;
        }
        String strDecrypt = StringFog.decrypt("yf+s8ON8j+aH\n", "qJvPnIEXtck=\n");
        WeakHashMap weakHashMap = C3486n0.f363;
        C3486n0 c3486n0 = (C3486n0) weakHashMap.get(webView);
        if (c3486n0 == null) {
            c3486n0 = new C3486n0(webView, strDecrypt);
            weakHashMap.put(webView, c3486n0);
        }
        if (this.f250 == null) {
            this.f250 = c3486n0;
        }
        this.f249.put(webView, c3486n0);
        C3460a0 c3460a0 = new C3460a0(this);
        this.f247.add(c3460a0);
        c3486n0.f364.add(c3460a0);
        m1862(webView);
        webView.addOnLayoutChangeListener(this);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0890, com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final void mo1830(JSONObject jSONObject, WebView webView, Object obj) {
        if (webView != null) {
            try {
                jSONObject.put(AbstractC0115.f583, webView.getWindowToken() != null);
            } catch (JSONException unused) {
            }
        }
        super.mo1830(jSONObject, webView, obj);
    }
}
