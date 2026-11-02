package kotlin;

import com.ironsource.C3510b4;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class qz {
    public static rz a(AbstractExecutorService delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return new rz(delegate);
    }

    public static void a(ThreadPoolExecutor threadPool, int i, ex0 flags) {
        Intrinsics.checkNotNullParameter(threadPool, "threadPool");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Duration.Companion companion = Duration.INSTANCE;
        threadPool.setKeepAliveTime(Duration.m4378getInWholeMillisecondsimpl(((Duration) flags.a("gad:thread_keep_alive_time", wm2.a(10, DurationUnit.SECONDS, "gad:thread_keep_alive_time", C3510b4.i.W), yr.j)).getRawValue()), TimeUnit.MILLISECONDS);
        if (i > threadPool.getMaximumPoolSize()) {
            threadPool.setMaximumPoolSize(i);
            threadPool.setCorePoolSize(i);
        } else {
            threadPool.setCorePoolSize(i);
            threadPool.setMaximumPoolSize(i);
        }
    }
}
