package com.iab.omid.library.applovin.webviewclient;

import android.net.Uri;
import android.webkit.WebView;
import com.iab.omid.library.applovin.attestation.c;
import com.iab.omid.library.applovin.internal.g;
import com.iab.omid.library.applovin.internal.j;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static void a(WebView webView) {
        if (c.a(g.b().a()).b()) {
            webView.setWebViewClient(new b(webView.getWebViewClient()));
        }
    }

    public static boolean a(String str) {
        if (str != null && str.startsWith("omid-native")) {
            try {
                Uri uri = Uri.parse(str);
                if ("omid-native".equals(uri.getScheme())) {
                    j.b(uri);
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
