package org.chromium.net.impl;

import android.net.http.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUrlRequestStatusListenerWrapper implements UrlRequest.StatusListener {
    private final org.chromium.net.UrlRequest.StatusListener mBackend;

    public AndroidUrlRequestStatusListenerWrapper(org.chromium.net.UrlRequest.StatusListener statusListener) {
        this.mBackend = statusListener;
    }

    @Override // android.net.http.UrlRequest.StatusListener
    public void onStatus(int i) {
        this.mBackend.onStatus(i);
    }
}
