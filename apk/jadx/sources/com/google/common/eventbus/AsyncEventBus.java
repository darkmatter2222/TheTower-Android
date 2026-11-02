package com.google.common.eventbus;

import com.unity3d.ads.BuildConfig;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
@ElementTypesAreNonnullByDefault
public class AsyncEventBus extends EventBus {
    public AsyncEventBus(String str, Executor executor) {
        super(str, executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }

    public AsyncEventBus(Executor executor) {
        super(BuildConfig.FLAVOR, executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super(BuildConfig.FLAVOR, executor, Dispatcher.legacyAsync(), subscriberExceptionHandler);
    }
}
