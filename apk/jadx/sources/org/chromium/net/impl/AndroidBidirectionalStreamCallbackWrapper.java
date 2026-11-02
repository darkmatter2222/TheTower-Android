package org.chromium.net.impl;

import android.net.http.BidirectionalStream;
import android.net.http.HeaderBlock;
import android.net.http.HttpException;
import android.net.http.UrlResponseInfo;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.CronetException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidBidirectionalStreamCallbackWrapper implements BidirectionalStream.Callback {
    private final org.chromium.net.BidirectionalStream.Callback mBackend;
    private AndroidBidirectionalStreamWrapper mWrappedStream;

    public AndroidBidirectionalStreamCallbackWrapper(org.chromium.net.BidirectionalStream.Callback callback) {
        this.mBackend = (org.chromium.net.BidirectionalStream.Callback) Objects.requireNonNull(callback, "Callback is required.");
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onCanceled(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForBidirectionalStream = AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo);
        try {
            this.mBackend.onCanceled(this.mWrappedStream, androidUrlResponseInfoWrapperCreateForBidirectionalStream);
        } finally {
            this.mWrappedStream.maybeReportMetrics(2, androidUrlResponseInfoWrapperCreateForBidirectionalStream, null);
        }
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onFailed(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, HttpException httpException) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForBidirectionalStream = AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo);
        CronetException cronetExceptionTranslateCheckedAndroidCronetException = CronetExceptionTranslationUtils.translateCheckedAndroidCronetException(httpException);
        try {
            this.mBackend.onFailed(this.mWrappedStream, androidUrlResponseInfoWrapperCreateForBidirectionalStream, cronetExceptionTranslateCheckedAndroidCronetException);
        } finally {
            this.mWrappedStream.maybeReportMetrics(1, androidUrlResponseInfoWrapperCreateForBidirectionalStream, cronetExceptionTranslateCheckedAndroidCronetException);
        }
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onReadCompleted(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer, boolean z) {
        this.mBackend.onReadCompleted(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo), byteBuffer, z);
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onResponseHeadersReceived(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo) {
        this.mBackend.onResponseHeadersReceived(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo));
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onResponseTrailersReceived(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, HeaderBlock headerBlock) {
        this.mBackend.onResponseTrailersReceived(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo), new AndroidHeaderBlockWrapper(headerBlock));
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onStreamReady(BidirectionalStream bidirectionalStream) {
        this.mBackend.onStreamReady(this.mWrappedStream);
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onSucceeded(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForBidirectionalStream = AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo);
        try {
            this.mBackend.onSucceeded(this.mWrappedStream, androidUrlResponseInfoWrapperCreateForBidirectionalStream);
        } finally {
            this.mWrappedStream.maybeReportMetrics(0, androidUrlResponseInfoWrapperCreateForBidirectionalStream, null);
        }
    }

    @Override // android.net.http.BidirectionalStream.Callback
    public void onWriteCompleted(BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer, boolean z) {
        this.mBackend.onWriteCompleted(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo), byteBuffer, z);
    }

    void setStream(AndroidBidirectionalStreamWrapper androidBidirectionalStreamWrapper) {
        this.mWrappedStream = androidBidirectionalStreamWrapper;
    }
}
