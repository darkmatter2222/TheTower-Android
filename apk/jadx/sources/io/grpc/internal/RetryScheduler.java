package io.grpc.internal;

/* JADX INFO: loaded from: classes5.dex */
public interface RetryScheduler {
    void reset();

    void schedule(Runnable runnable);
}
