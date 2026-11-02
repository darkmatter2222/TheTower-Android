package com.unity3d.player.a;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: renamed from: com.unity3d.player.a.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class ExecutorC4097m implements Executor {
    public final Handler a;

    public ExecutorC4097m(Handler handler) {
        this.a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (!this.a.post(runnable)) {
            throw new RejectedExecutionException(this.a + " is shutting down");
        }
    }
}
