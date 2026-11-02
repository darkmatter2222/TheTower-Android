package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes4.dex */
public class O0 {
    private final M0 a;
    private final Kb b;
    private final C3954zb c = c();
    private Timer d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            O0.this.b.b();
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            O0.this.b.b();
        }
    }

    public O0(M0 m0, Kb kb) {
        this.a = m0;
        this.b = kb;
    }

    private synchronized void b(long j) {
        j();
        Timer timer = new Timer();
        this.d = timer;
        timer.schedule(new b(), j);
    }

    private C3954zb c() {
        return new C3954zb(new a(), com.ironsource.lifecycle.b.d(), new C3666jg());
    }

    private synchronized void j() {
        Timer timer = this.d;
        if (timer != null) {
            timer.cancel();
            this.d = null;
        }
    }

    public void a() {
        if (this.a.a() == M0.a.MANUAL_WITH_AUTOMATIC_RELOAD) {
            IronLog.INTERNAL.verbose();
            i();
        }
    }

    protected void a(long j) {
        C3954zb c3954zb = this.c;
        if (c3954zb != null) {
            c3954zb.a(j);
        }
    }

    protected M0 b() {
        return this.a;
    }

    protected boolean d() {
        return this.a.c() > 0;
    }

    public void e() {
        if (this.a.e()) {
            IronLog.INTERNAL.verbose();
            b(this.a.c());
        }
    }

    public void f() {
        if (this.a.a() == M0.a.AUTOMATIC_LOAD_AFTER_CLOSE) {
            IronLog.INTERNAL.verbose();
            b(this.a.d());
        }
    }

    public void g() {
        if (this.a.e()) {
            IronLog.INTERNAL.verbose();
            b(0L);
        }
    }

    public void h() {
        if (this.a.a() != M0.a.AUTOMATIC_LOAD_WHILE_SHOW || this.a.d() < 0) {
            return;
        }
        IronLog.INTERNAL.verbose();
        b(this.a.d());
    }

    protected void i() {
        C3954zb c3954zb = this.c;
        if (c3954zb != null) {
            c3954zb.b();
        }
    }

    public void k() {
        if (this.a.a() != M0.a.MANUAL_WITH_AUTOMATIC_RELOAD || this.a.b() <= 0) {
            return;
        }
        IronLog.INTERNAL.verbose();
        a(this.a.b());
    }
}
