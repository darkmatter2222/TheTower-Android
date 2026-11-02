package org.chromium.net.impl;

import android.net.http.HeaderBlock;
import java.util.List;
import java.util.Map;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
class AndroidHeaderBlockWrapper extends UrlResponseInfo.HeaderBlock {
    private final HeaderBlock mBackend;

    AndroidHeaderBlockWrapper(HeaderBlock headerBlock) {
        this.mBackend = headerBlock;
    }

    @Override // org.chromium.net.UrlResponseInfo.HeaderBlock
    public List<Map.Entry<String, String>> getAsList() {
        return this.mBackend.getAsList();
    }

    @Override // org.chromium.net.UrlResponseInfo.HeaderBlock
    public Map<String, List<String>> getAsMap() {
        return this.mBackend.getAsMap();
    }
}
