package kotlin;

import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class pc {
    public static final long e;
    public final Object a = new Object();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final ConcurrentHashMap c = new ConcurrentHashMap();
    public final ConcurrentHashMap d = new ConcurrentHashMap();

    static {
        Duration.Companion companion = Duration.INSTANCE;
        e = DurationKt.toDuration(-1, DurationUnit.MILLISECONDS);
    }
}
