package com.google.firebase.firestore.util;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes4.dex */
class ThrottledForwardingExecutor implements Executor {
    private final Semaphore availableSlots;
    private final Executor executor;

    ThrottledForwardingExecutor(int i, Executor executor) {
        this.availableSlots = new Semaphore(i);
        this.executor = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        if (!this.availableSlots.tryAcquire()) {
            runnable.run();
            return;
        }
        try {
            this.executor.execute(new Runnable() { // from class: com.google.firebase.firestore.util.ThrottledForwardingExecutor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1510xc0e914ff(runnable);
                }
            });
        } catch (RejectedExecutionException unused) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: lambda$execute$0$com-google-firebase-firestore-util-ThrottledForwardingExecutor, reason: not valid java name */
    /* synthetic */ void m1510xc0e914ff(Runnable runnable) {
        runnable.run();
        this.availableSlots.release();
    }
}
