package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public abstract class iw implements Runnable {
    private final long a = 300;

    protected abstract boolean a();

    @Override // java.lang.Runnable
    public void run() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + this.a;
        while (!a() && jElapsedRealtime - SystemClock.elapsedRealtime() > 0) {
            try {
                Thread.sleep(0L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }
}
