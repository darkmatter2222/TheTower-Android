package com.ironsource;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* JADX INFO: renamed from: com.ironsource.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3444a extends Thread {
    private static final int l = 1;
    private static final InterfaceC3505b m = new C0103a();
    private static final A9 n = new b();
    private final int d;
    private InterfaceC3505b a = m;
    private A9 b = n;
    private final Handler c = new Handler(Looper.getMainLooper());
    private String e = "";
    private boolean f = false;
    private boolean g = false;
    private volatile int h = 0;
    private int i = 1;
    private int j = 0;
    private final Runnable k = new c();

    /* JADX INFO: renamed from: com.ironsource.a$a, reason: collision with other inner class name */
    class C0103a implements InterfaceC3505b {
        C0103a() {
        }

        @Override // com.ironsource.InterfaceC3505b
        public void a() {
        }

        @Override // com.ironsource.InterfaceC3505b
        public void b() {
            throw new RuntimeException("ANRHandler has given up");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a$b */
    class b implements A9 {
        b() {
        }

        @Override // com.ironsource.A9
        public void a(InterruptedException interruptedException) {
            Log.w("ANRHandler", "Interrupted: " + interruptedException.getMessage());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a$c */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3444a c3444a = C3444a.this;
            c3444a.h = (c3444a.h + 1) % Integer.MAX_VALUE;
        }
    }

    public C3444a(int i) {
        this.d = i;
    }

    private String a(StackTraceElement[] stackTraceElementArr) {
        String str = "";
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (stackTraceElement != null) {
                    str = str + stackTraceElement.toString() + ";\n";
                }
            }
        }
        return str;
    }

    public int a() {
        return this.j;
    }

    public C3444a a(A9 a9) {
        if (a9 == null) {
            this.b = n;
            return this;
        }
        this.b = a9;
        return this;
    }

    public C3444a a(InterfaceC3505b interfaceC3505b) {
        if (interfaceC3505b == null) {
            this.a = m;
            return this;
        }
        this.a = interfaceC3505b;
        return this;
    }

    public C3444a a(String str) {
        if (str == null) {
            str = "";
        }
        this.e = str;
        return this;
    }

    public C3444a a(boolean z) {
        this.g = z;
        return this;
    }

    public void a(int i) {
        this.i = i;
    }

    public int b() {
        return this.i;
    }

    public C3444a b(boolean z) {
        this.f = z;
        return this;
    }

    public C3444a c() {
        this.e = null;
        return this;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setName("|ANR-ANRHandler|");
        int i = -1;
        while (!isInterrupted() && this.j < this.i) {
            int i2 = this.h;
            this.c.post(this.k);
            try {
                Thread.sleep(this.d);
                if (this.h != i2) {
                    this.j = 0;
                } else if (this.g || !Debug.isDebuggerConnected()) {
                    this.j++;
                    this.a.a();
                    String str = C3801r4.l;
                    if (str != null && !str.trim().isEmpty()) {
                        new P5(C3801r4.l, String.valueOf(System.currentTimeMillis()), "ANR").a();
                    }
                } else {
                    if (this.h != i) {
                        Log.w("ANRHandler", "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))");
                    }
                    i = this.h;
                }
            } catch (InterruptedException e) {
                this.b.a(e);
                return;
            }
        }
        if (this.j >= this.i) {
            this.a.b();
        }
    }
}
