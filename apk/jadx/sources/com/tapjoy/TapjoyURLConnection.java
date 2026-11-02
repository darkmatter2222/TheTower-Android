package com.tapjoy;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import com.tapjoy.internal.fl;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyURLConnection {
    public static final int TYPE_GET = 0;
    public static final int TYPE_POST = 1;

    public String getContentLength(String str) {
        String headerField;
        try {
            String strReplaceAll = str.replaceAll(" ", "%20");
            TapjoyLog.d("TapjoyURLConnection", "requestURL: ".concat(String.valueOf(strReplaceAll)));
            HttpURLConnection httpURLConnection = (HttpURLConnection) fl.a(new URL(strReplaceAll));
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(30000);
            headerField = httpURLConnection.getHeaderField("content-length");
        } catch (Exception e) {
            TapjoyLog.e("TapjoyURLConnection", "Exception: " + e.toString());
            headerField = null;
        }
        TapjoyLog.d("TapjoyURLConnection", "content-length: ".concat(String.valueOf(headerField)));
        return headerField;
    }

    public TapjoyHttpURLResponse getRedirectFromURL(String str) {
        return getResponseFromURL(str, "", 0, true, null, null, null);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str) {
        return getResponseFromURL(str, "", 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str, String str2) {
        return getResponseFromURL(str, str2, 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str, String str2, int i) {
        return getResponseFromURL(str, str2, i, false, null, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x005d A[Catch: Exception -> 0x0154, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x006b A[Catch: Exception -> 0x0154, LOOP:0: B:13:0x0065->B:15:0x006b, LOOP_END, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0084 A[Catch: Exception -> 0x0154, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x008b A[Catch: Exception -> 0x0154, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00e2 A[Catch: Exception -> 0x0154, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00f2 A[Catch: Exception -> 0x0154, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x00fd A[Catch: Exception -> 0x0154, LOOP:1: B:26:0x00f7->B:28:0x00fd, LOOP_END, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x011e A[Catch: Exception -> 0x0154, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x014e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0150 A[Catch: Exception -> 0x0154, TRY_LEAVE, TryCatch #3 {Exception -> 0x0154, blocks: (B:9:0x004e, B:10:0x0051, B:12:0x005d, B:13:0x0065, B:15:0x006b, B:18:0x0084, B:20:0x008b, B:21:0x00c5, B:23:0x00e2, B:25:0x00f2, B:26:0x00f7, B:28:0x00fd, B:29:0x0112, B:30:0x0118, B:32:0x011e, B:33:0x0126, B:40:0x0150, B:38:0x013a, B:35:0x012e), top: B:70:0x004e, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0112 A[EDGE_INSN: B:73:0x0112->B:29:0x0112 BREAK  A[LOOP:1: B:26:0x00f7->B:28:0x00fd], SYNTHETIC] */
    public TapjoyHttpURLResponse getResponseFromURL(String str, String str2, int i, boolean z, Map<String, String> map, String str3, String str4) {
        BufferedReader bufferedReader;
        String headerField;
        StringBuilder sb;
        String line;
        TapjoyHttpURLResponse tapjoyHttpURLResponse = new TapjoyHttpURLResponse();
        HttpURLConnection httpURLConnection = null;
        try {
            String str5 = str + str2;
            TapjoyLog.i("TapjoyURLConnection", "http " + (i == 0 ? "get" : "post") + ": " + str5);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) fl.a(new URL(str5));
            if (z) {
                try {
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setConnectTimeout(15000);
                    httpURLConnection2.setReadTimeout(30000);
                    if (map != null) {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    if (i == 1) {
                        httpURLConnection2.setRequestMethod("POST");
                        if (str4 != null) {
                            TapjoyLog.i("TapjoyURLConnection", "Content-Type: ".concat(String.valueOf(str3)));
                            TapjoyLog.i("TapjoyURLConnection", "Content:");
                            TapjoyLog.i("TapjoyURLConnection", str4);
                            httpURLConnection2.setRequestProperty("Content-Type", str3);
                            httpURLConnection2.setRequestProperty(HttpHeaders.CONNECTION, TJAdUnitConstants.String.CLOSE);
                            httpURLConnection2.setDoOutput(true);
                            httpURLConnection2.setFixedLengthStreamingMode(str4.length());
                            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection2.getOutputStream());
                            outputStreamWriter.write(str4);
                            outputStreamWriter.close();
                        }
                    }
                    httpURLConnection2.connect();
                    tapjoyHttpURLResponse.statusCode = httpURLConnection2.getResponseCode();
                    tapjoyHttpURLResponse.headerFields = httpURLConnection2.getHeaderFields();
                    tapjoyHttpURLResponse.date = httpURLConnection2.getDate();
                    tapjoyHttpURLResponse.expires = httpURLConnection2.getExpiration();
                    bufferedReader = z ? null : new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                    if (!z) {
                        sb = new StringBuilder();
                        while (true) {
                            line = bufferedReader.readLine();
                            if (line != null) {
                                break;
                            }
                            sb.append(line + '\n');
                        }
                        tapjoyHttpURLResponse.response = sb.toString();
                    }
                    if (tapjoyHttpURLResponse.statusCode == 302) {
                        tapjoyHttpURLResponse.redirectURL = httpURLConnection2.getHeaderField(HttpHeaders.LOCATION);
                    }
                    headerField = httpURLConnection2.getHeaderField("content-length");
                    if (headerField != null) {
                        try {
                            tapjoyHttpURLResponse.contentLength = Integer.valueOf(headerField).intValue();
                        } catch (Exception e) {
                            TapjoyLog.e("TapjoyURLConnection", "Exception: " + e.toString());
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                    } else if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                } catch (Exception e2) {
                    httpURLConnection = httpURLConnection2;
                    e = e2;
                    TapjoyLog.e("TapjoyURLConnection", "Exception: " + e.toString());
                    tapjoyHttpURLResponse.statusCode = 0;
                    if (httpURLConnection != null) {
                        try {
                            if (tapjoyHttpURLResponse.response == null) {
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
                                StringBuilder sb2 = new StringBuilder();
                                while (true) {
                                    String line2 = bufferedReader2.readLine();
                                    if (line2 == null) {
                                        break;
                                    }
                                    sb2.append(line2 + '\n');
                                }
                                tapjoyHttpURLResponse.response = sb2.toString();
                            }
                        } catch (Exception e3) {
                            TapjoyLog.e("TapjoyURLConnection", "Exception trying to get error code/content: " + e3.toString());
                        }
                    }
                }
            } else {
                httpURLConnection2.setConnectTimeout(15000);
                httpURLConnection2.setReadTimeout(30000);
                if (map != null) {
                    while (r9.hasNext()) {
                        httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (i == 1) {
                    httpURLConnection2.setRequestMethod("POST");
                    if (str4 != null) {
                        TapjoyLog.i("TapjoyURLConnection", "Content-Type: ".concat(String.valueOf(str3)));
                        TapjoyLog.i("TapjoyURLConnection", "Content:");
                        TapjoyLog.i("TapjoyURLConnection", str4);
                        httpURLConnection2.setRequestProperty("Content-Type", str3);
                        httpURLConnection2.setRequestProperty(HttpHeaders.CONNECTION, TJAdUnitConstants.String.CLOSE);
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setFixedLengthStreamingMode(str4.length());
                        OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(httpURLConnection2.getOutputStream());
                        outputStreamWriter2.write(str4);
                        outputStreamWriter2.close();
                    }
                }
                httpURLConnection2.connect();
                tapjoyHttpURLResponse.statusCode = httpURLConnection2.getResponseCode();
                tapjoyHttpURLResponse.headerFields = httpURLConnection2.getHeaderFields();
                tapjoyHttpURLResponse.date = httpURLConnection2.getDate();
                tapjoyHttpURLResponse.expires = httpURLConnection2.getExpiration();
                if (z) {
                }
                if (!z) {
                    sb = new StringBuilder();
                    while (true) {
                        line = bufferedReader.readLine();
                        if (line != null) {
                            break;
                            break;
                        }
                        sb.append(line + '\n');
                    }
                    tapjoyHttpURLResponse.response = sb.toString();
                }
                if (tapjoyHttpURLResponse.statusCode == 302) {
                    tapjoyHttpURLResponse.redirectURL = httpURLConnection2.getHeaderField(HttpHeaders.LOCATION);
                }
                headerField = httpURLConnection2.getHeaderField("content-length");
                if (headerField != null) {
                    tapjoyHttpURLResponse.contentLength = Integer.valueOf(headerField).intValue();
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                } else if (bufferedReader != null) {
                    bufferedReader.close();
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        TapjoyLog.i("TapjoyURLConnection", "response status: " + tapjoyHttpURLResponse.statusCode);
        TapjoyLog.i("TapjoyURLConnection", "response size: " + tapjoyHttpURLResponse.contentLength);
        if (tapjoyHttpURLResponse.redirectURL != null && tapjoyHttpURLResponse.redirectURL.length() > 0) {
            TapjoyLog.i("TapjoyURLConnection", "redirectURL: " + tapjoyHttpURLResponse.redirectURL);
        }
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        return tapjoyHttpURLResponse;
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str, Map<String, String> map) {
        return getResponseFromURL(str, TapjoyUtil.convertURLParams(map, false), 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str, Map<String, String> map, int i) {
        return getResponseFromURL(str, TapjoyUtil.convertURLParams(map, false), i);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str, Map<String, String> map, Map<String, String> map2, String str2) {
        return getResponseFromURL(str, map != null ? TapjoyUtil.convertURLParams(map, false) : "", 1, false, map2, "application/json;charset=utf-8", str2);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String str, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        return getResponseFromURL(str, map != null ? TapjoyUtil.convertURLParams(map, false) : "", 1, false, map2, ShareTarget.ENCODING_TYPE_URL_ENCODED, TapjoyUtil.convertURLParams(map3, false));
    }
}
