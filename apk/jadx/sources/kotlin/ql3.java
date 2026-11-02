package kotlin;

import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ql3 implements gj1 {
    public final pc a;
    public final String b;
    public final long c;

    public ql3(pc adUnitStatsTracker, vn appStatsTracker, String requestId, long j) {
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.a = adUnitStatsTracker;
        this.b = requestId;
        this.c = j;
    }

    @Override // kotlin.gj1
    public final Object c(Continuation continuation) {
        pc pcVar = this.a;
        String requestId = this.b;
        long j = this.c;
        pcVar.getClass();
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        ConcurrentHashMap concurrentHashMap = pcVar.c;
        Duration.Companion companion = Duration.INSTANCE;
        concurrentHashMap.put(requestId, Duration.m4365boximpl(DurationKt.toDuration(j, DurationUnit.MILLISECONDS)));
        return p005kotlin.Unit.INSTANCE;
    }
}
