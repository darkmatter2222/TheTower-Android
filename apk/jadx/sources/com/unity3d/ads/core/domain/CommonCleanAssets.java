package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.CacheRepository;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonCleanAssets.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u0007H\u0096B¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/CommonCleanAssets;", "Lcom/unity3d/ads/core/domain/CleanAssets;", "cacheRepository", "Lcom/unity3d/ads/core/data/repository/CacheRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/CacheRepository;)V", "invoke", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonCleanAssets implements CleanAssets {
    private final CacheRepository cacheRepository;

    public CommonCleanAssets(CacheRepository cacheRepository) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        this.cacheRepository = cacheRepository;
    }

    @Override // com.unity3d.ads.core.domain.CleanAssets
    public Object invoke(Continuation<? super Unit> continuation) {
        Object objClearCache = this.cacheRepository.clearCache(continuation);
        return objClearCache == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objClearCache : Unit.INSTANCE;
    }
}
