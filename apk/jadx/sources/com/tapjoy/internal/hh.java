package com.tapjoy.internal;

import androidx.work.PeriodicWorkRequest;
import com.google.firebase.firestore.util.ExponentialBackoff;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class hh implements Runnable {
    final hv a;
    bx b;
    private final Object c;
    private final Thread d;
    private boolean e;

    public hh(File file) {
        hv hvVar = new hv(file);
        this.a = hvVar;
        this.c = hvVar;
        new Object[]{Integer.valueOf(hvVar.a())};
        Thread thread = new Thread(this, "5Rocks");
        this.d = thread;
        thread.start();
    }

    private void a(long j) {
        if (j > 0) {
            synchronized (this.c) {
                this.e = false;
                new Object[]{Long.valueOf(j)};
                this.c.wait(j);
            }
            return;
        }
        synchronized (this.c) {
            this.e = false;
            if (this.b == null || this.a.b()) {
                this.c.wait();
            }
        }
    }

    public final void a() {
        if (this.b == null || this.a.b()) {
            return;
        }
        a(true);
    }

    final void a(boolean z) {
        synchronized (this.c) {
            this.e = z;
            this.c.notify();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception e;
        int i = 1;
        while (true) {
            long j = 0;
            while (this.b != null && this.a.a() > 0 && j <= 0) {
                try {
                    if (this.a.a() > 10000) {
                        hv hvVar = this.a;
                        hvVar.a(hvVar.a() - UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
                    }
                    int i2 = 0;
                    ex exVarB = this.a.b(0);
                    if (exVarB == null) {
                        break;
                    }
                    fj fjVar = exVarB.w;
                    if (fjVar != null && fjVar.G == null) {
                        hx.c.await(3L, TimeUnit.SECONDS);
                    }
                    if (!u.c()) {
                        hx.b.await(3L, TimeUnit.SECONDS);
                    }
                    long jMin = (this.e || exVarB.n == fa.APP || this.a.a() >= 100 || exVarB.p.longValue() > System.currentTimeMillis()) ? 0L : Math.min(Math.max((exVarB.p.longValue() + ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS) - System.currentTimeMillis(), 0L), ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS);
                    if (jMin <= 0) {
                        iu iuVar = new iu();
                        iuVar.a(exVarB);
                        new Object[]{exVarB};
                        for (int i3 = 1; i3 < 100 && i3 < this.a.a(); i3++) {
                            ex exVarB2 = this.a.b(i3);
                            if (exVarB2 == null || !iuVar.a(exVarB2)) {
                                break;
                            }
                            new Object[]{exVarB2};
                        }
                        int i4 = i + 1;
                        try {
                            new Object[]{Integer.valueOf(iuVar.g()), Integer.valueOf(i4)};
                            this.b.a(iuVar);
                            this.a.a(iuVar.g());
                            try {
                                new Object[]{Integer.valueOf(iuVar.g())};
                                i = 0;
                            } catch (Exception e2) {
                                e = e2;
                                new Object[]{Integer.valueOf(iuVar.g()), e};
                                j = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
                                i = i2;
                            }
                        } catch (Exception e3) {
                            i2 = i4;
                            e = e3;
                        }
                    }
                    j = jMin;
                } catch (InterruptedException | Exception unused) {
                    return;
                }
            }
            this.a.flush();
            a(j);
        }
    }
}
