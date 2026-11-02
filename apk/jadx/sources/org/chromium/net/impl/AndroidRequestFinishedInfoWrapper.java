package org.chromium.net.impl;

import android.util.Log;
import java.util.Collection;
import org.chromium.net.CronetException;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
class AndroidRequestFinishedInfoWrapper extends RequestFinishedInfoImpl {
    private static final String TAG = RequestFinishedInfoImpl.class.getSimpleName();
    private static boolean sListenerSupportLimitedLogged;

    private AndroidRequestFinishedInfoWrapper(String str, Collection<Object> collection, RequestFinishedInfo.Metrics metrics, int i, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        super(str, collection, metrics, i, urlResponseInfo, cronetException);
    }

    static void reportFinished(AndroidHttpEngineWrapper androidHttpEngineWrapper, String str, Collection<Object> collection, VersionSafeCallbacks.RequestFinishedInfoListener requestFinishedInfoListener, int i, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        androidHttpEngineWrapper.reportRequestFinished(new AndroidRequestFinishedInfoWrapper(str, collection, CronetMetrics.empty(), i, urlResponseInfo, cronetException), requestFinishedInfoListener);
    }

    @Override // org.chromium.net.impl.RequestFinishedInfoImpl, org.chromium.net.RequestFinishedInfo
    public RequestFinishedInfo.Metrics getMetrics() {
        if (!sListenerSupportLimitedLogged) {
            Log.i(TAG, "RequestFinishedInfo.getMetrics() is unsupported when HttpEngineNativeProvider is used. The Metrics object will return null values.");
            sListenerSupportLimitedLogged = true;
        }
        return super.getMetrics();
    }
}
