package org.chromium.net.impl;

import android.net.Network;
import android.net.http.HttpEngine;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandlerFactory;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.chromium.net.BidirectionalStream;
import org.chromium.net.ExperimentalBidirectionalStream;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
class AndroidHttpEngineWrapper extends CronetEngineBase {
    private static final String TAG = "HttpEngineWrapper";
    private static boolean sGlobalMetricsUnsupportedLogged;
    private static boolean sNetlogUnsupportedLogged;
    private final HttpEngine mBackend;
    private final Map<RequestFinishedInfo.Listener, VersionSafeCallbacks.RequestFinishedInfoListener> mFinishedListenerMap = Collections.synchronizedMap(new HashMap());

    public AndroidHttpEngineWrapper(HttpEngine httpEngine) {
        this.mBackend = httpEngine;
    }

    private Network getNetwork(long j) {
        if (j == -1) {
            return null;
        }
        return Network.fromNetworkHandle(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ URLConnection lambda$openConnection$0(URL url) throws IOException {
        return this.mBackend.openConnection(url);
    }

    static /* synthetic */ void lambda$reportRequestFinished$1(VersionSafeCallbacks.RequestFinishedInfoListener requestFinishedInfoListener, RequestFinishedInfo requestFinishedInfo) {
        try {
            requestFinishedInfoListener.onRequestFinished(requestFinishedInfo);
        } catch (Exception e) {
            Log.e(TAG, "Exception thrown from observation task", e);
        }
    }

    @Override // org.chromium.net.CronetEngine
    public void addRequestFinishedListener(RequestFinishedInfo.Listener listener) {
        this.mFinishedListenerMap.put(listener, new VersionSafeCallbacks.RequestFinishedInfoListener(listener));
    }

    @Override // org.chromium.net.CronetEngine
    public void bindToNetwork(long j) {
        this.mBackend.bindToNetwork(getNetwork(j));
    }

    @Override // org.chromium.net.impl.CronetEngineBase
    public ExperimentalBidirectionalStream createBidirectionalStream(String str, BidirectionalStream.Callback callback, Executor executor, String str2, List<Map.Entry<String, String>> list, int i, boolean z, Collection<Object> collection, boolean z2, int i2, boolean z3, int i3, long j) {
        AndroidBidirectionalStreamCallbackWrapper androidBidirectionalStreamCallbackWrapper = new AndroidBidirectionalStreamCallbackWrapper(callback);
        android.net.http.BidirectionalStream.Builder builderNewBidirectionalStreamBuilder = this.mBackend.newBidirectionalStreamBuilder(str, executor, androidBidirectionalStreamCallbackWrapper);
        builderNewBidirectionalStreamBuilder.setHttpMethod(str2);
        for (Map.Entry<String, String> entry : list) {
            builderNewBidirectionalStreamBuilder.addHeader(entry.getKey(), entry.getValue());
        }
        builderNewBidirectionalStreamBuilder.setPriority(i);
        builderNewBidirectionalStreamBuilder.setDelayRequestHeadersUntilFirstFlushEnabled(z);
        if (z2) {
            builderNewBidirectionalStreamBuilder.setTrafficStatsTag(i2);
        }
        if (z3) {
            builderNewBidirectionalStreamBuilder.setTrafficStatsUid(i3);
        }
        return AndroidBidirectionalStreamWrapper.createAndAddToCallback(builderNewBidirectionalStreamBuilder.build(), androidBidirectionalStreamCallbackWrapper, this, str, collection);
    }

    @Override // org.chromium.net.impl.CronetEngineBase
    public ExperimentalUrlRequest createRequest(String str, UrlRequest.Callback callback, Executor executor, int i, Collection<Object> collection, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, RequestFinishedInfo.Listener listener, int i4, long j, String str2, ArrayList<Map.Entry<String, String>> arrayList, UploadDataProvider uploadDataProvider, Executor executor2, byte[] bArr, ByteBuffer byteBuffer, String str3) {
        AndroidUrlRequestCallbackWrapper androidUrlRequestCallbackWrapper = new AndroidUrlRequestCallbackWrapper(callback);
        android.net.http.UrlRequest.Builder builderNewUrlRequestBuilder = this.mBackend.newUrlRequestBuilder(str, executor, androidUrlRequestCallbackWrapper);
        builderNewUrlRequestBuilder.setPriority(i);
        if (z) {
            builderNewUrlRequestBuilder.setCacheDisabled(z);
        }
        if (z3) {
            builderNewUrlRequestBuilder.setDirectExecutorAllowed(z3);
        }
        if (z4) {
            builderNewUrlRequestBuilder.setTrafficStatsTag(i2);
        }
        if (z5) {
            builderNewUrlRequestBuilder.setTrafficStatsTag(i3);
        }
        builderNewUrlRequestBuilder.bindToNetwork(getNetwork(j));
        builderNewUrlRequestBuilder.setHttpMethod(str2);
        for (Map.Entry<String, String> entry : arrayList) {
            builderNewUrlRequestBuilder.addHeader(entry.getKey(), entry.getValue());
        }
        if (uploadDataProvider != null) {
            builderNewUrlRequestBuilder.setUploadDataProvider(new AndroidUploadDataProviderWrapper(uploadDataProvider), executor2);
        }
        return AndroidUrlRequestWrapper.createAndAddToCallback(builderNewUrlRequestBuilder.build(), androidUrlRequestCallbackWrapper, this, str, collection, listener);
    }

    @Override // org.chromium.net.CronetEngine
    public URLStreamHandlerFactory createURLStreamHandlerFactory() {
        return this.mBackend.createUrlStreamHandlerFactory();
    }

    @Override // org.chromium.net.CronetEngine
    public byte[] getGlobalMetricsDeltas() {
        if (!sGlobalMetricsUnsupportedLogged) {
            Log.i(TAG, "GlobalMetricsDelta is unsupported when HttpEngineNativeProvider is used. An empty protobuf is returned.");
            sGlobalMetricsUnsupportedLogged = true;
        }
        return new byte[0];
    }

    @Override // org.chromium.net.CronetEngine
    public String getVersionString() {
        return HttpEngine.getVersionString();
    }

    @Override // org.chromium.net.impl.CronetEngineBase, org.chromium.net.ExperimentalCronetEngine, org.chromium.net.CronetEngine
    public ExperimentalBidirectionalStream.Builder newBidirectionalStreamBuilder(String str, BidirectionalStream.Callback callback, Executor executor) {
        return new BidirectionalStreamBuilderImpl(str, callback, executor, this);
    }

    @Override // org.chromium.net.impl.CronetEngineBase, org.chromium.net.ExperimentalCronetEngine, org.chromium.net.CronetEngine
    public /* bridge */ /* synthetic */ UrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor) {
        return super.newUrlRequestBuilder(str, callback, executor);
    }

    @Override // org.chromium.net.CronetEngine
    public URLConnection openConnection(final URL url) throws IOException {
        return (URLConnection) CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda1
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$openConnection$0(url);
            }
        }, IOException.class);
    }

    @Override // org.chromium.net.ExperimentalCronetEngine
    public URLConnection openConnection(URL url, Proxy proxy) throws IOException {
        if (proxy.type() != Proxy.Type.DIRECT) {
            throw new UnsupportedOperationException();
        }
        String protocol = url.getProtocol();
        if (ProxyConfig.MATCH_HTTP.equals(protocol) || "https".equals(protocol)) {
            return openConnection(url);
        }
        throw new UnsupportedOperationException("Unexpected protocol:" + protocol);
    }

    @Override // org.chromium.net.CronetEngine
    public void removeRequestFinishedListener(RequestFinishedInfo.Listener listener) {
        this.mFinishedListenerMap.remove(listener);
    }

    void reportRequestFinished(final RequestFinishedInfo requestFinishedInfo, VersionSafeCallbacks.RequestFinishedInfoListener requestFinishedInfoListener) {
        ArrayList<VersionSafeCallbacks.RequestFinishedInfoListener> arrayList = new ArrayList();
        synchronized (this.mFinishedListenerMap) {
            arrayList.addAll(this.mFinishedListenerMap.values());
        }
        if (requestFinishedInfoListener != null) {
            arrayList.add(requestFinishedInfoListener);
        }
        for (final VersionSafeCallbacks.RequestFinishedInfoListener requestFinishedInfoListener2 : arrayList) {
            try {
                requestFinishedInfoListener2.getExecutor().execute(new Runnable() { // from class: org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidHttpEngineWrapper.lambda$reportRequestFinished$1(requestFinishedInfoListener2, requestFinishedInfo);
                    }
                });
            } catch (RejectedExecutionException e) {
                Log.e(TAG, "Exception posting task to executor", e);
            }
        }
    }

    @Override // org.chromium.net.CronetEngine
    public void shutdown() {
        this.mBackend.shutdown();
    }

    @Override // org.chromium.net.CronetEngine
    public void startNetLogToFile(String str, boolean z) {
        if (sNetlogUnsupportedLogged) {
            return;
        }
        Log.i(TAG, "Netlog is unsupported when HttpEngineNativeProvider is used.");
        sNetlogUnsupportedLogged = true;
    }

    @Override // org.chromium.net.CronetEngine
    public void stopNetLog() {
    }
}
