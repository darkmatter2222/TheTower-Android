package com.tapjoy.internal;

import com.tapjoy.TJSetUserIDListener;

/* JADX INFO: loaded from: classes5.dex */
public class TJSetUserIDListenerNative implements TJSetUserIDListener {
    private final long a;

    private TJSetUserIDListenerNative(long j) {
        if (j == 0) {
            throw new IllegalArgumentException();
        }
        this.a = j;
    }

    static Object create(long j) {
        return new TJSetUserIDListenerNative(j);
    }

    private static native void onSetUserIDFailureNative(long j, String str);

    private static native void onSetUserIDSuccessNative(long j);

    @Override // com.tapjoy.TJSetUserIDListener
    public void onSetUserIDFailure(String str) {
        onSetUserIDFailureNative(this.a, str);
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public void onSetUserIDSuccess() {
        onSetUserIDSuccessNative(this.a);
    }
}
