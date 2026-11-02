package org.chromium.net.impl;

import android.net.http.CallbackException;
import android.net.http.HttpException;
import android.net.http.InlineExecutionProhibitedException;
import android.net.http.NetworkException;
import android.net.http.QuicException;
import org.chromium.net.CronetException;

/* JADX INFO: loaded from: classes5.dex */
class CronetExceptionTranslationUtils {

    interface CronetWork<T, E extends Exception> {
        T run() throws Exception;
    }

    private CronetExceptionTranslationUtils() {
    }

    public static <T, E extends Exception> T executeTranslatingCronetExceptions(CronetWork<T, E> cronetWork, Class<E> cls) throws Exception {
        try {
            return cronetWork.run();
        } catch (Exception e) {
            if (isUncheckedAndroidCronetException(e)) {
                throw translateUncheckedAndroidCronetException(e);
            }
            if (isCheckedAndroidCronetException(e)) {
                throw translateCheckedAndroidCronetException(e);
            }
            if (cls.isInstance(e)) {
                throw e;
            }
            throw e;
        }
    }

    public static boolean isCheckedAndroidCronetException(Exception exc) {
        return exc instanceof HttpException;
    }

    public static boolean isUncheckedAndroidCronetException(Exception exc) {
        return exc instanceof InlineExecutionProhibitedException;
    }

    public static CronetException translateCheckedAndroidCronetException(Exception exc) {
        if (!isCheckedAndroidCronetException(exc)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", exc);
        }
        if (exc instanceof QuicException) {
            return new AndroidQuicExceptionWrapper((QuicException) exc);
        }
        if (exc instanceof NetworkException) {
            return new AndroidNetworkExceptionWrapper((NetworkException) exc);
        }
        if (exc instanceof CallbackException) {
            return new AndroidCallbackExceptionWrapper((CallbackException) exc);
        }
        if (exc instanceof HttpException) {
            return new AndroidHttpExceptionWrapper((HttpException) exc);
        }
        throw new UnsupportedOperationException("Checked exception translation discrepancy", exc);
    }

    public static RuntimeException translateUncheckedAndroidCronetException(Exception exc) {
        if (!isUncheckedAndroidCronetException(exc)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", exc);
        }
        if (!(exc instanceof InlineExecutionProhibitedException)) {
            throw new UnsupportedOperationException("Unchecked exception translation discrepancy", exc);
        }
        org.chromium.net.InlineExecutionProhibitedException inlineExecutionProhibitedException = new org.chromium.net.InlineExecutionProhibitedException();
        inlineExecutionProhibitedException.initCause(exc);
        return inlineExecutionProhibitedException;
    }
}
