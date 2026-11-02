package kotlin;

import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class pe3 {
    public final tx a;
    public final v01 b;
    public final AtomicBoolean c;
    public final long d;

    public pe3(tx clock, ex0 flags, v01 result) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(result, "result");
        this.a = clock;
        this.b = result;
        this.c = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        clock.getClass();
        this.d = Duration.m4396plusLRDsOJo(DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS), flags.F0());
    }
}
