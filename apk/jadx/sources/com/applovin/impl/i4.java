package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.shadow.okhttp3.OkHttpClient;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.ResponseBody;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class i4 implements k2 {
    private final com.applovin.impl.sdk.l a;
    private final com.applovin.impl.sdk.p b;
    private final AtomicReference c = new AtomicReference();

    public i4(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
    }

    private OkHttpClient a() {
        Object objBuild = this.c.get();
        if (objBuild == null) {
            synchronized (this.c) {
                objBuild = this.c.get();
                if (objBuild == null) {
                    OkHttpClient.Builder builder = new OkHttpClient.Builder();
                    long jIntValue = ((Integer) this.a.a(c5.d3)).intValue();
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    objBuild = builder.connectTimeout(jIntValue, timeUnit).readTimeout(((Integer) this.a.a(c5.e3)).intValue(), timeUnit).followRedirects(true).followSslRedirects(true).build();
                    if (objBuild == null) {
                        objBuild = this.c;
                    }
                    this.c.set(objBuild);
                }
            }
        }
        if (objBuild == this.c) {
            objBuild = null;
        }
        return (OkHttpClient) objBuild;
    }

    @Override // com.applovin.impl.k2
    public InputStream a(String str, String str2, Map map) throws IOException {
        Request.Builder builder = new Request.Builder().url(str).get();
        if (StringUtils.isValidString(str2)) {
            builder.addHeader(HttpHeaders.RANGE, "bytes=" + str2);
        }
        Response responseExecute = a().newCall(builder.build()).execute();
        int iCode = responseExecute.code();
        this.a.E().a("loadResource", str, iCode, responseExecute.message());
        if (s0.a(iCode)) {
            return null;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("OkHttpLoader", "Opened stream to resource " + str);
        }
        ResponseBody responseBodyBody = responseExecute.body();
        if (responseBodyBody == null) {
            return null;
        }
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", str);
        mapHashMap.putAll(map);
        CollectionUtils.putStringIfValid("source", "OkHttpLoader", mapHashMap);
        CollectionUtils.putStringIfValid("details", responseExecute.protocol().name(), mapHashMap);
        this.a.g().d(h2.T, mapHashMap);
        return responseBodyBody.byteStream();
    }
}
