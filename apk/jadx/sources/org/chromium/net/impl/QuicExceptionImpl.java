package org.chromium.net.impl;

import org.chromium.net.QuicException;

/* JADX INFO: loaded from: classes5.dex */
public class QuicExceptionImpl extends QuicException {
    private final NetworkExceptionImpl mNetworkException;
    private final int mQuicDetailedErrorCode;
    private final int mSource;

    @Deprecated
    public QuicExceptionImpl(String str, int i, int i2, int i3) {
        this(str, i, i2, i3, 0);
    }

    public QuicExceptionImpl(String str, int i, int i2, int i3, int i4) {
        super(str, null);
        this.mNetworkException = new NetworkExceptionImpl(str, i, i2);
        this.mQuicDetailedErrorCode = i3;
        this.mSource = i4;
    }

    @Override // org.chromium.net.QuicException
    public int getConnectionCloseSource() {
        return this.mSource;
    }

    @Override // org.chromium.net.NetworkException
    public int getCronetInternalErrorCode() {
        return this.mNetworkException.getCronetInternalErrorCode();
    }

    @Override // org.chromium.net.NetworkException
    public int getErrorCode() {
        return this.mNetworkException.getErrorCode();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(this.mNetworkException.getMessage());
        sb.append(", QuicDetailedErrorCode=").append(this.mQuicDetailedErrorCode);
        sb.append(", Source=").append(this.mSource);
        return sb.toString();
    }

    @Override // org.chromium.net.QuicException
    public int getQuicDetailedErrorCode() {
        return this.mQuicDetailedErrorCode;
    }

    @Override // org.chromium.net.NetworkException
    public boolean immediatelyRetryable() {
        return this.mNetworkException.immediatelyRetryable();
    }
}
