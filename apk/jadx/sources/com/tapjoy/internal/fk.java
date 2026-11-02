package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public final class fk {
    public static final fk a = new fk(-1);
    public final long b;
    public long c;

    public fk() {
        this.b = 3600000L;
        try {
            this.c = SystemClock.elapsedRealtime() - 3600000;
        } catch (NullPointerException unused) {
            this.c = -1L;
        }
    }

    public fk(long j) {
        this.b = j;
        this.c = SystemClock.elapsedRealtime();
    }

    public final boolean a() {
        try {
            return SystemClock.elapsedRealtime() - this.c > this.b;
        } catch (NullPointerException unused) {
            return true;
        }
    }

    public final boolean a(long j) {
        try {
            return (SystemClock.elapsedRealtime() - this.c) + j > this.b;
        } catch (NullPointerException unused) {
            return true;
        }
    }
}
