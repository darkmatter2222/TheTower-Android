package kotlin;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class pz {
    public static final pz a = new pz();

    public final uq0 a(int i, long j, String poolName) {
        Intrinsics.checkNotNullParameter(poolName, "poolName");
        fr3 threadFactory = new fr3(poolName, null);
        int i2 = sz.k;
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
        return new uq0(new ThreadPoolExecutor(i, i, Duration.m4381getInWholeSecondsimpl(j), TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory), threadFactory);
    }
}
