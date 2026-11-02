package org.chromium.net.impl;

import android.net.http.HttpException;
import android.net.http.UrlRequest;
import android.net.http.UrlResponseInfo;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.CronetException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUrlRequestCallbackWrapper implements UrlRequest.Callback {
    private final org.chromium.net.UrlRequest.Callback mBackend;
    private AndroidUrlRequestWrapper mWrappedRequest;

    public AndroidUrlRequestCallbackWrapper(org.chromium.net.UrlRequest.Callback callback) {
        this.mBackend = (org.chromium.net.UrlRequest.Callback) Objects.requireNonNull(callback, "Callback is required.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$onReadCompleted$2(UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) throws Exception {
        this.mBackend.onReadCompleted(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo), byteBuffer);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$onRedirectReceived$0(UrlResponseInfo urlResponseInfo, String str) throws Exception {
        this.mBackend.onRedirectReceived(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo), str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$onResponseStarted$1(UrlResponseInfo urlResponseInfo) throws Exception {
        this.mBackend.onResponseStarted(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo));
        return null;
    }

    @Override // android.net.http.UrlRequest.Callback
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo);
        try {
            this.mBackend.onCanceled(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(2, androidUrlResponseInfoWrapperCreateForUrlRequest, null);
        }
    }

    @Override // android.net.http.UrlRequest.Callback
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, HttpException httpException) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo);
        CronetException cronetExceptionTranslateCheckedAndroidCronetException = CronetExceptionTranslationUtils.translateCheckedAndroidCronetException(httpException);
        try {
            this.mBackend.onFailed(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest, cronetExceptionTranslateCheckedAndroidCronetException);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(1, androidUrlResponseInfoWrapperCreateForUrlRequest, cronetExceptionTranslateCheckedAndroidCronetException);
        }
    }

    @Override // android.net.http.UrlRequest.Callback
    public void onReadCompleted(UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo, final ByteBuffer byteBuffer) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda1
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onReadCompleted$2(urlResponseInfo, byteBuffer);
            }
        }, Exception.class);
    }

    @Override // android.net.http.UrlRequest.Callback
    public void onRedirectReceived(UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo, final String str) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda2
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onRedirectReceived$0(urlResponseInfo, str);
            }
        }, Exception.class);
    }

    @Override // android.net.http.UrlRequest.Callback
    public void onResponseStarted(UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda0
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onResponseStarted$1(urlResponseInfo);
            }
        }, Exception.class);
    }

    @Override // android.net.http.UrlRequest.Callback
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo);
        try {
            this.mBackend.onSucceeded(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(0, androidUrlResponseInfoWrapperCreateForUrlRequest, null);
        }
    }

    void setRequest(AndroidUrlRequestWrapper androidUrlRequestWrapper) {
        this.mWrappedRequest = androidUrlRequestWrapper;
    }
}
