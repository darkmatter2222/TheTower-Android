package com.unity3d.ads.core.extensions;

import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;
import p005kotlin.time.TimeMark;

/* JADX INFO: compiled from: TimeExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"elapsedMillis", "", "Lkotlin/time/TimeMark;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class TimeExtensionsKt {
    public static final double elapsedMillis(TimeMark timeMark) {
        Intrinsics.checkNotNullParameter(timeMark, "<this>");
        return Duration.m4403toDoubleimpl(timeMark.mo4357elapsedNowUwyO8pc(), DurationUnit.MILLISECONDS);
    }
}
