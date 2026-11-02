package com.appsflyer.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFc1jSDK {
    private static final Lazy getMonetizationNetwork = LazyKt.lazy(new Function0<ExecutorService>() { // from class: com.appsflyer.internal.AFc1jSDK.4
        @Override // p005kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: getMonetizationNetwork, reason: merged with bridge method [inline-methods] */
        public final ExecutorService invoke() {
            return Executors.newSingleThreadExecutor();
        }
    });

    public static final ExecutorService AFAdRevenueData() {
        AFc1kSDK aFc1kSDK = new AFc1kSDK(1, 4, 30L, TimeUnit.SECONDS, new SynchronousQueue(), null, 32, null);
        aFc1kSDK.allowCoreThreadTimeOut(true);
        return aFc1kSDK;
    }

    public static final ExecutorService getCurrencyIso4217Code() {
        Object value = getMonetizationNetwork.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "");
        return (ExecutorService) value;
    }

    public static final ScheduledExecutorService getMediationNetwork() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewSingleThreadScheduledExecutor, "");
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    public static final ScheduledExecutorService getMonetizationNetwork() {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "");
        return scheduledExecutorServiceNewScheduledThreadPool;
    }
}
