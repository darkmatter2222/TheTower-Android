package org.chromium.net.telemetry;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public final class RateLimiter {
    private static final long ONE_SECOND_MILLIS = 1000;
    private int mSamplesLoggedDuringSecond;
    private final int mSamplesPerSeconds;
    private final Object mLock = new Object();
    private long mLastPermitMillis = Long.MIN_VALUE;

    public RateLimiter(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Expect sample rate to be > 0 sample(s) per second");
        }
        this.mSamplesPerSeconds = i;
    }

    public boolean tryAcquire() {
        synchronized (this.mLock) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.mLastPermitMillis + 1000 <= jElapsedRealtime) {
                this.mSamplesLoggedDuringSecond = 1;
                this.mLastPermitMillis = jElapsedRealtime;
                return true;
            }
            int i = this.mSamplesLoggedDuringSecond;
            if (i >= this.mSamplesPerSeconds) {
                return false;
            }
            this.mSamplesLoggedDuringSecond = i + 1;
            return true;
        }
    }
}
