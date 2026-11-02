package com.unity3d.ads.core.log;

import com.unity3d.ads.LogLevel;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogLevel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toLogLevelInternal", "Lcom/unity3d/ads/core/log/LogLevelInternal;", "Lcom/unity3d/ads/LogLevel;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class LogLevelKt {

    /* JADX INFO: compiled from: LogLevel.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LogLevel.TRACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final LogLevelInternal toLogLevelInternal(LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[logLevel.ordinal()];
        if (i == 1) {
            return LogLevelInternal.DISABLED;
        }
        if (i == 2) {
            return LogLevelInternal.ERROR;
        }
        if (i == 3) {
            return LogLevelInternal.INFO;
        }
        if (i == 4) {
            return LogLevelInternal.DEBUG;
        }
        if (i == 5) {
            return LogLevelInternal.TRACE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
