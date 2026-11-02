package com.ironsource;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: renamed from: com.ironsource.zb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3954zb {
    private static final String g = "zb";
    private final com.ironsource.lifecycle.b a;
    private final Runnable b;
    private final C3666jg c;
    private Timer e;
    private final Object d = new Object();
    private final InterfaceC3790qa f = new a();

    /* JADX INFO: renamed from: com.ironsource.zb$a */
    class a implements InterfaceC3790qa {
        a() {
        }

        @Override // com.ironsource.InterfaceC3790qa
        public void a() {
            C3954zb.this.c.c(System.currentTimeMillis());
            C3954zb.this.c();
        }

        @Override // com.ironsource.InterfaceC3790qa
        public void b() {
            C3954zb.this.c.b(System.currentTimeMillis());
            C3954zb c3954zb = C3954zb.this;
            c3954zb.b(c3954zb.c.a());
        }

        @Override // com.ironsource.InterfaceC3790qa
        public void c() {
        }

        @Override // com.ironsource.InterfaceC3790qa
        public void d() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.zb$b */
    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C3954zb c3954zb = C3954zb.this;
            c3954zb.a.b(c3954zb.f);
            C3954zb.this.c.b();
            C3954zb.this.b.run();
        }
    }

    public C3954zb(Runnable runnable, com.ironsource.lifecycle.b bVar, C3666jg c3666jg) {
        this.b = runnable;
        this.a = bVar;
        this.c = c3666jg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j) {
        synchronized (this.d) {
            c();
            Timer timer = new Timer();
            this.e = timer;
            timer.schedule(new b(), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this.d) {
            Timer timer = this.e;
            if (timer != null) {
                timer.cancel();
                this.e = null;
            }
        }
    }

    public void a() {
        a(0L);
    }

    public void a(long j) {
        if (j < 0) {
            Log.d(g, "cannot start timer with delay < 0");
            return;
        }
        this.a.a(this.f);
        this.c.a(j);
        if (this.a.e()) {
            this.c.c(System.currentTimeMillis());
        } else {
            b(j);
        }
    }

    public void b() {
        c();
        this.a.b(this.f);
        this.c.b();
    }
}
