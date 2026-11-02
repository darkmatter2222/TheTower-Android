package org.chromium.base.metrics;

import android.os.Trace;

/* JADX INFO: loaded from: classes5.dex */
public class ScopedSysTraceEvent implements AutoCloseable {
    public static final int MAX_SECTION_NAME_LEN = 127;

    private ScopedSysTraceEvent(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127 - "...".length()) + "...";
        }
        Trace.beginSection(str);
    }

    public static ScopedSysTraceEvent scoped(String str) {
        return new ScopedSysTraceEvent(str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        Trace.endSection();
    }
}
