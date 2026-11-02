package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.p4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3762p4 implements Thread.UncaughtExceptionHandler {
    private Thread.UncaughtExceptionHandler a;

    C3762p4(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        C3784q4 c3784q4 = new C3784q4(th);
        if (c3784q4.d()) {
            new P5(c3784q4.b(), "" + System.currentTimeMillis(), "Crash").a();
        }
        this.a.uncaughtException(thread, th);
    }
}
