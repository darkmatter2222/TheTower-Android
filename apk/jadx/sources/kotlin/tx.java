package kotlin;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public interface tx {
    static long a() {
        return System.currentTimeMillis();
    }

    static long b() {
        return SystemClock.elapsedRealtime();
    }
}
