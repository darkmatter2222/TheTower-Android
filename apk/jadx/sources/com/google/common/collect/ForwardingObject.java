package com.google.common.collect;

/* JADX INFO: loaded from: classes3.dex */
@ElementTypesAreNonnullByDefault
public abstract class ForwardingObject {
    protected ForwardingObject() {
    }

    protected abstract Object delegate();

    public String toString() {
        return delegate().toString();
    }
}
