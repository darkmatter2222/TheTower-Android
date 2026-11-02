package io.grpc.internal;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes5.dex */
public final class FixedObjectPool<T> implements ObjectPool<T> {
    private final T object;

    public FixedObjectPool(T t) {
        this.object = (T) Preconditions.checkNotNull(t, "object");
    }

    @Override // io.grpc.internal.ObjectPool
    public T getObject() {
        return this.object;
    }

    @Override // io.grpc.internal.ObjectPool
    public T returnObject(Object obj) {
        return null;
    }
}
