package kotlin;

import android.os.SystemClock;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class gu {
    public final tx a;
    public final long b;

    public gu(tx clock, long j) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = clock;
        this.b = j;
    }

    public /* synthetic */ gu(tx txVar, long j, int i) {
        this(txVar, j);
    }

    public final boolean a() {
        Duration.Companion companion = Duration.INSTANCE;
        this.a.getClass();
        return Duration.m4366compareToLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.b) >= 0;
    }
}
