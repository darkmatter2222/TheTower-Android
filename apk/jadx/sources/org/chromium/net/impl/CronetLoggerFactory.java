package org.chromium.net.impl;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import org.chromium.net.telemetry.CronetLoggerImpl;

/* JADX INFO: loaded from: classes5.dex */
public final class CronetLoggerFactory {
    private static final int SAMPLE_RATE_PER_SECOND = 1;
    private static final String TAG = "CronetLoggerFactory";
    private static CronetLogger sLogger;

    public static final class SwapLoggerForTesting implements AutoCloseable {
        public SwapLoggerForTesting(CronetLogger cronetLogger) {
            CronetLoggerFactory.setLoggerForTesting(cronetLogger);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            CronetLoggerFactory.setLoggerForTesting(null);
        }
    }

    private CronetLoggerFactory() {
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0028 A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:10:0x0013, B:13:0x001d, B:14:0x0024, B:16:0x0028, B:17:0x002f, B:18:0x0031), top: B:23:0x0003, inners: #1 }] */
    public static CronetLogger createLogger(Context context, CronetLogger.CronetSource cronetSource) {
        CronetLogger cronetLogger;
        synchronized (CronetLoggerFactory.class) {
            if (sLogger == null && Build.VERSION.SDK_INT >= 30 && CronetManifest.isAppOptedInForTelemetry(context, cronetSource)) {
                try {
                    sLogger = new CronetLoggerImpl(1);
                } catch (Exception e) {
                    Log.e(TAG, "Exception creating an instance of CronetLoggerImpl", e);
                }
                if (sLogger == null) {
                    sLogger = new NoOpLogger();
                }
                cronetLogger = sLogger;
            } else {
                if (sLogger == null) {
                    sLogger = new NoOpLogger();
                }
                cronetLogger = sLogger;
            }
            throw th;
        }
        return cronetLogger;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setLoggerForTesting(CronetLogger cronetLogger) {
        synchronized (CronetLoggerFactory.class) {
            sLogger = cronetLogger;
        }
    }
}
