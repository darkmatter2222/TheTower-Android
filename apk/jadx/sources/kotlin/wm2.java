package kotlin;

import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class wm2 {
    public static Duration a(int i, DurationUnit durationUnit, String str, String str2) {
        long duration = DurationKt.toDuration(i, durationUnit);
        Intrinsics.checkNotNullParameter(str, str2);
        return Duration.m4365boximpl(duration);
    }
}
