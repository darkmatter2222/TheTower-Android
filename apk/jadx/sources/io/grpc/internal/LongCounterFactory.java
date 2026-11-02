package io.grpc.internal;

/* JADX INFO: loaded from: classes5.dex */
final class LongCounterFactory {
    LongCounterFactory() {
    }

    public static LongCounter create() {
        return ReflectionLongAdderCounter.isAvailable() ? new ReflectionLongAdderCounter() : new AtomicLongCounter();
    }
}
