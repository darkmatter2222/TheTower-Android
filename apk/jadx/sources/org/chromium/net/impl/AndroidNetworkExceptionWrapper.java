package org.chromium.net.impl;

import android.net.http.QuicException;
import org.chromium.net.NetworkException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidNetworkExceptionWrapper extends NetworkException {
    private final android.net.http.NetworkException mBackend;

    AndroidNetworkExceptionWrapper(android.net.http.NetworkException networkException) {
        this(networkException, false);
    }

    AndroidNetworkExceptionWrapper(android.net.http.NetworkException networkException, boolean z) {
        super(networkException.getMessage(), networkException);
        this.mBackend = networkException;
        if (!z && (networkException instanceof QuicException)) {
            throw new IllegalArgumentException("Translating QuicException as NetworkException results in loss of information. Make sure you handle QuicException first. See the stacktrace for where the translation is being performed, and the cause for the exception being translated.", networkException);
        }
    }

    @Override // org.chromium.net.NetworkException
    public int getCronetInternalErrorCode() {
        return -1;
    }

    @Override // org.chromium.net.NetworkException
    public int getErrorCode() {
        return this.mBackend.getErrorCode();
    }

    @Override // org.chromium.net.NetworkException
    public boolean immediatelyRetryable() {
        return this.mBackend.isImmediatelyRetryable();
    }
}
