package com.tapjoy.internal;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import com.ironsource.G5;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class by implements bx {
    private final String a;
    private final URL b;

    public by(String str, URL url) {
        this.a = str;
        this.b = url;
    }

    @Override // com.tapjoy.internal.bx
    public final <Result> Result a(bu<Result> buVar) throws IOException {
        URI uri;
        URL url = new URL(this.b, buVar.c());
        String strB = buVar.b();
        if ("GET".equals(strB) || "DELETE".equals(strB)) {
            Map<String, Object> mapE = buVar.e();
            if (!mapE.isEmpty()) {
                url = new URL(url, url.getPath() + "?" + fm.a(mapE));
            }
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) fl.a(url);
        httpURLConnection.setRequestMethod(strB);
        httpURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, this.a);
        for (Map.Entry<String, Object> entry : buVar.a().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue().toString());
        }
        if (!"GET".equals(strB) && !"DELETE".equals(strB)) {
            if (!"POST".equals(strB) && !"PUT".equals(strB)) {
                throw new IllegalArgumentException("Unknown method: ".concat(String.valueOf(strB)));
            }
            String strD = buVar.d();
            if (strD == null) {
                fm.a(httpURLConnection, ShareTarget.ENCODING_TYPE_URL_ENCODED, fm.a(buVar.e()), Charset.forName("UTF-8"));
            } else {
                if (!G5.M.equals(strD)) {
                    throw new IllegalArgumentException("Unknown content type: ".concat(String.valueOf(strD)));
                }
                fm.a(httpURLConnection, "application/json; charset=utf-8", bb.a((Object) buVar.e()), Charset.forName("UTF-8"));
            }
        }
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode != 200 && responseCode != 201 && responseCode != 409) {
            throw new IOException("Unexpected status code: " + httpURLConnection.getResponseCode());
        }
        InputStream inputStream = httpURLConnection.getInputStream();
        try {
            try {
                uri = httpURLConnection.getURL().toURI();
            } finally {
                inputStream.close();
            }
        } catch (URISyntaxException unused) {
            uri = null;
        }
        return buVar.a(uri, inputStream);
    }
}
