package com.unity3d.ads.core.data.manager;

import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OptimisticInitializationManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;", "", "tryOptimisticCompletion", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onInitializationFinished", "", "success", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface OptimisticInitializationManager {
    void onInitializationFinished(boolean success);

    Object tryOptimisticCompletion(Continuation<? super Boolean> continuation);
}
