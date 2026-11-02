package io.perfmark;

import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskCloseable implements Closeable {
    static final TaskCloseable INSTANCE = new TaskCloseable();

    private TaskCloseable() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        PerfMark.stopTask();
    }
}
