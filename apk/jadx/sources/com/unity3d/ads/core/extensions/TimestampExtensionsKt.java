package com.unity3d.ads.core.extensions;

import com.google.protobuf.Timestamp;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.DurationKt;

/* JADX INFO: compiled from: TimestampExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0003¨\u0006\u0005"}, d2 = {"fromMillis", "Lcom/google/protobuf/Timestamp;", "millis", "", "duration", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class TimestampExtensionsKt {
    public static final long duration(long j) {
        return System.nanoTime() - j;
    }

    public static final Timestamp fromMillis(long j) {
        long j2 = 1000;
        Timestamp timestampBuild = Timestamp.newBuilder().setSeconds(j / j2).setNanos((int) ((j % j2) * ((long) DurationKt.NANOS_IN_MILLIS))).build();
        Intrinsics.checkNotNullExpressionValue(timestampBuild, "build(...)");
        return timestampBuild;
    }
}
