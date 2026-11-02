package com.applovin.impl;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class m7 {
    private final com.applovin.impl.sdk.l a;
    private Timer b;
    private long c;
    private long d;
    private long e;
    private boolean f;
    private final Runnable g;
    private long h;
    private final Object i = new Object();

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                m7.this.g.run();
                synchronized (m7.this.i) {
                    if (m7.this.f) {
                        m7.this.c = System.currentTimeMillis();
                        m7 m7Var = m7.this;
                        m7Var.d = m7Var.e;
                    } else {
                        m7.this.b = null;
                    }
                }
            } catch (Throwable th) {
                try {
                    if (m7.this.a != null) {
                        m7.this.a.Q();
                        if (com.applovin.impl.sdk.p.a()) {
                            m7.this.a.Q().a("Timer", "Encountered error while executing timed task", th);
                        }
                        m7.this.a.E().a("Timer", "executingTimedTask", th);
                    }
                } finally {
                    synchronized (m7.this.i) {
                        if (m7.this.f) {
                            m7.this.c = System.currentTimeMillis();
                            m7 m7Var2 = m7.this;
                            m7Var2.d = m7Var2.e;
                        } else {
                            m7.this.b = null;
                        }
                    }
                }
            }
        }
    }

    private m7(com.applovin.impl.sdk.l lVar, Runnable runnable) {
        this.a = lVar;
        this.g = runnable;
    }

    public static m7 a(long j, com.applovin.impl.sdk.l lVar, Runnable runnable) {
        return a(j, false, lVar, runnable);
    }

    public static m7 a(long j, boolean z, com.applovin.impl.sdk.l lVar, Runnable runnable) {
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j + ".");
        }
        if (runnable == null) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
        }
        m7 m7Var = new m7(lVar, runnable);
        m7Var.c = System.currentTimeMillis();
        m7Var.d = j;
        m7Var.f = z;
        m7Var.e = j;
        try {
            m7Var.b = new Timer();
            m7Var.a(m7Var.b(), j, z, m7Var.e);
            return m7Var;
        } catch (OutOfMemoryError e) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("Timer", "Failed to create timer due to OOM error", e);
            }
            return m7Var;
        }
    }

    private void a(TimerTask timerTask, long j, boolean z, long j2) {
        if (z) {
            this.b.schedule(timerTask, j, j2);
        } else {
            this.b.schedule(timerTask, j);
        }
    }

    private TimerTask b() {
        return new a();
    }

    public void a() {
        synchronized (this.i) {
            Timer timer = this.b;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.b = null;
                } catch (Throwable th) {
                    try {
                        com.applovin.impl.sdk.l lVar = this.a;
                        if (lVar != null) {
                            lVar.Q();
                            if (com.applovin.impl.sdk.p.a()) {
                                this.a.Q();
                                if (com.applovin.impl.sdk.p.a()) {
                                    this.a.Q().a("Timer", "Encountered error while cancelling timer", th);
                                }
                            }
                        }
                        this.b = null;
                    } catch (Throwable th2) {
                        this.b = null;
                        this.h = 0L;
                        throw th2;
                    }
                }
                this.h = 0L;
            }
        }
    }

    public long c() {
        if (this.b == null) {
            return this.d - this.h;
        }
        return this.d - (System.currentTimeMillis() - this.c);
    }

    public void d() {
        synchronized (this.i) {
            Timer timer = this.b;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.h = Math.max(1L, System.currentTimeMillis() - this.c);
                    this.b = null;
                } catch (Throwable th) {
                    try {
                        com.applovin.impl.sdk.l lVar = this.a;
                        if (lVar != null) {
                            lVar.Q();
                            if (com.applovin.impl.sdk.p.a()) {
                                this.a.Q();
                                if (com.applovin.impl.sdk.p.a()) {
                                    this.a.Q().a("Timer", "Encountered error while pausing timer", th);
                                }
                            }
                        }
                        this.b = null;
                    } catch (Throwable th2) {
                        this.b = null;
                        throw th2;
                    }
                }
            }
        }
    }

    public void e() {
        m7 m7Var;
        synchronized (this.i) {
            try {
                try {
                    long j = this.h;
                    if (j > 0) {
                        try {
                            long j2 = this.d - j;
                            this.d = j2;
                            if (j2 < 0) {
                                this.d = 0L;
                            }
                            this.b = new Timer();
                            m7Var = this;
                            try {
                                m7Var.a(b(), this.d, this.f, this.e);
                                m7Var.c = System.currentTimeMillis();
                                m7Var.h = 0L;
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    com.applovin.impl.sdk.l lVar = m7Var.a;
                                    if (lVar != null) {
                                        lVar.Q();
                                        if (com.applovin.impl.sdk.p.a()) {
                                            m7Var.a.Q();
                                            if (com.applovin.impl.sdk.p.a()) {
                                                m7Var.a.Q().a("Timer", "Encountered error while resuming timer", th);
                                            }
                                        }
                                    }
                                    m7Var.h = 0L;
                                } catch (Throwable th2) {
                                    m7Var.h = 0L;
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            m7Var = this;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                throw th;
            }
        }
    }
}
