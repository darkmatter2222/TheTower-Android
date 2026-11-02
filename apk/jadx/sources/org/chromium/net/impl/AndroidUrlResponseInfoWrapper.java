package org.chromium.net.impl;

import java.util.List;
import java.util.Map;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUrlResponseInfoWrapper extends UrlResponseInfo {
    private final android.net.http.UrlResponseInfo mBackend;
    private final String mProxyServerCompat;

    private AndroidUrlResponseInfoWrapper(android.net.http.UrlResponseInfo urlResponseInfo, String str) {
        this.mBackend = urlResponseInfo;
        this.mProxyServerCompat = str;
    }

    public static AndroidUrlResponseInfoWrapper createForBidirectionalStream(android.net.http.UrlResponseInfo urlResponseInfo) {
        if (isResponseInfoNull(urlResponseInfo)) {
            return null;
        }
        return new AndroidUrlResponseInfoWrapper(urlResponseInfo, null);
    }

    public static AndroidUrlResponseInfoWrapper createForUrlRequest(android.net.http.UrlResponseInfo urlResponseInfo) {
        if (isResponseInfoNull(urlResponseInfo)) {
            return null;
        }
        return new AndroidUrlResponseInfoWrapper(urlResponseInfo, ":0");
    }

    private static boolean isResponseInfoNull(android.net.http.UrlResponseInfo urlResponseInfo) {
        if (urlResponseInfo == null) {
            return true;
        }
        try {
            urlResponseInfo.getUrl();
            return false;
        } catch (NullPointerException unused) {
            return true;
        }
    }

    @Override // org.chromium.net.UrlResponseInfo
    public Map<String, List<String>> getAllHeaders() {
        return this.mBackend.getHeaders().getAsMap();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public List<Map.Entry<String, String>> getAllHeadersAsList() {
        return this.mBackend.getHeaders().getAsList();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public int getHttpStatusCode() {
        return this.mBackend.getHttpStatusCode();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public String getHttpStatusText() {
        return this.mBackend.getHttpStatusText();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public String getNegotiatedProtocol() {
        return this.mBackend.getNegotiatedProtocol();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public String getProxyServer() {
        return this.mProxyServerCompat;
    }

    @Override // org.chromium.net.UrlResponseInfo
    public long getReceivedByteCount() {
        return this.mBackend.getReceivedByteCount();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public String getUrl() {
        return this.mBackend.getUrl();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public List<String> getUrlChain() {
        return this.mBackend.getUrlChain();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public boolean wasCached() {
        return this.mBackend.wasCached();
    }
}
