package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class l2 implements k2 {
    private final com.applovin.impl.sdk.l a;
    private final com.applovin.impl.sdk.p b;

    public l2(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
    }

    @Override // com.applovin.impl.k2
    public InputStream a(String str, String str2, Map map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(((Integer) this.a.a(c5.d3)).intValue());
        httpURLConnection.setReadTimeout(((Integer) this.a.a(c5.e3)).intValue());
        httpURLConnection.setDefaultUseCaches(true);
        httpURLConnection.setUseCaches(true);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        if (StringUtils.isValidString(str2)) {
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + str2);
        }
        int responseCode = httpURLConnection.getResponseCode();
        this.a.E().a("loadResource", str, responseCode, httpURLConnection.getResponseMessage());
        if (s0.a(responseCode)) {
            return null;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("HttpUrlConnectionLoader", "Opened stream to resource " + str);
        }
        InputStream inputStream = httpURLConnection.getInputStream();
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", str);
        mapHashMap.putAll(map);
        CollectionUtils.putStringIfValid("source", "HttpUrlConnectionLoader", mapHashMap);
        this.a.g().d(h2.T, mapHashMap);
        return inputStream;
    }
}
