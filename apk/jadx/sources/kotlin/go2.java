package kotlin;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class go2 implements ja3 {
    public final ScheduledExecutorService a = Executors.newSingleThreadScheduledExecutor();

    @Override // kotlin.ja3
    public final void a() {
    }

    @Override // kotlin.ja3
    public final void a(Runnable runnable, long j) {
        this.a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }
}
