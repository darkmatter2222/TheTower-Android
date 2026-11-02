package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.google.common.net.HttpHeaders;
import com.ironsource.C3510b4;
import com.ironsource.G5;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AFd1fSDK {
    private final int AFAdRevenueData;

    public AFd1fSDK(int i) {
        this.AFAdRevenueData = i;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    /* JADX WARN: Code duplicated, block: B:35:0x006e  */
    /* JADX WARN: Code duplicated, block: B:47:? A[SYNTHETIC] */
    private static String getCurrencyIso4217Code(HttpURLConnection httpURLConnection) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        InputStream errorStream;
        InputStreamReader inputStreamReader = null;
        try {
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (Exception e) {
                errorStream = httpURLConnection.getErrorStream();
                AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, e.getMessage() != null ? e.getMessage() : "", e, false, false, false, false);
            }
            if (errorStream == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            InputStreamReader inputStreamReader2 = new InputStreamReader(errorStream, Charset.defaultCharset());
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                boolean z = true;
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            String string = sb.toString();
                            inputStreamReader2.close();
                            bufferedReader2.close();
                            return string;
                        }
                        if (!z) {
                            sb.append('\n');
                        }
                        sb.append(line);
                        z = false;
                    } catch (Throwable th2) {
                        bufferedReader = bufferedReader2;
                        th = th2;
                        inputStreamReader = inputStreamReader2;
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        if (bufferedReader != null) {
                            throw th;
                        }
                        bufferedReader.close();
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
        if (inputStreamReader != null) {
            inputStreamReader.close();
        }
        if (bufferedReader != null) {
            throw th;
        }
        bufferedReader.close();
        throw th;
    }

    public final AFe1xSDK<String> AFAdRevenueData(AFd1dSDK aFd1dSDK) throws IOException {
        Throwable th;
        HttpURLConnection httpURLConnection;
        BufferedOutputStream bufferedOutputStream;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            byte[] mediationNetwork = aFd1dSDK.getMediationNetwork();
            StringBuilder sb = new StringBuilder(new StringBuilder().append(aFd1dSDK.getMonetizationNetwork).append(":").append(aFd1dSDK.getRevenue).toString());
            byte[] mediationNetwork2 = aFd1dSDK.getMediationNetwork();
            if (aFd1dSDK.AFAdRevenueData() && mediationNetwork2 != null) {
                try {
                    sb.append("\n payload: ").append(aFd1dSDK.getRevenue() ? "<encrypted>" : new String(mediationNetwork2, Charset.defaultCharset()));
                } catch (Throwable th2) {
                    httpURLConnection = null;
                    th = th2;
                    try {
                        AFd1aSDK aFd1aSDK = new AFd1aSDK(System.currentTimeMillis() - jCurrentTimeMillis);
                        AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, new StringBuilder(C3510b4.j.d).append(aFd1dSDK.hashCode()).append("] ").append(new StringBuilder("error: ").append(th).append("\n took ").append(aFd1aSDK.getRevenue).append("ms").toString()).toString(), th, false, false, false);
                        throw new HttpException(th, aFd1aSDK);
                    } catch (Throwable th3) {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th3;
                    }
                }
            }
            for (Map.Entry<String, String> entry : aFd1dSDK.AFAdRevenueData.entrySet()) {
                sb.append("\n ").append(entry.getKey()).append(": ").append(entry.getValue());
            }
            AFLogger.INSTANCE.d(AFg1cSDK.HTTP_CLIENT, new StringBuilder(C3510b4.j.d).append(aFd1dSDK.hashCode()).append("] ").append((Object) sb).toString());
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(aFd1dSDK.getRevenue).openConnection();
            try {
                httpURLConnection2.setRequestMethod(aFd1dSDK.getMonetizationNetwork);
                if (aFd1dSDK.getCurrencyIso4217Code()) {
                    httpURLConnection2.setUseCaches(false);
                }
                if (!aFd1dSDK.component2()) {
                    httpURLConnection2.setInstanceFollowRedirects(false);
                }
                try {
                    int i = this.AFAdRevenueData;
                    int i2 = aFd1dSDK.component3;
                    if (i2 != -1) {
                        i = i2;
                    }
                    httpURLConnection2.setConnectTimeout(i);
                    httpURLConnection2.setReadTimeout(i);
                    httpURLConnection2.addRequestProperty("Content-Type", aFd1dSDK.getRevenue() ? "application/octet-stream" : G5.M);
                    for (Map.Entry<String, String> entry2 : aFd1dSDK.AFAdRevenueData.entrySet()) {
                        httpURLConnection2.setRequestProperty(entry2.getKey(), entry2.getValue());
                    }
                    if (mediationNetwork != null) {
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setRequestProperty(HttpHeaders.CONTENT_LENGTH, new StringBuilder().append(mediationNetwork.length).toString());
                        try {
                            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                            try {
                                bufferedOutputStream2.write(mediationNetwork);
                                bufferedOutputStream2.close();
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedOutputStream = bufferedOutputStream2;
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            bufferedOutputStream = null;
                        }
                    }
                    boolean z = httpURLConnection2.getResponseCode() / 100 == 2;
                    String currencyIso4217Code = aFd1dSDK.getMonetizationNetwork() ? getCurrencyIso4217Code(httpURLConnection2) : "";
                    AFd1aSDK aFd1aSDK2 = new AFd1aSDK(System.currentTimeMillis() - jCurrentTimeMillis);
                    AFLogger.INSTANCE.d(AFg1cSDK.HTTP_CLIENT, new StringBuilder(C3510b4.j.d).append(aFd1dSDK.hashCode()).append("] ").append(new StringBuilder("response code:").append(httpURLConnection2.getResponseCode()).append(" ").append(httpURLConnection2.getResponseMessage()).append("\n body:").append(currencyIso4217Code).append("\n took ").append(aFd1aSDK2.getRevenue).append("ms").toString()).toString());
                    HashMap map = new HashMap(httpURLConnection2.getHeaderFields());
                    map.remove(null);
                    AFe1xSDK<String> aFe1xSDK = new AFe1xSDK<>(currencyIso4217Code, httpURLConnection2.getResponseCode(), z, map, aFd1aSDK2);
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return aFe1xSDK;
                } catch (Throwable th6) {
                    th = th6;
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    AFd1aSDK aFd1aSDK3 = new AFd1aSDK(System.currentTimeMillis() - jCurrentTimeMillis);
                    AFLogger.INSTANCE.e(AFg1cSDK.HTTP_CLIENT, new StringBuilder(C3510b4.j.d).append(aFd1dSDK.hashCode()).append("] ").append(new StringBuilder("error: ").append(th).append("\n took ").append(aFd1aSDK3.getRevenue).append("ms").toString()).toString(), th, false, false, false);
                    throw new HttpException(th, aFd1aSDK3);
                }
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Throwable th8) {
            th = th8;
            httpURLConnection = null;
        }
    }
}
