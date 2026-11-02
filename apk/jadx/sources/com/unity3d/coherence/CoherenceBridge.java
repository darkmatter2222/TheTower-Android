package com.unity3d.coherence;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
final class CoherenceBridge {
    static {
        System.loadLibrary("unitycoherencenative");
    }

    private CoherenceBridge() {
    }

    static native byte[] getCommonAttributes(long j, int i, int i2);

    static native byte[] getVersions(long j);

    static native long init(Coherence coherence, Context context, String str, int i);

    static native boolean isInitialized(long j);

    static native void setExternalUserId(long j, String str);

    static native void setLogHandler(LogHandler logHandler);

    static native long vmCreate(long j, byte[] bArr);

    static native void vmDrop(long j, long j2);

    static native VmInvokeResult vmInvokeMain(long j, long j2, byte[] bArr);

    static native String vmLastError(long j);

    static native void warmPlugins(long j);
}
